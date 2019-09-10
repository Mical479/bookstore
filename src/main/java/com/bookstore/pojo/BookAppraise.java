package com.bookstore.pojo;

import java.io.Serializable;
import java.util.Date;

/**
 * 类 名 称：BookAppraise
 * 类 描 述：书籍评价表实体类
 * 创建时间：2019/9/7 14:25
 * 创建人：Mical
 */
public class BookAppraise implements Serializable {
    private int id;
    private BookUser bookUser;
    private BookUser replyUser;
    private int bookId;
    private Date talkTime;
    private String talkContent;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public BookUser getBookUser() {
        return bookUser;
    }

    public void setBookUser(BookUser bookUser) {
        this.bookUser = bookUser;
    }

    public BookUser getReplyUser() {
        return replyUser;
    }

    public void setReplyUser(BookUser replyUser) {
        this.replyUser = replyUser;
    }

    public int getBookId() {
        return bookId;
    }

    public void setBookId(int bookId) {
        this.bookId = bookId;
    }

    public Date getTalkTime() {
        return talkTime;
    }

    public void setTalkTime(Date talkTime) {
        this.talkTime = talkTime;
    }

    public String getTalkContent() {
        return talkContent;
    }

    public void setTalkContent(String talkContent) {
        this.talkContent = talkContent;
    }
}
