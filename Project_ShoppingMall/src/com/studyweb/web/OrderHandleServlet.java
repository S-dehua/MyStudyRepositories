package com.studyweb.web;

import com.studyweb.dao.OrderDao;
import com.studyweb.dao.impl.OrderDaoImpl;
import com.studyweb.pojo.Order;
import com.studyweb.pojo.User;
import com.studyweb.service.OrderService;
import com.studyweb.service.impl.OrderServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/**
 * @Description TODO
 * @Author sdehua-帅德华
 * @Email sdhstart@qq.com
 * @Date 2021/6/29 18:26
 * @Version 1.0
 **/
@WebServlet(name = "OrderHandleServlet",urlPatterns = "/orderHandleServlet")
public class OrderHandleServlet extends BaseServlet {

    OrderService orderService = new OrderServiceImpl();

    protected void sendOutGoods(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = (User) req.getSession().getAttribute("user");
        List<Order> orders = orderService.showMyOrders(user.getId().toString());
        String id = req.getParameter("orderId");
        Collection<Order> orderItems = new ArrayList<>();

        for (Order order:orders) {
            System.out.println(order);
            if (id.equals(order.getOrderId())){
                System.out.println("success");
                order.setStatus(1);
                orderService.updateOrderStatus(order);
            }
            orderItems.add(order);
        }

        req.getSession().setAttribute("orders",orderItems);

        req.getRequestDispatcher("/pages/manager/order_manager.jsp").forward(req,resp);

//        List<Order> orderItems = orderService.showMyOrders(orders.getOrderId());

    }

    protected void signGoods(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = (User) req.getSession().getAttribute("user");
        List<Order> orders = orderService.showMyOrders(user.getId().toString());
        String id = req.getParameter("orderId");
        Collection<Order> orderItems = new ArrayList<>();

        for (Order order:orders) {
            System.out.println(order);
            if (id.equals(order.getOrderId())){
                System.out.println("success");
                order.setStatus(2);
                orderService.updateOrderStatus(order);
            }
            orderItems.add(order);
        }
        req.getSession().setAttribute("orders",orderItems);

        req.getRequestDispatcher("/pages/manager/order_manager.jsp").forward(req,resp);
    }

    protected void doge(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = (User) req.getSession().getAttribute("user");
        List<Order> orders = orderService.showMyOrders(user.getId().toString());
        String id = req.getParameter("orderId");
        for (Order order:orders) {
            if (id.equals(order.getOrderId())){
                req.setAttribute("doge","(^_^)");
            }
        }
        req.getRequestDispatcher("/pages/manager/order_manager.jsp").forward(req,resp);
    }


}
