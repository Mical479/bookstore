package com.bookstore.service;

import com.bookstore.pojo.BookInfo;
import com.github.pagehelper.PageInfo;

import java.util.List;

/**
 * 类 名 称：BookInfoService
 * 类 描 述：书籍详情服务层相关接口
 * 创建时间：2019/9/8 13:25
 * 创建人：Mical
 */
public interface BookInfoService {
    /**
     * 根据书籍标识id获取书籍列表
     * @param identifyId 标识id
     * @param count 获取书籍数量
     * @return
     */
    List<BookInfo> getBooksByIndentify(int identifyId, int count);
    /**
     * 根据分类id查询
     * @param catId 分类id
     * @return
     */
    List<BookInfo> getBooksByCat(int catId);
    /**
     * 根据书籍id查询
     * @param id
     * @return
     */
    BookInfo getBookById(int id);
    /**
     * 随机从数据库中查找数据
     * @return
     */
    PageInfo getRandBooks(int pageNum, int pageSize);
}
