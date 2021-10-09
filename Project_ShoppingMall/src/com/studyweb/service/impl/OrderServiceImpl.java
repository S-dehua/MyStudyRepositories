package com.studyweb.service.impl;

import com.studyweb.dao.GoodsDao;
import com.studyweb.dao.OrderDao;
import com.studyweb.dao.OrderItemDao;
import com.studyweb.dao.impl.GoodsDaoImpl;
import com.studyweb.dao.impl.OrderDaoImpl;
import com.studyweb.dao.impl.OrderItemDaoImpl;
import com.studyweb.pojo.*;
import com.studyweb.service.OrderService;

import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * @Description TODO
 * @Author coffee
 * @Email sdhstart@qq.com
 * @Version 1.0
 **/
public class OrderServiceImpl implements OrderService {

    private OrderDao orderDao = new OrderDaoImpl();
    private OrderItemDao orderItemDao = new OrderItemDaoImpl();
    private com.studyweb.dao.GoodsDao GoodsDao = new GoodsDaoImpl();


    @Override
    public String createOrder(Cart cart, Integer userId) {
        //订单号 == 唯一性
        String orderId = System.currentTimeMillis() + "" + userId;
        //创建一个订单对象
        Order order = new Order(orderId,new Date(),cart.getTotalPrice(),0,userId);
        //保存订单
        orderDao.saveOrder(order);

//        int i =12 / 0;        //模拟网络异常产生的500错误

        //遍历购物车中每一个商品项转换成订单项保存到数据库
        for (Map.Entry<Integer, CartItem>entry:cart.getItems().entrySet()){

            CartItem cartItem = entry.getValue();
            OrderItem orderItem = new OrderItem(null,cartItem.getName(),cartItem.getCount(),cartItem.getPrice(),cartItem.getTotalPrice(),orderId);
            orderItemDao.saveOrderItem(orderItem);

            //更新库存和销量
            Goods Goods = GoodsDao.queryGoodsById(cartItem.getId());
            Goods.setSales(Goods.getSales() + cartItem.getCount());
            Goods.setStock(Goods.getStock() - cartItem.getCount());
            GoodsDao.updateGoods(Goods);

        }
        //清空购物车
        cart.clear();
        return orderId;
    }

    @Override
    public List<Order> showMyOrders(String userId) {
        return orderDao.queryOrderByUserId(userId);
    }

    @Override
    public boolean updateOrderStatus(Order order) {
        orderDao.updateOrderStatus(order);
        return true;
    }

}
