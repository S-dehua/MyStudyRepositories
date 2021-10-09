package com.studyweb.test;

import com.studyweb.dao.OrderItemDao;
import com.studyweb.dao.impl.OrderItemDaoImpl;
import com.studyweb.pojo.OrderItem;
import org.junit.Test;

import java.math.BigDecimal;

import static org.junit.Assert.*;

public class OrderItemDaoTest {

    @Test
    public void saveOrderItem() {
        OrderItemDao orderItemDao = new OrderItemDaoImpl();

        orderItemDao.saveOrderItem(new OrderItem(null,"java从入门到精通",1,new BigDecimal(100),new BigDecimal(100),"132145843"));
        orderItemDao.saveOrderItem(new OrderItem(null,"javaScript从入门到精通",1,new BigDecimal(100),new BigDecimal(100),"132145843"));
        orderItemDao.saveOrderItem(new OrderItem(null,"C++从入门到精通",2,new BigDecimal(100),new BigDecimal(100),"132145843"));
    }
}