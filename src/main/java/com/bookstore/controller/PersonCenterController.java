package com.bookstore.controller;

import com.bookstore.pojo.Address;
import com.bookstore.pojo.BookUser;
import com.bookstore.service.AddressService;
import com.bookstore.service.OrderService;
import com.bookstore.vo.UserOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 类 名 称：PersonCenterController
 * 类 描 述：个人中心相关的Controller
 * 创建时间：2019/9/13 19:40
 * 创建人：Mical
 */
@Controller
public class PersonCenterController {

    @Autowired
    private OrderService orderService;

    @Autowired
    private AddressService addressService;

    /**
     * 访问个人中心
     * @param request
     * @return
     */
    @RequestMapping("/bookstore/userpage")
    public String goUserPage(HttpServletRequest request){
        Object user = request.getSession().getAttribute("user");
        if (user instanceof BookUser){
            return "userpage";
        }
        return "redirect:/index";
    }

    /**
     * 个人中心订单访问
     * @param request
     * @return
     */
    @RequestMapping("/bookstore/userpage/order")
    public ModelAndView getUserPageOfOrder(HttpServletRequest request, ModelAndView modelAndView){
        Object user = request.getSession().getAttribute("user");
        if (!(user instanceof BookUser)){
            modelAndView.setViewName("redirect:/index");
            return modelAndView;
        }
        //查询用户订单并返回给前端
        List<UserOrder> userOrders = orderService.getUserOrders(((BookUser) user).getUserId(), false);
        modelAndView.addObject("userOrder", userOrders);
        modelAndView.setViewName("userpage-order");
        return modelAndView;
    }

    /**
     * 个人中心未完成订单访问
     * @param request
     * @return
     */
    @RequestMapping("/bookstore/userpage/failed-order")
    public ModelAndView getUserPageFailedOrder(HttpServletRequest request, ModelAndView modelAndView){
        Object user = request.getSession().getAttribute("user");
        if (!(user instanceof BookUser)){
            modelAndView.setViewName("redirect:/index");
            return modelAndView;
        }
        //查询用户订单并返回给前端
        List<UserOrder> userOrders = orderService.getUserOrders(((BookUser) user).getUserId(), true);
        modelAndView.addObject("userOrder", userOrders);
        modelAndView.setViewName("userpage-failed-order");
        return modelAndView;
    }

    /**
     * 个人中心地址管理与访问
     * @param request
     * @return
     */
    @RequestMapping("/bookstore/userpage/address")
    public ModelAndView getUserPageOfAddress(HttpServletRequest request, ModelAndView modelAndView){
        Object user = request.getSession().getAttribute("user");
        if (!(user instanceof BookUser)){
            modelAndView.setViewName("redirect:/index");
            return modelAndView;
        }

        List<Address> addresses = addressService.selectByUser(((BookUser) user).getUserId());
        modelAndView.addObject("userAddress", addresses);
        modelAndView.setViewName("userpage-address");
        return modelAndView;
    }
}
