package com.bookstore.controller;

import com.bookstore.enums.CommonEnums;
import com.bookstore.pojo.Address;
import com.bookstore.pojo.BookUser;
import com.bookstore.service.AddressService;
import com.bookstore.service.UserService;
import com.bookstore.vo.CommonVO;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

/**
 * 类 名 称：PersonCenterFunctionController
 * 类 描 述：用户中心的异步请求Controller
 * 创建时间：2019/9/14 10:18
 * 创建人：Mical
 */
@Controller
public class PersonCenterFunctionController {

    @Autowired
    private UserService userService;

    @Autowired
    private AddressService addressService;

    /**
     * 用户中心上传个人头像功能
     * @param file
     * @param request
     * @return
     */
    @RequestMapping("/bookstore/userpage/uploadimg")
    @ResponseBody
    public CommonVO fileUpload(MultipartFile file, HttpServletRequest request){

        if (file.isEmpty()){
            return new CommonVO(CommonEnums.UPLOAD_CAN_NOT_BE_EMPTY);
        }

        Object user = request.getSession().getAttribute("user");
        if (!(user instanceof BookUser)){
            return new CommonVO(CommonEnums.NOT_LOGIN);
        }

        String rootPath = request.getSession().getServletContext().getRealPath("/");
        rootPath = rootPath + "images/head-icons";
        System.out.println(rootPath);


        String fileOrginName = file.getOriginalFilename();
        String newFileName = UUID.randomUUID() + fileOrginName.substring(fileOrginName.lastIndexOf("."));

        File writeFile = new File(rootPath + "/" + newFileName);
        //文件读写
        try {
            FileUtils.copyInputStreamToFile(file.getInputStream(), writeFile);
            //更新数据库
            BookUser myUser = (BookUser) user;
            myUser.setPicture("/images/head-icons/" + newFileName);
            request.getSession().setAttribute("user", myUser);
            userService.updateUser(myUser);
        } catch (IOException e) {
            return new CommonVO(CommonEnums.UPLOAD_FILE_FAILED);
        }
        return new CommonVO(CommonEnums.UPLOAD_FILE_SUCCESS);
    }


    /**
     * 校验用户名及更改用户名
     * @param userName
     * @param request
     * @return
     */
    @RequestMapping("/bookstore/userpage/username")
    @ResponseBody
    public CommonVO userNameUpdate(@RequestParam("userName") String userName, HttpServletRequest request){

        //校验是否登录
        Object user = request.getSession().getAttribute("user");
        if (!(user instanceof BookUser)){
            return new CommonVO(CommonEnums.NOT_LOGIN);
        }

        //校验用户名是否已存在
        BookUser bookUser = new BookUser();
        bookUser.setUserName(userName);
        BookUser myuser = userService.getUser(bookUser);
        if (myuser != null)
            return new CommonVO(CommonEnums.USER_NAME_HAVE_BEEN_REGISTERED);

        //更新用户名
        bookUser.setUserId(((BookUser) user).getUserId());
        userService.updateUser(bookUser);

        //更改session中的userName
        ((BookUser) user).setUserName(userName);
        request.getSession().setAttribute("user", user);

        return new CommonVO(CommonEnums.USER_NAME_PASSED);
    }

    /**
     * 插入地址
     * @param address 地址信息
     * @param request request请求
     * @return
     */
    @RequestMapping("/bookstore/userpage/address/insertAddress")
    @ResponseBody
    public CommonVO userAddressUpdate(Address address, HttpServletRequest request){
        //校验是否登录
        Object user = request.getSession().getAttribute("user");
        if (!(user instanceof BookUser)){
            return new CommonVO(CommonEnums.NOT_LOGIN);
        }

        address.setUserId(((BookUser) user).getUserId());
        addressService.insertAddress(address);
        return new CommonVO(CommonEnums.ADDRESS_INSERT_SUCCESS);
    }

    /**
     * 删除地址
     * @param addressId
     * @param request
     * @return
     */
    @RequestMapping("bookstore/userpage/address/deleteAddress")
    @ResponseBody
    public CommonVO userAddressDel(@RequestParam("addressId") int addressId, HttpServletRequest request){
        //校验是否登录
        Object user = request.getSession().getAttribute("user");
        if (!(user instanceof BookUser)){
            return new CommonVO(CommonEnums.NOT_LOGIN);
        }

        Address address = new Address();
        address.setAddressId(addressId);
        address.setUserId(((BookUser) user).getUserId());
        addressService.deleteAddress(address);
        return new CommonVO(CommonEnums.ADDRESS_DELETE_SUCCESS);
    }
}
