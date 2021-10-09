package com.studyweb.test;

import com.studyweb.dao.OrderDao;
import com.studyweb.dao.impl.OrderDaoImpl;
import com.studyweb.pojo.Order;
import org.junit.Test;

import java.math.BigDecimal;
import java.util.Date;


public class OrderDaoTest {

    @Test
    public void saveOrder() {
        OrderDao orderDao = new OrderDaoImpl();
        orderDao.saveOrder(new Order("132145844",new Date(),new BigDecimal(100),0,1));
    }

    @Test
    public void queryOrderByUserId() {
        OrderDao orderDao = new OrderDaoImpl();
        System.out.println(orderDao.queryOrderByUserId("23"));
    }
    @Test
    public void updateOrderStatus() {
        OrderDao orderDao = new OrderDaoImpl();
        int i = orderDao.updateOrderStatus(new Order("161494200944823", new Date(), new BigDecimal(146.00), 2, 23));
        System.out.println(i);
    }

}