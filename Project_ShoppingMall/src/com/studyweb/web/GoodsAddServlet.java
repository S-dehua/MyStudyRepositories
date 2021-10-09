package com.studyweb.web;

import com.studyweb.pojo.Goods;
import com.studyweb.pojo.Page;
import com.studyweb.service.GoodsService;
import com.studyweb.service.impl.GoodsServiceImpl;
import com.studyweb.utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;

@WebServlet(name = "GoodsAddServlet",urlPatterns = "/goodsAddServlet")
public class GoodsAddServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        BigDecimal price = BigDecimal.valueOf(Integer.parseInt(request.getParameter("price")));
        String author = request.getParameter("author");
        Integer sales = Integer.parseInt(request.getParameter("sales"));
        Integer stock = Integer.parseInt(request.getParameter("stock"));

        Goods goods = new Goods(name,author,price,sales,stock);

        GoodsServiceImpl toDo = new GoodsServiceImpl();
        toDo.addGoods(goods);

        response.sendRedirect(request.getContextPath());

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
