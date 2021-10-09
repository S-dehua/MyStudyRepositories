package com.studyweb.web;

import com.studyweb.pojo.Goods;
import com.studyweb.pojo.Page;
import com.studyweb.service.GoodsService;
import com.studyweb.service.impl.GoodsServiceImpl;
import com.studyweb.utils.WebUtils;

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
public class GoodsServlet extends BaseServlet {

    private GoodsService GoodsService = new GoodsServiceImpl();

    /**
     * @return void
     * @MethodName page
     * @Author coffee
     * @Description 处理分页功能
     * @Param [req, resp]
     **/
    protected void page(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //1. 获取请求的参数pageNo 和 pageSize
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"), 1);
        int pageSize = WebUtils.parseInt(req.getParameter("pageSize"), Page.PAGE_SIZE);
        //2. 调用GoodsService.page(pageNo,pageSize);Page对象
        Page<Goods> page = GoodsService.page(pageNo, pageSize);

        page.setUrl("manager/GoodsServlet?action=page");

        //3. 保存Page对象到request域中
        req.setAttribute("page", page);
        //4. 请求转发到pages/manager/Goods_manager.jsp页面
        req.getRequestDispatcher("/pages/client/index.jsp").forward(req, resp);

    }

    protected void add(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"), 0);
        pageNo += 1;
        //1. 获取请求参数==封装成Goods对象
        Goods Goods = WebUtils.copyParamToBean(req.getParameterMap(), new Goods());
        //2. 调用BokService.addGoods()保存商品
        GoodsService.addGoods(Goods);
        //3. 跳到商品列表页面  --  /manager/GoodsServlet?action=list
//        req.getRequestDispatcher("/manager/GoodsServlet?action=list").forward(req,resp);
        resp.sendRedirect(req.getContextPath() + "/manager/GoodsServlet?action=page&pageNo=" + pageNo);
    }

    protected void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //1. 获取请求的参数id，商品编程
        String id = req.getParameter("id");
        int i = Integer.parseInt(id);
        //2. 调用GoodsService.deleteGoodsById();删除商品
        GoodsService.deleteGoodsById(i);
        //3. 重定向回商品列表管理页面 -- /manager/GoodsServlet?action=list
        resp.sendRedirect(req.getContextPath() + "/manager/GoodsServlet?action=page&pageNo=" + req.getParameter("pageNo"));
    }

    protected void update(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //1. 获取请求的参数==封装成为Goods对象
        Goods Goods = WebUtils.copyParamToBean(req.getParameterMap(), new Goods());
        //2. 调用GoodsService.updateGoods(Goods);修改商品
        GoodsService.updateGoods(Goods);
        //3. 重定向商品列表管理页面 --  /工程名/manager/GoodsServlet?action=list
        resp.sendRedirect(req.getContextPath() + "/manager/GoodsServlet?action=page&pageNo=" + req.getParameter("pageNo"));
    }

    protected void getGoods(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //1. 获取商品编号
        int id = Integer.parseInt(req.getParameter("id"));
        //2. 调用GoodsService.queryGoodsById(id):Goods;得到修改的商品信息
        Goods Goods = GoodsService.queryGoodsById(id);
        //3. 把商品保存到Request域中
        req.setAttribute("Goods", Goods);
        //4. 请求转发到/pages/manager/Goods_edit.jsp页面
        req.getRequestDispatcher("/pages/manager/Goods_edit.jsp").forward(req, resp);

    }

    protected void list(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //1. 通过GoodsService查询全部商品
        List<Goods> Goodss = GoodsService.queryGoodss();
        //2. 把全部商品保存到Request域中
        req.setAttribute("Goodss", Goodss);
        //3. 请求转发到/pages/manager/Goods_manager.jsp页面
        req.getRequestDispatcher("/pages/manager/Goods_manager.jsp").forward(req, resp);
    }
}
