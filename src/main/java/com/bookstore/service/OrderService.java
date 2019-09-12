package com.bookstore.service;

import com.bookstore.pojo.BookUser;
import com.bookstore.pojo.OrderForm;

import java.util.List;

/**
 * 类 名 称：OrderService
 * 类 描 述：订单数据Service接口
 * 创建时间：2019/9/12 16:07
 * 创建人：Mical
 */
public interface OrderService {

    /**
     * 插入订单数据
     * @param shopId
     * @param user
     * @return
     */
    OrderForm insertOrder(List<Integer> shopId, BookUser user);

    /**
     * 更新订单状态
     * @param orderForm
     */
    void updateOrder(OrderForm orderForm);
}
