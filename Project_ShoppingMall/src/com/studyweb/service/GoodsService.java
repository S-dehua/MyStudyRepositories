package com.studyweb.service;

import com.studyweb.pojo.Goods;
import com.studyweb.pojo.Page;

import java.util.List;

public interface GoodsService {

    public void addGoods(Goods Goods);

    public void deleteGoodsById(Integer id);

    public void updateGoods(Goods Goods);

    public Goods queryGoodsById(Integer id);

    public List<Goods> queryGoodss();

    public List<Goods> queryGoodsByName(String name);


    Page<Goods> page(int pageNo, int pageSize);

    Page<Goods> pageByPrice(int pageNo, int pageSize, int min, int max);

    Page<Goods> pageByName(int pageNo,int pageSize,String name);
}
