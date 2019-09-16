package com.bookstore.vo;

import com.bookstore.pojo.OrderDetails;
import com.bookstore.pojo.OrderForm;

import java.util.List;

/**
 * 类 名 称：UserOrder
 * 类 描 述：展示给前端的订单数据包装类
 * 创建时间：2019/9/14 15:36
 * 创建人：Mical
 */
public class UserOrder {

    private OrderForm orderForm;
    private List<OrderDetails> orderDetails;

    public OrderForm getOrderForm() {
        return orderForm;
    }

    public void setOrderForm(OrderForm orderForm) {
        this.orderForm = orderForm;
    }

    public List<OrderDetails> getOrderDetails() {
        return orderDetails;
    }

    public void setOrderDetails(List<OrderDetails> orderDetails) {
        this.orderDetails = orderDetails;
    }

    @Override
    public String toString() {
        return "UserOrder{" +
                "orderForm=" + orderForm +
                ", orderDetails=" + orderDetails +
                '}';
    }
}
