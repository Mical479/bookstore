package com.bookstore.mapper;

import com.bookstore.pojo.ShopList;

import java.util.List;

/**
 * 类 名 称：ShopListMapper
 * 类 描 述：购物车相关操作
 * 创建时间：2019/9/11 10:28
 * 创建人：Mical
 */
public interface ShopListMapper {

    void insertShops(ShopList shopList);
    List<ShopList> selectShopListByUserId(int userId);
}
