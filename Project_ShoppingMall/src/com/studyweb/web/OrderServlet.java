package com.studyweb.web;

import com.studyweb.dao.impl.BaseDao;
import com.studyweb.pojo.Cart;
import com.studyweb.pojo.Order;
import com.studyweb.pojo.User;
import com.studyweb.service.OrderService;
import com.studyweb.service.impl.OrderServiceImpl;
import com.studyweb.utils.JdbcUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @Description TODO
 * @Author coffee
 * @Email sdhstart@qq.com
 * @Version 1.0
 **/
public class OrderServlet extends BaseServlet {

    private OrderService orderService = new OrderServiceImpl();


    protected void showMyOrders(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取Cart购物车对象
        Cart cart = (Cart) req.getSession().getAttribute("cart");
        //获取UserId
        User loginUser = (User) req.getSession().getAttribute("user");

        if (loginUser == null){
            req.getRequestDispatcher("/pages/user/login.jsp").forward(req,resp);
            return;
        }

        Integer userIdInte = loginUser.getId();
        String userId = userIdInte.toString();


         List<Order> order = orderService.showMyOrders(userId);
        req.getSession().setAttribute("order",order);
        //请求转发到/pages/cart/checkout.jsp
//        req.getRequestDispatcher("/pages/order/order.jsp").forward(req,resp);
        resp.sendRedirect(req.getContextPath()+"/pages/order/order.jsp");

    }



    /**
     * @MethodName createOrder
     * @Author coffee
     * @Description 生成订单
     * @Param [req, resp]
     * @return void
     **/
    protected void createOrder(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //获取Cart购物车对象
        Cart cart = (Cart) req.getSession().getAttribute("cart");
        //获取UserId
        User loginUser = (User) req.getSession().getAttribute("user");

        if (loginUser == null){
            req.getRequestDispatcher("/pages/user/login.jsp").forward(req,resp);
            return;
        }

        Integer userId = loginUser.getId();
        //调用orderService.createOrder(Cart,UserId);
        String orderId = orderService.createOrder(cart,userId);

//        req.setAttribute("orderId",orderId);
        req.getSession().setAttribute("orderId",orderId);
        //请求转发到/pages/cart/checkout.jsp
//        req.getRequestDispatcher("/pages/cart/checkout.jsp").forward(req,resp);
        resp.sendRedirect(req.getContextPath()+"/pages/cart/checkout.jsp");
    }
}
