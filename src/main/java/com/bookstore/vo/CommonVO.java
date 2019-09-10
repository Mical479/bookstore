package com.bookstore.vo;

import com.bookstore.enums.CommonEnums;

import java.io.Serializable;
import java.util.List;

/**
 * 类 名 称：CommonVO
 * 类 描 述：返回给前端的Ajax异步请求模板
 * 创建时间：2019/9/10 13:29
 * 创建人：Mical
 */
public class CommonVO implements Serializable {

    private Integer code;
    private String msg;
    private List<?> data;

    public CommonVO(){
    }

    public CommonVO(CommonEnums enums) {
        this.code = enums.getCode();
        this.msg = enums.getMsg();
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
    }

    public List<?> getData() {
        return data;
    }

    public void setData(List<?> data) {
        this.data = data;
    }
}
