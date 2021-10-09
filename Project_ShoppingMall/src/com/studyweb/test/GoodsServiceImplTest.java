package com.studyweb.test;

import com.studyweb.pojo.Goods;
import com.studyweb.pojo.Page;
import com.studyweb.service.GoodsService;
import com.studyweb.service.impl.GoodsServiceImpl;
import org.junit.Test;

import java.math.BigDecimal;

public class GoodsServiceImplTest {

    private GoodsService GoodsService = new GoodsServiceImpl();

    @Test
    public void addGoods() {
        GoodsService.addGoods(new Goods(null,"泸州老窖六年窖头曲52度","sdehua",new BigDecimal(10000),10000,0,null));
    }

    @Test
    public void deleteGoodsById() {
        GoodsService.deleteGoodsById(22);
    }

    @Test
    public void updateGoods() {
        GoodsService.updateGoods(new Goods(2,"泸州老窖六年窖头曲52度","sdehua",new BigDecimal(468),165,46,"static/img/g2.jpg"));

    }

    @Test
    public void queryGoodsById() {
        System.out.println(GoodsService.queryGoodsById(22));
    }

    @Test
    public void queryGoods() {
        for (Goods queryGoods : GoodsService.queryGoodss()){
            System.out.println(queryGoods);
        }
    }

    @Test
    public void page(){
        System.out.println(GoodsService.page(1, Page.PAGE_SIZE));
    }
    @Test
    public void pageByPrice(){
        System.out.println(GoodsService.pageByPrice(1, Page.PAGE_SIZE,10,50));
    }

    @Test
    public void queryByName(){
        for (Goods goods: GoodsService.queryGoodsByName("洗发")) {
            System.out.println(goods);
        }
    }
}