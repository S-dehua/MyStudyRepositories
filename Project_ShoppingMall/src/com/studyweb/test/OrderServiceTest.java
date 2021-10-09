package com.studyweb.test;

import com.studyweb.pojo.Cart;
import com.studyweb.pojo.CartItem;
import com.studyweb.pojo.Order;
import com.studyweb.service.OrderService;
import com.studyweb.service.impl.OrderServiceImpl;
import org.junit.Test;

import java.math.BigDecimal;
import java.util.Date;

public class OrderServiceTest {

    @Test
    public void createOrder() {
        Cart cart = new Cart();
        cart.addItem(new CartItem(1,"java从入门到入坟",1,new BigDecimal(1000),new BigDecimal(1000)));
        cart.addItem(new CartItem(1,"java从入门到入坟",1,new BigDecimal(1000),new BigDecimal(1000)));
        cart.addItem(new CartItem(2,"数据结构与算法",1,new BigDecimal(1000),new BigDecimal(1000)));

        OrderServiceImpl orderService = new OrderServiceImpl();
        System.out.println("订单号是：" + orderService.createOrder(cart,1));
    }

    @Test
    public void showMyOrders() {
        OrderService orderService = new OrderServiceImpl();
        System.out.println(orderService.showMyOrders("23"));

    }
    @Test
    public void updateOrderStatus() {
        OrderService orderService = new OrderServiceImpl();
        boolean b = orderService.updateOrderStatus(new Order("161494200944823", new Date(), new BigDecimal(146.00), 1, 23));
        System.out.println("修改状态："+b);

    }

}