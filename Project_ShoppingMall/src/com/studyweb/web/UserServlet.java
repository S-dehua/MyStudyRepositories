package com.studyweb.web;

import com.google.gson.Gson;
import com.studyweb.pojo.User;
import com.studyweb.service.UserService;
import com.studyweb.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import static com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY;

/**
 * @Description TODO
 * @Author coffee
 * @Email sdhstart@qq.com
 * @Version 1.0
 **/
public class UserServlet extends BaseServlet {
    private UserService userService = new UserServiceImpl();

    protected void ajaxExistUsername(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取请求的参数Username
        String username = req.getParameter("username");
        //调用userService.existUsername();
        boolean existUsername = userService.existsUsername(username);
        //把返回的结果封装为Map对象
        Map<String,Object> resultMap = new HashMap<>();
        resultMap.put("existUsername",existUsername);

        Gson gson = new Gson();
        String json = gson.toJson(resultMap);

        resp.getWriter().write(json);
    }


//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String action = req.getParameter("action");
//        try {
//            //获取action业务鉴别字符串，获取相应的业务方法反射对象
//            Method method = this.getClass().getDeclaredMethod(action, HttpServletRequest.class, HttpServletResponse.class);
//            //调用目标业务方法
//            method.invoke(this,req,resp);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//
//    }

    protected void logOut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //1.销毁Session中用户登录的信息（或者销毁Session）
        req.getSession().invalidate();
        //2. 重定向到首页（或登录界面）
        resp.sendRedirect(req.getContextPath());
    }


    protected void login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //1. 获取请求的参数
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        //2. 调用userService.login()登录处理业务
        User loginUser = userService.login(new User(null, username, password, null));
        //如果等于null，说明登录失败
        if (loginUser == null) {
            //把错误信息和回显的表单项信息，保存到Request域中
            req.setAttribute("msg", "用户名或密码错误！");
            req.setAttribute("username", username);
            //跳回登录页面
            req.getRequestDispatcher("/pages/user/login.jsp").forward(req, resp);
        }else if("帅德华".equals(loginUser) && "123".equals(password)){
            req.getRequestDispatcher("/pages/manager/manager.jsp").forward(req, resp);

        } else {
            //保存用户登录之后的信息到Session域中
            req.getSession().setAttribute("user",loginUser);
            //登录成功，跳回成功页面login_success.html
            req.getRequestDispatcher("/pages/user/login_success.jsp").forward(req, resp);

        }
    }

    protected void regist(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取Session中的验证吗
        String token = (String) req.getSession().getAttribute(KAPTCHA_SESSION_KEY);
        //删除Session中的验证码
        req.getSession().removeAttribute(KAPTCHA_SESSION_KEY);
        //1.获取请求的参数
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String email = req.getParameter("email");
        String code = req.getParameter("code");
        //2.检查验证码是否正确 ====》要求验证码为abcde
        if (token != null && token.equalsIgnoreCase(code)) {
            //正确，检查用户名是否可用
            if (userService.existsUsername(username)) {
                System.out.println("用户名[" + username + "]已存在");
                req.setAttribute("msg", "用户名已存在");
                req.setAttribute("username", username);
                req.setAttribute("code", code);
                req.setAttribute("password", password);
                req.setAttribute("email", email);
                //不可用，跳回注册页面
                req.getRequestDispatcher("/pages/user/regist.jsp").forward(req, resp);
            } else {
                //可用，调用Ser保存到数据库
                userService.registUser(new User(null, username, password, email));
                //跳转到注册成功页面
                req.getRequestDispatcher("/pages/user/regist_success.jsp").forward(req, resp);
            }
        } else {
            req.setAttribute("msg", "验证码错误");
            req.setAttribute("username", username);
            req.setAttribute("code", code);
            req.setAttribute("password", password);
            req.setAttribute("email", email);
            //不正确，跳回注册页面
            System.out.println("验证码[" + code + "]错误");
            req.getRequestDispatcher("/pages/user/regist.jsp").forward(req, resp);
        }

    }
}





