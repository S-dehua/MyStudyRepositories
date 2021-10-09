package com.studyweb.web;

import com.studyweb.pojo.Goods;
import com.studyweb.pojo.Cart;
import com.studyweb.pojo.CartItem;
import com.studyweb.service.GoodsService;
import com.studyweb.service.impl.GoodsServiceImpl;
import com.studyweb.utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Description TODO
 * @Author coffee
 * @Email sdhstart@qq.com
 * @Version 1.0
 **/
public class CartServlet extends BaseServlet{

    private GoodsService goodsService = new GoodsServiceImpl();


    /**
     * @MethodName deleteItem
     * @Author coffee
     * @Description 修改商品数量
     * @Param [req, resp]
     * @return void
     **/
    protected void updateCount(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取请求的参数、商品编号、商品数量
        int id = WebUtils.parseInt(req.getParameter("id"),0);
        int count = WebUtils.parseInt(req.getParameter("count"),1);
        //获取cart购物车对象
        Cart cart = (Cart) req.getSession().getAttribute("cart");

        if (cart != null){
            //修改商品数量
            cart.updateCount(id,count);
            //重定向回原来商品所在的地址页面
            resp.sendRedirect(req.getHeader("Referer"));
        }
    }



    /**
     * @MethodName deleteItem
     * @Author coffee
     * @Description 删除商品项
     * @Param [req, resp]
     * @return void
     **/
    protected void deleteItem(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取商品编号
        int id = WebUtils.parseInt(req.getParameter("id"),0);
        //获取购物车对象
        Cart cart = (Cart) req.getSession().getAttribute("cart");
        if (cart != null){
            //删除购物车商品项
            cart.deleteItem(id);
            //重定向回原来商品所在的地址页面
            resp.sendRedirect(req.getHeader("Referer"));
        }
    }



    /**
     * @MethodName deleteItem
     * @Author coffee
     * @Description 清空购物车
     * @Param [req, resp]
     * @return void
     **/
    protected void clear(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //1. 获取购物车对象
        Cart cart = (Cart) req.getSession().getAttribute("cart");
        if (cart != null){
            //清空购物车
            cart.clear();
            //重定向回原来的购物车展示页面
            resp.sendRedirect(req.getHeader("Referer"));
        }

    }

    /**
     * @MethodName addItem
     * @Author coffee
     * @Description 加入购物车
     * @Param [req, resp]
     * @return void
     **/
    protected void addItem(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        System.out.println("加入购物车");
//        System.out.println("商品编号"+ req.getParameter("id"));

        //获取请求的参数 商品编号
        int id = WebUtils.parseInt(req.getParameter("id"),0);
        //调用GoodsService.queryGoodsById(id):Goods得到图书的信息
        Goods Goods = goodsService.queryGoodsById(id);
        //把商品信息转换成为CartItem商品项
        CartItem cartItem = new CartItem(Goods.getId(), Goods.getName(), 1, Goods.getPrice(), Goods.getPrice());

        //调用Cart.addItem(CartItem);添加商品项
        Cart cart = (Cart) req.getSession().getAttribute("cart");
        if (cart == null){
            cart = new Cart();
            req.getSession().setAttribute("cart",cart);
        }
        cart.addItem(cartItem);
        System.out.println(cart);
        //最后一个添加的商品的名称
        req.getSession().setAttribute("lastName",cartItem.getName());

        //重定向回原来商品所在的地址页面
        resp.sendRedirect(req.getHeader("Referer"));

    }
}
