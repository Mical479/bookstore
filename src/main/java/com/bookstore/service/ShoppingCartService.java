package com.bookstore.service;

import com.bookstore.pojo.BookUser;
import com.bookstore.pojo.ShopList;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * 类 名 称：ShoppingCartService
 * 类 描 述：购物车服务层接口
 * 创建时间：2019/9/11 10:43
 * 创建人：Mical
 */
public interface ShoppingCartService {

    void insertShopsToCart(ShopList shopList);

    List<ShopList> getShopListByUserId(int userId);

    boolean delMyShop(ShopList shopList, BookUser user);

    boolean updateShops(int bookNumber, BookUser user, int shopId);
}
