package com.studyweb.web;

import com.studyweb.dao.OrderDao;
import com.studyweb.dao.impl.OrderDaoImpl;
import com.studyweb.pojo.Order;
import com.studyweb.pojo.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Action;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "OrderManagerServlet",urlPatterns = "/manager/orderManagerServlet")
public class OrderManagerServlet extends HttpServlet {

    OrderDao orderDao = new OrderDaoImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        if (user != null){
            List<Order> orders = orderDao.queryOrderByUserId("" + user.getId());
            request.getSession().setAttribute("orders",orders);
            request.getRequestDispatcher("/pages/manager/order_manager.jsp").forward(request,response);
        }else {
            request.getRequestDispatcher("/pages/user/login.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
