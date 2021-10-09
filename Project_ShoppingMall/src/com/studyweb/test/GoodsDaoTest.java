package com.studyweb.test;

import com.studyweb.dao.GoodsDao;
import com.studyweb.dao.impl.GoodsDaoImpl;
import com.studyweb.pojo.Goods;
import com.studyweb.pojo.Page;
import org.junit.Test;

import java.math.BigDecimal;


public class GoodsDaoTest {

    private GoodsDao goodsDao = new GoodsDaoImpl();

    @Test
    public void addGoods() {
        goodsDao.addGoods(new Goods("泸州老窖六年窖头曲52度","sdehua",new BigDecimal(9999),11111,313));
    }

    @Test
    public void deleteGoodsById() {
        goodsDao.deleteGoodsById(48);
    }

    @Test
    public void updateGoods() {
        goodsDao.updateGoods(new Goods(48,"欧莱雅男士洗发液","sdehua",new BigDecimal(166),165,155,null));
    }

    @Test
    public void queryGoodsById() {
        System.out.println(goodsDao.queryGoodsById(21));
    }

    @Test
    public void queryGoodss() {
        for (Goods queryGoods : goodsDao.queryGoodss()){
            System.out.println(queryGoods);
        }
    }
    @Test
    public void queryForPageTotalCount() {
        System.out.println(goodsDao.queryForPageTotalCount());
    }
    @Test
    public void queryForPageTotalCountByPrice() {
        System.out.println(goodsDao.queryForPageTotalCountByPrice(10,50));
    }

    @Test
    public void queryForPageItems() {
        for (Goods goods :goodsDao.queryForPageItems(8, Page.PAGE_SIZE))
        System.out.println(goods);
    }
    @Test
    public void queryForPageItemsByPrice() {
        for (Goods goods :goodsDao.queryForPageItemsByPrice(0,Page.PAGE_SIZE,10,50))
        System.out.println(goods);
    }

    @Test
    public void queryForName(){
        for (Goods goods : goodsDao.queryGoodsByName("洗发")){
            System.out.println(goods);
        }
    }


}