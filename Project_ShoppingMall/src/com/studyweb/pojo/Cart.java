package com.studyweb.pojo;

import java.math.BigDecimal;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 * @MethodName
 * @Author coffee
 * @Description
 * @Param
 * @return
 **/
public class Cart {

//    private Integer totalCount;
//    private BigDecimal totalPrice;

    /* key是商品编号
     * value是商品信息
     * @Author coffee
     **/
    private Map<Integer,CartItem> items = new LinkedHashMap<>();


    public void addItem(CartItem cartItem){
    //先查看购物车中是否已经添加过此商品，如果已经添加，则数量累加、总金额更新；如果没有添加过，直接放到集合中即可
      CartItem item = items.get(cartItem.getId());

      if (item == null){
          //之前没添加过此商品
          items.put(cartItem.getId(),cartItem);
      }else {
          //已经添加过的情况
          item.setCount( item.getCount() + 1 );//数量累加
          //更新总金额
          item.setTotalPrice(item.getPrice().multiply(new BigDecimal(item.getCount())));

      }

    }


    public void deleteItem(Integer id){
        items.remove(id);
    }
    

    public void clear(){
        items.clear();
    }

    /**
     * @MethodName addItem
     * @Author coffee
     * @Description 修改商品数量
     * @Date 14:33 2021/3/4
     * @Param [cartItem]
     * @return void
     **/
    public void updateCount(Integer id,Integer count){
        //先查看购物车中是否有此商品。如果有，修改商品数量，更新总金额
        CartItem cartItem = items.get(id);
        if (cartItem != null){
            cartItem.setCount(count);
            //更新总金额
            cartItem.setTotalPrice(cartItem.getPrice().multiply(new BigDecimal(cartItem.getCount())));

        }
    }


    public Integer getTotalCount() {
        Integer totalCount = 0;
        for (Map.Entry<Integer,CartItem>entry:items.entrySet()){
            totalCount += entry.getValue().getCount();
        }
        return totalCount;
    }

    public BigDecimal getTotalPrice() {
        BigDecimal totalPrice = new BigDecimal(0);

        for (Map.Entry<Integer,CartItem>entry:items.entrySet()){
            totalPrice = totalPrice.add(entry.getValue().getTotalPrice());
        }
        return totalPrice;
    }

    public Map<Integer,CartItem> getItems() {
        return items;
    }

    public void setItems(Map<Integer,CartItem> items) {
        this.items = items;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "totalCount=" + getTotalCount() +
                ", totalPrice=" + getTotalPrice() +
                ", items=" + items +
                '}';
    }
}
