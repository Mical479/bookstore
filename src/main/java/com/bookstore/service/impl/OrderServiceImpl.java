package com.bookstore.service.impl;

import com.bookstore.mapper.*;
import com.bookstore.pojo.*;
import com.bookstore.service.OrderService;
import com.bookstore.vo.UserOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.*;
import java.util.concurrent.ConcurrentHashMap;

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

    @Autowired
    private BookInfoMapper bookInfoMapper;

    /**
     * 根据购物车ID，和用户信息插入订单数据
     *
     * @param shopId
     * @param user
     * @return
     */
    @Override
    public OrderForm insertOrder(List<Integer> shopId, BookUser user, HttpServletRequest request) {

        //根据uuid和用户的id生成主键
        int i = UUID.randomUUID().hashCode();
        long orderId;
        if (i > 0) {
            orderId = i;
        } else {
            orderId = -i;
        }

        List<ShopList> shopLists = new ArrayList<>();
        int userId = user.getUserId();
        List<Address> addresses = addressMapper.selectAddressByUser(userId, 1);
        if (addresses == null || addresses.size() == 0) {
            return null;
        }

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

        HttpSession session = request.getSession();
        int shoppingNumbers = (int) session.getAttribute("shoppingNumbers");
        session.setAttribute("shoppingNumbers", shoppingNumbers - allNumber);

        //构造一个订单表
        OrderForm orderForm = new OrderForm();
        orderForm.setOrderStatus(0);
        orderForm.setCreateTime(new Date());
        orderForm.setAllNumber(allNumber);
        orderForm.setAllCost(allCost);
        orderForm.setBookUser(user);
        orderForm.setOrderId(orderId);
        //地址
        orderForm.setAddress(addresses.get(0));


        orderFormMapper.insertForm(orderForm);
        return orderForm;
    }

    /**
     * 更新订单状态
     *
     * @param orderForm
     */
    @Override
    public void updateOrder(OrderForm orderForm) {
        //减书籍的库存
        List<OrderDetails> orderDetails = orderDetailsMapper.selectByOrderId(orderForm.getOrderId());
        System.out.println(orderDetails);
        orderDetails.forEach(item -> {
            int id = item.getBookInfo().getId();
            Integer bookNumber = item.getBookNumber();
            bookInfoMapper.updateBookStock(-bookNumber, id);
        });
        orderFormMapper.updateForm(orderForm);
    }


    /**
     * 用户查看订单
     *
     * @param userId 用户ID
     * @return 返回给前端的用户包装列表
     */
    @Override
    public List<UserOrder> getUserOrders(int userId, boolean isFailed) {

        List<UserOrder> userOrders = new ArrayList<>();

        List<OrderForm> orderForms;

        if (!isFailed)
            orderForms = orderFormMapper.selectByUserId(userId);
        else
            orderForms = orderFormMapper.selectByUserIdFailed(userId);

        orderForms.forEach(item -> {
            UserOrder userOrder = new UserOrder();
            List<OrderDetails> orderDetails = orderDetailsMapper.selectByOrderId(item.getOrderId());
            userOrder.setOrderForm(item);
            userOrder.setOrderDetails(orderDetails);
            userOrders.add(userOrder);
        });
        return userOrders;
    }
}
