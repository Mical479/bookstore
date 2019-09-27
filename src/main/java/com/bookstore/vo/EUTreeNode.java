package com.bookstore.vo;

/**
 * 类 名 称：EUTreeNode
 * 类 描 述：返回给后台系统的数据模板
 * 创建时间：2019/9/25 22:29
 * 创建人：Mical
 */
public class EUTreeNode {
    private long id;
    private String text;
    private String state;

    public EUTreeNode() {
    }

    public long getId() {
        return this.id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getText() {
        return this.text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getState() {
        return this.state;
    }

    public void setState(String state) {
        this.state = state;
    }
}
