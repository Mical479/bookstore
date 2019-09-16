package com.bookstore.vo;

import java.io.Serializable;

/**
 * 类 名 称：Email
 * 类 描 述：邮件发送实体类
 * 创建时间：2019/9/15 19:15
 * 创建人：Mical
 */
public class Email implements Serializable {
    private String email;

    private String code;

    private Long time;

    public Email() {
    }

    public Email(String email) {
        this.email = email;
    }

    public Email(String email, String code, Long time) {
        this.email = email;
        this.code = code;
        this.time = time;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Long getTime() {
        return time;
    }

    public void setTime(Long time) {
        this.time = time;
    }
}
