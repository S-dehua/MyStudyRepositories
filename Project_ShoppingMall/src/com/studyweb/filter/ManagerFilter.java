package com.studyweb.filter;

import com.studyweb.pojo.Goods;
import com.studyweb.pojo.Page;
import com.studyweb.pojo.User;
import com.studyweb.service.impl.GoodsServiceImpl;
import com.studyweb.utils.WebUtils;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

/**
 * @MethodName 过滤器 
 * @Author coffee
 * @Description  
 * @Param
 * @return 
 **/
public class ManagerFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

        HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;


        if (httpServletRequest.getSession().getAttribute("user") == null) {
            httpServletRequest.getRequestDispatcher("/pages/manager/managerLogin.jsp").forward(servletRequest, servletResponse);
        }else {
            GoodsServiceImpl get = new GoodsServiceImpl();
            //1. 获取请求的参数pageNo 和 pageSize
            int pageNo = WebUtils.parseInt(httpServletRequest.getParameter("pageNo"), 1);
            int pageSize = WebUtils.parseInt(httpServletRequest.getParameter("pageSize"), Page.PAGE_SIZE);
            //2. --
            Page<Goods> page = get.page(pageNo, pageSize);

            page.setUrl("managerServlet?action=page");

            //3. 保存Page对象到request域中
            httpServletRequest.setAttribute("page", page);

            //--------------------------
            //保存用户登录之后的信息到Session域中
//            httpServletRequest.getSession().setAttribute("user",loginUser);
            httpServletRequest.getRequestDispatcher("/pages/manager/goods_manager.jsp").forward(servletRequest, servletResponse);
        }

//            filterChain.doFilter(servletRequest, servletResponse);
    }
    @Override
    public void destroy() {

    }
}
