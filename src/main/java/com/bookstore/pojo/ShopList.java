package com.bookstore.pojo;

import java.util.Date;

/**
 * 类 名 称：ShopList
 * 类 描 述：购物车表实体类
 * 创建时间：2019/9/7 14:52
 * 创建人：Mical
 */
public class ShopList {
    private Integer shopId;
    private Integer userId;
    private BookInfo bookInfo;
    private Integer bookNumber;
    private Date joinShopTime;

    public Integer getBookNumber() {
        return bookNumber;
    }

    public void setBookNumber(Integer bookNumber) {
        this.bookNumber = bookNumber;
    }

    public Integer getShopId() {
        return shopId;
    }

    public void setShopId(Integer shopId) {
        this.shopId = shopId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public BookInfo getBookInfo() {
        return bookInfo;
    }

    public void setBookInfo(BookInfo bookInfo) {
        this.bookInfo = bookInfo;
    }

    public Date getJoinShopTime() {
        return joinShopTime;
    }

    public void setJoinShopTime(Date joinShopTime) {
        this.joinShopTime = joinShopTime;
    }

    @Override
    public String toString() {
        return "ShopList{" +
                "shopId=" + shopId +
                ", userId=" + userId +
                ", bookInfo=" + bookInfo +
                ", bookNumber=" + bookNumber +
                ", joinShopTime=" + joinShopTime +
                '}';
    }
}
