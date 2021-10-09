package com.studyweb.service.impl;

import com.studyweb.dao.GoodsDao;
import com.studyweb.dao.impl.GoodsDaoImpl;
import com.studyweb.pojo.Goods;
import com.studyweb.pojo.Page;
import com.studyweb.service.GoodsService;

import java.util.List;

/**
 * @Description TODO
 * @Author coffee
 * @Email sdhstart@qq.com
 * @Version 1.0
 **/
public class GoodsServiceImpl implements GoodsService {

    private GoodsDao goodsDao = new GoodsDaoImpl();

    @Override
    public void addGoods(Goods goods) {
        goodsDao.addGoods(goods);
    }

    @Override
    public void deleteGoodsById(Integer id) {
        goodsDao.deleteGoodsById(id);
    }

    @Override
    public void updateGoods(Goods goods) {
        goodsDao.updateGoods(goods);
        System.out.println("GoodsServiceImpl进行了操作:"+goods);
    }

    @Override
    public Goods queryGoodsById(Integer id) {
        return goodsDao.queryGoodsById(id);
    }

    @Override
    public List<Goods> queryGoodss() {
        return goodsDao.queryGoodss();
    }

    @Override
    public List<Goods> queryGoodsByName(String name) {
        return goodsDao.queryGoodsByName(name);
    }

    @Override
    public Page<Goods> page(int pageNo, int pageSize) {
        Page<Goods> page = new Page<Goods>();


        //设置每页显示的数量
        page.setPageSize(pageSize);
        //求总记录数
        Integer pageTotalCount = goodsDao.queryForPageTotalCount();
        //设置总记录数
        page.setPageTotalCount(pageTotalCount);
        //求总页码
        Integer pageTotal =  pageTotalCount / pageSize;
        if (pageTotalCount % pageSize > 0){
            pageTotal += 1;
        }
        //设置总页码
        page.setPageTotal(pageTotal);

        /*数据边界的有效检查*/
        if (pageNo < 1){
            pageNo = 1;
        }
        if (pageNo > pageTotal){
            pageNo = pageTotal;
        }
        //设置当前页码
        page.setPageNo(pageNo);

        int begin = (page.getPageNo() - 1) * pageSize;
        //求当前页数据
        List<Goods> items = goodsDao.queryForPageItems(begin,pageSize);
        //设置当前页数据
        page.setItems(items);

        return page;
    }

    @Override
    public Page<Goods> pageByPrice(int pageNo, int pageSize, int min, int max) {
        Page<Goods> page = new Page<Goods>();


        //设置每页显示的数量
        page.setPageSize(pageSize);
        //求总记录数
        Integer pageTotalCount = goodsDao.queryForPageTotalCountByPrice(min,max);
        //设置总记录数
        page.setPageTotalCount(pageTotalCount);
        //求总页码
        Integer pageTotal =  pageTotalCount / pageSize;
        if (pageTotalCount % pageSize > 0){
            pageTotal += 1;
        }
        //设置总页码
        page.setPageTotal(pageTotal);

        /*数据边界的有效检查*/
        if (pageNo < 1){
            pageNo = 1;
        }
        if (pageNo > pageTotal){
            pageNo = pageTotal;
        }
        //设置当前页码
        page.setPageNo(pageNo);

        int begin = (page.getPageNo() - 1) * pageSize;
        //求当前页数据
        List<Goods> items = goodsDao.queryForPageItemsByPrice(begin,pageSize,min,max);
        //设置当前页数据
        page.setItems(items);

        return page;
    }

    @Override
    public Page<Goods> pageByName(int pageNo, int pageSize, String name) {
        Page<Goods> page = new Page<Goods>();


        //设置每页显示的数量
        page.setPageSize(pageSize);
        //求总记录数
        Integer pageTotalCount = goodsDao.queryGoodsByName(name).size();
        //设置总记录数
        page.setPageTotalCount(pageTotalCount);
        //求总页码
        Integer pageTotal =  pageTotalCount / pageSize;
        if (pageTotalCount % pageSize > 0){
            pageTotal += 1;
        }
        //设置总页码
        page.setPageTotal(pageTotal);

        /*数据边界的有效检查*/
        if (pageNo < 1){
            pageNo = 1;
        }
        if (pageNo > pageTotal){
            pageNo = pageTotal;
        }
        //设置当前页码
        page.setPageNo(pageNo);

        int begin = (page.getPageNo() - 1) * pageSize;
        //求当前页数据
        List<Goods> items = goodsDao.queryGoodsByName(name);
        //设置当前页数据
        page.setItems(items);

        return page;
    }
}
