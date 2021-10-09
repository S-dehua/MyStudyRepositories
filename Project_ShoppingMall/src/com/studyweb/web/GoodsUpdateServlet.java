package com.studyweb.web;

import com.studyweb.pojo.Goods;
import com.studyweb.service.GoodsService;
import com.studyweb.service.impl.GoodsServiceImpl;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;

@WebServlet(name = "GoodsUpdateServlet", urlPatterns = "/goodsUpdateServlet")
public class GoodsUpdateServlet extends HttpServlet {

    private GoodsService goodsService = new GoodsServiceImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        //1. 获取商品编号
        int id = Integer.parseInt(request.getParameter("id"));
        //2. 调用GoodsService.queryGoodsById(id):Goods;得到修改的商品信息
        Goods goods = goodsService.queryGoodsById(id);

        /**/
        if ("update".equals(request.getParameter("action"))){
            String name = request.getParameter("name");
//            BigDecimal price = BigDecimal.valueOf(Integer.parseInt(request.getParameter("price")));
            BigDecimal price = goods.getPrice();
            String author = request.getParameter("author");
            Integer sales = Integer.parseInt(request.getParameter("sales"));
            Integer stock = Integer.parseInt(request.getParameter("stock"));
            //赋值
            goods.setName(name);
            goods.setPrice(price);
            goods.setAuthor(author);
            goods.setSales(sales);
            goods.setStock(stock);
            System.out.println("update-----"+goods);
            goodsService.updateGoods(goods);
        }
        /**/
        //3. 把商品保存到Request域中
        request.setAttribute("Goods", goods);


//        System.out.println("doPost---"+goods);

        //3. 把商品保存到Request域中
        request.setAttribute("Goods", goods);
        //4. 请求转发到/pages/manager/Goods_edit.jsp页面
        request.getRequestDispatcher("/pages/goods/goods_update.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Goods goods = goodsService.queryGoodsById(id);

        String name = request.getParameter("name");
        BigDecimal price = BigDecimal.valueOf(Integer.parseInt(request.getParameter("price")));
        String author = request.getParameter("author");
        Integer sales = Integer.parseInt(request.getParameter("sales"));
        Integer stock = Integer.parseInt(request.getParameter("stock"));

        //赋值
        goods.setName(name);
        goods.setPrice(price);
        goods.setAuthor(author);
        goods.setSales(sales);
        goods.setStock(stock);
//        System.out.println("update-----"+goods);

        goodsService.updateGoods(goods);
        response.sendRedirect(request.getContextPath());
//        request.getRequestDispatcher(request.getContextPath()).forward(request,response);
    }
}
