package com.bookstore.service;

import com.bookstore.pojo.BookCat;
import com.bookstore.vo.EUTreeNode;

import java.util.List;

/**
 * 类 名 称：BookCatService
 * 类 描 述：书籍分类相关接口
 * 创建时间：2019/9/8 14:33
 * 创建人：Mical
 */
public interface BookCatService {
    List<BookCat> getAllBookCatsById(int id);

    List<BookCat> getRandomBookCats(int parentId, int count);

    List<BookCat> getAllDeepCatsById(int id);

    List<EUTreeNode> getCatList(int parentId);
}
