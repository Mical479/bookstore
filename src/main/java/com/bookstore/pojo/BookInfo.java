package com.bookstore.pojo;

import java.io.Serializable;

/**
 * 类 名 称：BookInfo
 * 类 描 述：书籍详情表实体类
 * 创建时间：2019/9/7 8:49
 * 创建人：Mical
 */
public class BookInfo implements Serializable {
    private int id; //book索引
    private String bookName; //书籍名称
    private String bookDesc; //书籍描述
    private Double bookPrice; //书籍价格
    private String bookAuthor; //书籍作者
    private String bookPress; //书籍出版社
    private String bookDate; //出版日期
    private String bookImg; //书籍封面
    private BookCat bookCat; //书籍分类
    private int bookIndentification; //书籍标识
    private int bookStock; //书籍库存

    public int getBookStock() {
        return bookStock;
    }

    public void setBookStock(int bookStock) {
        this.bookStock = bookStock;
    }

    public int getBookIndentification() {
        return bookIndentification;
    }

    public void setBookIndentification(int bookIndentification) {
        this.bookIndentification = bookIndentification;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public String getBookDesc() {
        return bookDesc;
    }

    public void setBookDesc(String bookDesc) {
        this.bookDesc = bookDesc;
    }

    public Double getBookPrice() {
        return bookPrice;
    }

    public void setBookPrice(Double bookPrice) {
        this.bookPrice = bookPrice;
    }

    public String getBookAuthor() {
        return bookAuthor;
    }

    public void setBookAuthor(String bookAuthor) {
        this.bookAuthor = bookAuthor;
    }

    public String getBookPress() {
        return bookPress;
    }

    public void setBookPress(String bookPress) {
        this.bookPress = bookPress;
    }

    public String getBookDate() {
        return bookDate;
    }

    public void setBookDate(String bookDate) {
        this.bookDate = bookDate;
    }

    public String getBookImg() {
        return bookImg;
    }

    public void setBookImg(String bookImg) {
        this.bookImg = bookImg;
    }

    public BookCat getBookCat() {
        return bookCat;
    }

    public void setBookCat(BookCat bookCat) {
        this.bookCat = bookCat;
    }

    @Override
    public String toString() {
        return "BookInfo{" +
                "id=" + id +
                ", bookName='" + bookName + '\'' +
                ", bookDesc='" + bookDesc + '\'' +
                ", bookPrice=" + bookPrice +
                ", bookAuthor='" + bookAuthor + '\'' +
                ", bookPress='" + bookPress + '\'' +
                ", bookDate='" + bookDate + '\'' +
                ", bookImg='" + bookImg + '\'' +
                ", bookCat='" + bookCat + '\'' +
                '}';
    }
}
