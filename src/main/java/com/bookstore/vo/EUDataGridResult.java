package com.bookstore.vo;

import java.util.List;

/**
 * 类 名 称：EUDataGridResult
 * 类 描 述：TODO
 * 创建时间：2019/9/25 23:14
 * 创建人：Mical
 */
public class EUDataGridResult {
    private Integer total;
    private List<?> rows;

    public EUDataGridResult() {
    }

    public EUDataGridResult(Integer total, List<?> rows) {
        this.total = total;
        this.rows = rows;
    }

    public EUDataGridResult(Long total, List<?> rows) {
        this.total = total.intValue();
        this.rows = rows;
    }

    public long getTotal() {
        return (long)this.total;
    }

    public void setTotal(Integer total) {
        this.total = total;
    }

    public List<?> getRows() {
        return this.rows;
    }

    public void setRows(List<?> rows) {
        this.rows = rows;
    }
}
