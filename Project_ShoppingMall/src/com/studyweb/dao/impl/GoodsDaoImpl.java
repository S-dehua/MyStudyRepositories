package com.studyweb.dao.impl;

import com.studyweb.dao.GoodsDao;
import com.studyweb.pojo.Goods;

import java.util.List;

/**
 * @Description TODO
 * @Author coffee
 * @Email sdhstart@qq.com
 * @Version 1.0
 **/
public class GoodsDaoImpl extends BaseDao implements GoodsDao {
    @Override
    public int addGoods(Goods goods) {

        String sql = "insert into t_goods(`name`,`author`,`price`,`sales`,`stock`,`img_path`) values(?,?,?,?,?,?)";

        return update(sql,goods.getName(),goods.getAuthor(),goods.getPrice(),goods.getSales(),goods.getStock(),goods.getImgPath());
    }

    @Override
    public int deleteGoodsById(Integer id) {

        String sql = "delete from t_goods where id=?";

        return update(sql,id);
    }

    @Override
    public int updateGoods(Goods goods) {

        String sql = "update t_goods set `name`=?,`author`=?,`price`=?,`sales`=?,`stock`=?,`img_path`=? where id=?";

        return update(sql,goods.getName(),goods.getAuthor(),goods.getPrice(),goods.getSales(),goods.getStock(),goods.getImgPath(),goods.getId());
    }

    @Override
    public Goods queryGoodsById(Integer id) {

        String sql = "select `id`,`name`,`author`,`price`,`sales`,`stock`,`img_path` imgPath from t_goods where id =?";

        return queryForOne(Goods.class,sql,id);
    }

    @Override
    public List<Goods> queryGoodsByName(String name) {
        String sql = "select `id`,`name`,`author`,`price`,`sales`,`stock`,`img_path` imgPath from t_goods where name like ?";
        return queryForList(Goods.class,sql,"%"+name+"%");
    }

    @Override
    public List<Goods> queryGoodss() {

        String sql = "select `id`,`name`,`author`,`price`,`sales`,`stock`,`img_path` imgPath from t_goods";

        return queryForList(Goods.class,sql);
    }

    @Override
    public Integer queryForPageTotalCount() {
        String sql = "select count(*) from t_goods";
        Number count = (Number) queryForSingleValue(sql);
        return count.intValue();
    }

    @Override
    public List<Goods> queryForPageItems(int begin, int pageSize) {
        String sql = "select `id`,`name`,`author`,`price`,`sales`,`stock`,`img_path` imgPath from t_goods limit ?,?";

        return queryForList(Goods.class,sql,begin,pageSize);
    }

    @Override
    public Integer queryForPageTotalCountByPrice(int min,int max) {
        String sql = "select count(*) from t_goods where price between ? and ?";
        Number count = (Number) queryForSingleValue(sql,min,max);
        return count.intValue();
    }

    @Override
    public List<Goods> queryForPageItemsByPrice(int begin, int pageSize, int min, int max) {
        String sql = "select `id`,`name`,`author`,`price`,`sales`,`stock`,`img_path` imgPath from t_goods where price between ? and ? order by price limit ?,?";

        return queryForList(Goods.class,sql,min,max,begin,pageSize);
    }
}
