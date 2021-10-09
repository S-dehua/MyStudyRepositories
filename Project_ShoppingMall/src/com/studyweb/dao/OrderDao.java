package com.studyweb.dao;

import com.studyweb.pojo.Order;

import java.util.List;

public interface OrderDao {

    int saveOrder(Order order);

    List<Order> queryOrderByUserId(String userId);

    int updateOrderStatus(Order order);

}
