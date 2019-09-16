package com.bookstore.service.impl;

import com.bookstore.mapper.UserMapper;
import com.bookstore.pojo.BookUser;
import com.bookstore.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * 类 名 称：UserServiceImpl
 * 类 描 述：用户相关的服务层实现类
 * 创建时间：2019/9/10 10:26
 * 创建人：Mical
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    /**
     * 根据用户信息获取用户
     * @param bookUser 用户实体
     * @return
     */
    @Override
    public BookUser getUser(BookUser bookUser) {
        return userMapper.selectUser(bookUser);
    }

    /**
     * 用户注册
     * @param bookUser 用户实体
     */
    @Override
    public void registerUser(BookUser bookUser) {
        bookUser.setCreateTime(new Date());
        userMapper.insertUser(bookUser);
    }

    /**
     * 更新用户信息
     * @param bookUser
     */
    @Override
    public void updateUser(BookUser bookUser) {
        userMapper.updateUser(bookUser);
    }
}
