package com.bookstore.controller;

import com.alipay.api.AlipayApiException;
import com.bookstore.enums.CommonEnums;
import com.bookstore.pojo.BookUser;
import com.bookstore.pojo.OrderForm;
import com.bookstore.service.OrderService;
import com.bookstore.vo.CommonVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 类 名 称：OrderController
 * 类 描 述：订单相关的Controller
 * 创建时间：2019/9/12 16:06
 * 创建人：Mical
 */
@Controller
public class OrderController {

    @Autowired
    private OrderService orderService;

    /**
     * 下单
     * @param list    前台传过来的购物车里面的订单编号
     * @param request Request请求
     * @return
     */
    @RequestMapping("/bookstore/do_order")
    @ResponseBody
    public CommonVO doOrder(@RequestBody List<Integer> list, HttpServletRequest request) {
        Object user = request.getSession().getAttribute("user");
        if (user instanceof BookUser) {
            try {
                OrderForm orderForm = orderService.insertOrder(list, (BookUser) user);
                request.getSession().setAttribute("orderForm", orderForm);
                return new CommonVO(CommonEnums.SUBMIT_TO_APLI);
            } catch (Exception e) {
                e.printStackTrace();
                return new CommonVO(CommonEnums.PUCHARSE_FAILED);
            }
        }
        return new CommonVO(CommonEnums.NOT_LOGIN);
    }
}
