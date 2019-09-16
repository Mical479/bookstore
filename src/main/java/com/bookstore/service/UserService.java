package com.bookstore.service;

import com.bookstore.pojo.BookUser;

/**
 * 类 名 称：UserService
 * 类 描 述：用户相关的接口
 * 创建时间：2019/9/10 10:25
 * 创建人：Mical
 */
public interface UserService {
    BookUser getUser(BookUser bookUser);
    void registerUser(BookUser bookUser);
    void updateUser(BookUser bookUser);
}
