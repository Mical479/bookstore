package com.bookstore.controller;

import com.bookstore.enums.CommonEnums;
import com.bookstore.pojo.BookUser;
import com.bookstore.service.UserService;
import com.bookstore.service.impl.SmsService;
import com.bookstore.vo.CommonVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * 类 名 称：SmsController
 * 类 描 述：短信相关操作controller
 * 创建时间：2019/9/15 15:37
 * 创建人：Mical
 */
@Controller
public class SmsController {

    @Autowired
    private SmsService smsService;

    @Autowired
    private UserService userService;

    /**
     * 发送短信验证码
     * @param phone
     * @return
     */
    @RequestMapping("/bookstore/userpage/vertifyphone")
    @ResponseBody
    public CommonVO getCode(@RequestParam("phone") String phone) {
        BookUser bookUser = new BookUser();
        bookUser.setUserPhone(phone);
        BookUser user = userService.getUser(bookUser);
        if (user == null) {
            return smsService.sendSmsCode(phone);
        }
        return new CommonVO(CommonEnums.PHONE_HAS_BEEN_REGISTERED);
    }

    /**
     * 校验验证码是否正确
     * @param phone
     * @param code
     * @param request
     * @return
     */
    @RequestMapping("/bookstore/userpage/phone")
    @ResponseBody
    public CommonVO bindPhone(@RequestParam("phone") String phone, @RequestParam("code") String code,
                              HttpServletRequest request) {
        Object user = request.getSession().getAttribute("user");
        if (smsService.validSmsCode(phone, code) && user instanceof BookUser) {
            ((BookUser) user).setUserPhone(phone);
            request.getSession().setAttribute("user", user);
            userService.updateUser((BookUser) user);
            return new CommonVO(CommonEnums.PHONE_CHECK_SUCCESS);
        }
        return new CommonVO(CommonEnums.PHONE_MSG_NOT_RIGHT);
    }
}
