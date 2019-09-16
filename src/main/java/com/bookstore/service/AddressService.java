package com.bookstore.service;

import com.bookstore.pojo.Address;

import java.util.List;

/**
 * 类 名 称：AddressService
 * 类 描 述：用户地址相关操作
 * 创建时间：2019/9/14 17:17
 * 创建人：Mical
 */
public interface AddressService {

    /**
     * 更具用户的id查出该用户的所有地址
     * @param userId
     * @return
     */
    List<Address> selectByUser(int userId);

    /**
     * 插入用户地址
     * @param address
     */
    void insertAddress(Address address);

    /**
     * 删除地址
     * @param address
     */
    void deleteAddress(Address address);
}
