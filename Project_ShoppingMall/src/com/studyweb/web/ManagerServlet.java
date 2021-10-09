package com.studyweb.web;

import com.studyweb.pojo.Goods;
import com.studyweb.pojo.Page;
import com.studyweb.pojo.User;
import com.studyweb.service.UserService;
import com.studyweb.service.impl.GoodsServiceImpl;
import com.studyweb.service.impl.UserServiceImpl;
import com.studyweb.utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import static com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY;

/**
 * @Description TODO
 * @Author coffee
 * @Email sdhstart@qq.com
 * @Version 1.0
 **/
public class ManagerServlet extends BaseServlet {
    private UserService userService = new UserServiceImpl();

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
        } else {
            GoodsServiceImpl get = new GoodsServiceImpl();
            //1. 获取请求的参数pageNo 和 pageSize
            int pageNo = WebUtils.parseInt(req.getParameter("pageNo"), 1);
            int pageSize = WebUtils.parseInt(req.getParameter("pageSize"), Page.PAGE_SIZE);
            //2. --
            Page<Goods> page = get.page(pageNo, pageSize);

            page.setUrl("managerServlet?action=page");

            //3. 保存Page对象到request域中
            req.setAttribute("page", page);

            //--------------------------
            //保存用户登录之后的信息到Session域中
            req.getSession().setAttribute("user",loginUser);
            //登录成功，跳回成功页面login_success.html
            req.getRequestDispatcher("/pages/manager/goods_manager.jsp").forward(req, resp);

        }
    }
    protected void page(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

            GoodsServiceImpl get = new GoodsServiceImpl();
            //1. 获取请求的参数pageNo 和 pageSize
            int pageNo = WebUtils.parseInt(req.getParameter("pageNo"), 1);
            int pageSize = WebUtils.parseInt(req.getParameter("pageSize"), Page.PAGE_SIZE);
            //2. --
            Page<Goods> page = get.page(pageNo, pageSize);

            page.setUrl("managerServlet?action=page");

            //3. 保存Page对象到request域中
            req.setAttribute("page", page);

            //--------------------------
            req.getRequestDispatcher("/pages/manager/goods_manager.jsp").forward(req, resp);
    }
}





