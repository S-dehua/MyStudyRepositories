package com.studyweb.service;

import com.studyweb.pojo.Cart;
import com.studyweb.pojo.Order;

import java.util.List;

public interface OrderService {
    public String createOrder(Cart cart, Integer userId);

    public List<Order> showMyOrders(String userId);

    boolean updateOrderStatus(Order order);
}
