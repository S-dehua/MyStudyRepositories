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
public class ClientGoodsServlet extends BaseServlet {
    private GoodsService GoodsService = new GoodsServiceImpl();

    protected void page(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //1. 获取请求的参数pageNo 和 pageSize
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"), 1);
        int pageSize = WebUtils.parseInt(req.getParameter("pageSize"), Page.PAGE_SIZE);
        //2. 调用GoodsService.page(pageNo,pageSize);Page对象
        Page<Goods> page = GoodsService.page(pageNo, pageSize);

        page.setUrl("client/GoodsServlet?action=page");

        //3. 保存Page对象到request域中
        req.setAttribute("page", page);
        //4. 请求转发到pages/manager/Goods_manager.jsp页面
        req.getRequestDispatcher("/pages/client/index.jsp").forward(req, resp);

    }
    protected void pageByPrice(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //1. 获取请求的参数pageNo 和 pageSize
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"), 1);
        int pageSize = WebUtils.parseInt(req.getParameter("pageSize"), Page.PAGE_SIZE);
        int min = WebUtils.parseInt(req.getParameter("min"),0);
        int max = WebUtils.parseInt(req.getParameter("max"),Integer.MAX_VALUE);
        //2. 调用GoodsService.page(pageNo,pageSize);Page对象
        Page<Goods> page = GoodsService.pageByPrice(pageNo, pageSize,min,max);

        StringBuilder sb = new StringBuilder("client/GoodsServlet?action=pageByPrice");

        //如果有最小价格的参数，追加到分页条的地址参数中
        if (req.getParameter("min") != null){
            sb.append("&min=").append(req.getParameter("min"));
        }
        //如果有最大价格的参数，追加到分页条的地址参数中
        if (req.getParameter("max") != null){
            sb.append("&max=").append(req.getParameter("max"));
        }

        page.setUrl(sb.toString());

        //3. 保存Page对象到request域中
        req.setAttribute("page", page);
        //4. 请求转发到pages/manager/Goods_manager.jsp页面
        req.getRequestDispatcher("/pages/client/index.jsp").forward(req, resp);

    }

    protected void pageByName(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //1. 获取请求的参数pageNo 和 pageSize
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"), 1);
        int pageSize = WebUtils.parseInt(req.getParameter("pageSize"), Page.PAGE_SIZE);

        String goodsName = req.getParameter("goodsName");
//        List<Goods> goods = GoodsService.queryGoodsByName(goodsName);
        //2. 调用GoodsService.page(pageNo,pageSize);Page对象
        Page<Goods> page = GoodsService.pageByName(pageNo, pageSize,goodsName);

        StringBuilder sb = new StringBuilder("client/GoodsServlet?action=pageByName");

        //如果有商品名的参数，追加到分页条的地址参数中
        if (goodsName != null){
            sb.append("&goodsName=").append(goodsName);
        }

        page.setUrl(sb.toString());

        //3. 保存Page对象到request域中
        req.setAttribute("page", page);
        //4. 请求转发到pages/manager/Goods_manager.jsp页面
        req.getRequestDispatcher("/pages/client/index.jsp").forward(req, resp);
    }

}
