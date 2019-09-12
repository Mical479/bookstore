package com.bookstore.enums;

/**
 * 类 名 称：CommonEnums
 * 类 描 述：TODO
 * 创建时间：2019/9/10 13:35
 * 创建人：Mical
 */
public enum CommonEnums {
    USER_NOT_FOUND(1, "未发现该用户"),
    USER_PASSWORD_ERROR(2, "密码错误"),
    LOGIN_ERROR(3, "邮箱或密码错误"),
    EMAIL_NOT_FOUND(9, "邮箱不存在"),
    LOGIN_SUCCESS(4, "登录成功"),
    EMAIL_HAVE_BEEN_REGISTERED(5, "email已经被注册"),
    USER_NAME_HAVE_BEEN_REGISTERED(6, "用户名已经被注册"),
    REGISTER_SUCCESS(7, "注册成功"),
    REGISTER_FAILED(8, "注册失败"),
    ADD_SHOP_TO_CART_SUCCESS(9, "加入购物车成功"),
    ADD_SHOP_TO_CART_FAILED(13, "加入购物车失败"),
    NOT_LOGIN(10, "未登录"),
    DELETE_SHOP_FAILED(11, "删除商品失败"),
    DELETE_SHOP_SUCCESS(12, "删除商品成功"),
    PUCHARSE_SUCCESS(13, "购买成功"),
    PUCHARSE_FAILED(14, "购买失败"),
    SUBMIT_TO_APLI(15, "正在提交支付订单")
    ;

    private Integer code;
    private String msg;

    CommonEnums(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }}
