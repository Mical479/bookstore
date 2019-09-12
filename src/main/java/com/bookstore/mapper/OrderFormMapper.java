package com.bookstore.mapper;

import com.bookstore.pojo.OrderForm;
import org.apache.ibatis.annotations.Param;
import java.util.List;

public interface OrderFormMapper {
    /*
    * 根据用户user_id获取订单信息
     * @param user_id
     * @return
     * */
    List<OrderForm> selectByUserId(int userId);

    /*
     * 根据order_id获取订单信息
     * @param order_id
     * @return
     * */
    List<OrderForm> selectByOrderId(int orderId);

    /*新建订单*/
    void insertForm(OrderForm orderForm);

    /**
     * 跟新订单
     * @param orderForm
     */
    void updateForm(OrderForm orderForm);
}
