package com.bookstore.mapper;

import com.bookstore.pojo.Address;
import com.bookstore.pojo.BookUser;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 类 名 称：AddressMapper
 * 类 描 述：地址信息
 * 创建时间：2019/9/12 16:39
 * 创建人：Mical
 */
public interface AddressMapper {

    /**
     * 检索出某个用户的所有地址
     * @param userId 用户ID
     * @param isDefault 检索出用户默认地址还是所有地址，0表示检索出所有，1表示检索出默认
     * @return
     */
    List<Address> selectAddressByUser(@Param("userId") int userId, @Param("isDefault") int isDefault);

    /**
     * 插入用户地址
     * @param address
     */
    void insertAddress(Address address);

    /**
     * 更新用户地址
     * @param address
     */
    void updateAddress(Address address);

    /**
     * 删除地址
     * @param address
     */
    void deleteAddress(Address address);
}
