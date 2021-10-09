package com.studyweb.dao.impl;

import com.studyweb.dao.OrderDao;
import com.studyweb.pojo.Order;

import java.util.List;

/**
 * @Description TODO
 * @Author coffee
 * @Email sdhstart@qq.com
 * @Version 1.0
 **/
public class OrderDaoImpl extends BaseDao implements OrderDao {

    @Override
    public int saveOrder(Order order) {
        String sql = "insert into t_order(`order_id`,`create_time`,`price`,`status`,`user_id`) values(?,?,?,?,?)";
        return update(sql,order.getOrderId(),order.getCreateTime(),order.getPrice(),order.getStatus(),order.getUserId());
    }

    @Override
    public List<Order> queryOrderByUserId(String userId) {
        String sql = "select `order_id` orderId,`create_time` createTime,`price`,`status`,`user_id` userId from t_order where user_id = ?;";
      return queryForList(Order.class,sql,userId);

    }

    @Override
    public int updateOrderStatus(Order order) {
        String sql = "update t_order set status=? where order_id=?";
        return update(sql,order.getStatus(),order.getOrderId());
    }

}
