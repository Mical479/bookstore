package com.bookstore.controller;

import com.bookstore.enums.CommonEnums;
import com.bookstore.pojo.BookUser;
import com.bookstore.pojo.ShopList;
import com.bookstore.service.ShoppingCartService;
import com.bookstore.service.UserService;
import com.bookstore.vo.CommonVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

/**
 * 类 名 称：UserController
 * 类 描 述：用户操作相关的Controller
 * 创建时间：2019/9/10 10:29
 * 创建人：Mical
 */
@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private ShoppingCartService shoppingCartService;

    /**
     * 登录操作
     * @param email
     * @param password
     * @return
     */
    @PostMapping("/login/doLogin")
    @ResponseBody
    public CommonVO loginBookStore(@RequestParam("email") String email, @RequestParam("password") String password,
                                   HttpServletRequest request) {

        BookUser bookUser = new BookUser();
        bookUser.setUserEmail(email);
        try {
            BookUser user = userService.getUser(bookUser);
            //根据email查找的用户，如果不存在就返回不存在
            if (user != null) {
                bookUser.setUserPassword(password);
                //根据email和password查找，如果不存在，就是密码错误
                user = userService.getUser(bookUser);
                if (user != null){
                    List<ShopList> shoppingList = shoppingCartService.getShopListByUserId(user.getUserId());
                    //登录成功，加入session
                    HttpSession session = request.getSession(true);
                    session.setAttribute("user", user);
                    session.setAttribute("shoppingNumbers",
                            shoppingList.stream().mapToInt(ShopList::getBookNumber).sum());
                    return new CommonVO(CommonEnums.LOGIN_SUCCESS);
                }else {
                    return new CommonVO(CommonEnums.USER_PASSWORD_ERROR);
                }
            } else {
                return new CommonVO(CommonEnums.EMAIL_NOT_FOUND);
            }
        } catch (Exception e) {
            return new CommonVO(CommonEnums.LOGIN_ERROR);
        }
    }

    /**
     * 注册操作
     * @param email
     * @param name
     * @param password
     * @return
     */
    @PostMapping("/login/register")
    @ResponseBody
    public CommonVO registBookStore(@RequestParam("email") String email, @RequestParam("name") String name,
                                    @RequestParam("password") String password) {
        BookUser user = new BookUser();
        user.setUserEmail(email);

        BookUser user1 = new BookUser();
        user1.setUserName(name);

        if (userService.getUser(user) != null) {
            return new CommonVO(CommonEnums.EMAIL_HAVE_BEEN_REGISTERED);
        } else if (userService.getUser(user1) != null) {
            return new CommonVO(CommonEnums.USER_NAME_HAVE_BEEN_REGISTERED);
        }

        user.setCreateTime(new Date());
        user.setUserName(name);
        user.setUserPassword(password);
        try {
            userService.registerUser(user);
            return new CommonVO(CommonEnums.REGISTER_SUCCESS);
        } catch (Exception e) {
            return new CommonVO(CommonEnums.REGISTER_FAILED);
        }
    }

    /**
     * 购物车网页的跳转
     * @param request
     * @return
     */
    @RequestMapping("/bookstore/shoppingcart")
    public String goShopingCart(HttpServletRequest request, Model model){
        HttpSession session = request.getSession();
        Object user = session.getAttribute("user");
        if (user instanceof BookUser){
            List<ShopList> shopListByUserId = shoppingCartService.getShopListByUserId(((BookUser) user).getUserId());
            model.addAttribute("shopList", shopListByUserId);
            return "pucharse";
        }else {
            return "redirect:/index";
        }
    }

}
