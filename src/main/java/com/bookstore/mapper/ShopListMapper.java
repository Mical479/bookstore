package com.bookstore.mapper;

import com.bookstore.pojo.BookUser;
import com.bookstore.pojo.ShopList;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

/**
 * 类 名 称：ShopListMapper
 * 类 描 述：购物车相关操作
 * 创建时间：2019/9/11 10:28
 * 创建人：Mical
 */
public interface ShopListMapper {

    /**
     * 插入商品
     * @param shopList
     */
    void insertShops(ShopList shopList);

    /**
     * 根据用户id查找购物车商品列表
     * @param userId
     * @return
     */
    List<ShopList> selectShopListByUserId(int userId);

    /**
     * 根据用户Id和书籍Id查询
     * @param userId
     * @param bookId
     * @return
     */
    ShopList selectShopListByUserIdAndBookId(@Param("userId") int userId, @Param("bookId") int bookId);

    /**
     * 更新用户的购物车
     * @param shopList
     */
    void updateShopList(ShopList shopList);

    /**
     * 根据购物车的id删除某个商品
     * @param shopList
     */
    int deleteShops(ShopList shopList);

    /**
     * 根据用户id和购物车商品id查询
     * @param userId
     * @param shopId
     * @return
     */
    ShopList selectByUserIdAndShopId(@Param("userId") int userId, @Param("shopId") int shopId);

    /**
     * 根据用户Id和shopId更新书籍数量
     * @param bookNumber
     * @param joinShopTime
     * @param userId
     * @param shopId
     * @return
     */
    int updateBookNumberByUserIdAndShopId(@Param("bookNumber") int bookNumber, @Param("joinShopTime")Date joinShopTime,
                                          @Param("userId") int userId, @Param("shopId") int shopId);
}
