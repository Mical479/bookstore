package com.bookstore.vo;

import java.io.Serializable;

/**
 * 短信实体类
 */
public class Sms implements Serializable {
    private String phone;

    private String code;

    private Long time;

    public Sms(String phone) {
        this.phone = phone;
    }

    public Sms(String phone, String code, Long time) {
        this.phone = phone;
        this.code = code;
        this.time = time;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
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
