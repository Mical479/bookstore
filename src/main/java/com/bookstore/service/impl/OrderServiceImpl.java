package com.bookstore.service.impl;

import com.bookstore.mapper.AddressMapper;
import com.bookstore.mapper.OrderDetailsMapper;
import com.bookstore.mapper.OrderFormMapper;
import com.bookstore.mapper.ShopListMapper;
import com.bookstore.pojo.*;
import com.bookstore.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * 类 名 称：OrderServiceImpl
 * 类 描 述：订单数据Service
 * 创建时间：2019/9/12 16:09
 * 创建人：Mical
 */
@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private ShopListMapper shopListMapper;

    @Autowired
    private OrderDetailsMapper orderDetailsMapper;

    @Autowired
    private AddressMapper addressMapper;

    @Autowired
    private OrderFormMapper orderFormMapper;

    /**
     * 根据购物车ID，和用户信息插入订单数据
     * @param shopId
     * @param user
     * @return
     */
    @Override
    public OrderForm insertOrder(List<Integer> shopId, BookUser user) {

        //根据uuid和用户的id生成主键
        int i = UUID.randomUUID().hashCode();
        long orderId;
        if (i > 0) {
            orderId = Long.parseLong("" + i + user.getUserId());
        }else {
            orderId = Long.parseLong("" + (-i) + user.getUserId());
        }


        List<ShopList> shopLists = new ArrayList<>();
        int userId = user.getUserId();

        Double allCost = 0.0;
        int allNumber = 0;

        shopId.forEach(item -> {
            shopLists.add(shopListMapper.selectByUserIdAndShopId(userId, item));
            shopListMapper.deleteShops(item);
        });

        for (ShopList item : shopLists) {
            //封装订单详情实体类，并插入订单详情表
            Double bookPrice = item.getBookInfo().getBookPrice();
            Integer bookNumber = item.getBookNumber();
            int bookId = item.getBookInfo().getId();

            OrderDetails orderDetails = new OrderDetails();
            BookInfo bookInfo = new BookInfo();
            bookInfo.setId(bookId);
            orderDetails.setOrderId(orderId);
            orderDetails.setBookNumber(bookNumber);
            orderDetails.setBookPrice(bookPrice);
            orderDetails.setBookInfo(bookInfo);
            orderDetailsMapper.insertOrder(orderDetails);

            //对总金额和总数量进行计算
            allCost += (bookNumber * bookPrice);
            allNumber += bookNumber;
        }

        //构造一个订单表
        OrderForm orderForm = new OrderForm();
        orderForm.setOrderStatus(0);
        orderForm.setCreateTime(new Date());
        orderForm.setAllNumber(allNumber);
        orderForm.setAllCost(allCost);
        orderForm.setBookUser(user);
        orderForm.setOrderId(orderId);
        //地址
        List<Address> addresses = addressMapper.selectAddressByUser(userId, 1);
        orderForm.setAddress(addresses.get(0));

        orderFormMapper.insertForm(orderForm);
        return orderForm;
    }

    /**
     * 更新订单状态
     * @param orderForm
     */
    @Override
    public void updateOrder(OrderForm orderForm) {
        orderFormMapper.updateForm(orderForm);
    }
}
