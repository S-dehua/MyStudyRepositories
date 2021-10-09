package com.studyweb.dao;

import com.studyweb.pojo.Goods;

import java.util.List;

public interface GoodsDao {

    public int addGoods(Goods goods);

    public int deleteGoodsById(Integer id);

    public int updateGoods(Goods goods);

    public Goods queryGoodsById(Integer id);

    public List<Goods> queryGoodsByName(String name);

    public List<Goods> queryGoodss();

    Integer queryForPageTotalCount();

    List<Goods> queryForPageItems(int begin, int pageSize);

    Integer queryForPageTotalCountByPrice(int min, int max);

    List<Goods> queryForPageItemsByPrice(int begin, int pageSize, int min, int max);
}
