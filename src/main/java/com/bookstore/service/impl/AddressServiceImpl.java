package com.bookstore.service.impl;

import com.bookstore.mapper.AddressMapper;
import com.bookstore.pojo.Address;
import com.bookstore.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 类 名 称：AddressServiceImpl
 * 类 描 述：TODO
 * 创建时间：2019/9/14 17:18
 * 创建人：Mical
 */
@Service
public class AddressServiceImpl implements AddressService {

    @Autowired
    private AddressMapper addressMapper;

    /**
     * 更具用户的id查出该用户的所有地址
     * @param userId
     * @return
     */
    @Override
    public List<Address> selectByUser(int userId) {
        return addressMapper.selectAddressByUser(userId, 0);
    }

    /**
     * 插入用户地址
     * @param address
     */
    @Override
    public void insertAddress(Address address) {
        if (address.getIsDefault() == 0){
            addressMapper.insertAddress(address);
        }else {
            //将默认地址查出来，更新为非默认
            List<Address> newAddresss = addressMapper.selectAddressByUser(address.getUserId(), 1);
            if (newAddresss != null && newAddresss.size() > 0){
                Address newAddress = newAddresss.get(0);
                newAddress.setIsDefault(0);
                addressMapper.updateAddress(newAddress);
            }
            //再插入地址
            addressMapper.insertAddress(address);
        }
    }

    /**
     * 删除地址
     * @param address
     */
    @Override
    public void deleteAddress(Address address) {
        addressMapper.deleteAddress(address);
    }
}
