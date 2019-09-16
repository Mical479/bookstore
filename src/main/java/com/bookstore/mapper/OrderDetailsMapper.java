package com.bookstore.mapper;

import com.bookstore.pojo.OrderDetails;

import java.util.List;

public interface OrderDetailsMapper {
   /*
   * 根据订单id查询
   * @param id
   * @return
    * */
    List<OrderDetails> selectById(long id);

    /*新建订单*/
    void insertOrder(OrderDetails orderDetails);

    /**
     * 更具订单id查询订单详情
     * @param orderId
     * @return
     */
    List<OrderDetails> selectByOrderId(long orderId);
}
