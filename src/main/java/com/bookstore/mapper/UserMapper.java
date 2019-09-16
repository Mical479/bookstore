package com.bookstore.mapper;

import com.bookstore.pojo.BookUser;

/**
 * 类 名 称：UserMapper
 * 类 描 述：用户相关的Mapper文件
 * 创建时间：2019/9/10 9:05
 * 创建人：Mical
 */
public interface UserMapper {
    void insertUser(BookUser bookUser);
    BookUser selectUser(BookUser bookUser);

    /**
     * 更新用户的头像、电话、邮件等信息
     * @param bookUser
     */
    void updateUser(BookUser bookUser);
}
