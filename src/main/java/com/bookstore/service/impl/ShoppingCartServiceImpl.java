package com.bookstore.service.impl;

import com.bookstore.mapper.ShopListMapper;
import com.bookstore.pojo.BookUser;
import com.bookstore.pojo.ShopList;
import com.bookstore.service.ShoppingCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * 类 名 称：ShoppingCartServiceImpl
 * 类 描 述：购物车服务层实现类
 * 创建时间：2019/9/11 10:44
 * 创建人：Mical
 */
@Service
public class ShoppingCartServiceImpl implements ShoppingCartService {


    @Autowired
    private ShopListMapper shopListMapper;

    /**
     * 将商品加入购物车
     *
     * @param shopList 购物车商品
     */
    @Override
    public void insertShopsToCart(ShopList shopList) {
        ShopList alerdyLists = shopListMapper.selectShopListByUserIdAndBookId(shopList.getUserId(), shopList.getBookInfo().getId());
        shopList.setJoinShopTime(new Date());
        if (alerdyLists != null) {
            int i = shopList.getBookNumber() + alerdyLists.getBookNumber();
            alerdyLists.setBookNumber(i);
            shopListMapper.updateShopList(alerdyLists);
        } else {
            shopListMapper.insertShops(shopList);
        }
    }

    /**
     * 根据用户id，检索购物车的商品
     *
     * @param userId
     * @return
     */
    @Override
    public List<ShopList> getShopListByUserId(int userId) {
        return shopListMapper.selectShopListByUserId(userId);
    }

    /**
     * 删除商品
     */
    @Override
    public boolean delMyShop(int shopId, BookUser user) {
        ShopList shopList1 = shopListMapper.selectByUserIdAndShopId(user.getUserId(), shopId);
        if (shopList1 != null) {
            int i = shopListMapper.deleteShops(shopId);
            return i > 0;
        } else {
            return false;
        }
    }

    /**
     * 更新书籍数量
     *
     * @param bookNumber
     * @param user
     * @param shopId
     * @return
     */
    @Override
    public boolean updateShops(int bookNumber, BookUser user, int shopId) {
        //安全校验，防止一个用户去修改其他用户的购物车数据
        ShopList shopList = shopListMapper.selectByUserIdAndShopId(user.getUserId(), shopId);
        if (shopList != null) {
            return shopListMapper.updateBookNumberByUserIdAndShopId(bookNumber, new Date(), user.getUserId(), shopId) > 0;
        }
        return false;
    }


}
