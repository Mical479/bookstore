package com.bookstore.controller;

import com.bookstore.enums.CommonEnums;
import com.bookstore.pojo.BookUser;
import com.bookstore.service.UserService;
import com.bookstore.service.impl.EmailService;
import com.bookstore.vo.CommonVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * 类 名 称：EmailController
 * 类 描 述：邮件发送相关
 * 创建时间：2019/9/15 19:45
 * 创建人：Mical
 */
@Controller
public class EmailController {

    @Autowired
    private EmailService emailService;

    @Autowired
    private UserService userService;

    @RequestMapping("/bookstore/userpage/vertifyemail")
    @ResponseBody
    public CommonVO getEmailCode(@RequestParam("email") String email){
        BookUser bookUser = new BookUser();
        bookUser.setUserEmail(email);
        BookUser user = userService.getUser(bookUser);
        if (user == null)
            return emailService.sendEmail(email, "【淘金书店】邮箱验证");

        return new CommonVO(CommonEnums.EMAIL_HAVE_BEEN_REGISTERED);
    }

    @RequestMapping("/bookstore/userpage/email")
    @ResponseBody
    public CommonVO bindEmail(@RequestParam("email") String email, @RequestParam("code") String code,
                              HttpServletRequest request){
        Object user = request.getSession().getAttribute("user");
        if (emailService.validSmsCode(email, code) && user instanceof BookUser) {
            ((BookUser) user).setUserEmail(email);
            request.getSession().setAttribute("user", user);
            userService.updateUser((BookUser) user);
            return new CommonVO(CommonEnums.PHONE_CHECK_SUCCESS);
        }
        return new CommonVO(CommonEnums.PHONE_MSG_NOT_RIGHT);
    }
}
