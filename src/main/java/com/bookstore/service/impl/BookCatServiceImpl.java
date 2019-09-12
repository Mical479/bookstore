package com.bookstore.service.impl;

import com.bookstore.mapper.BookCatMapper;
import com.bookstore.pojo.BookCat;
import com.bookstore.service.BookCatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 * 类 名 称：BookCatServiceImpl
 * 类 描 述：书籍分类服务层实现类
 * 创建时间：2019/9/8 14:35
 * 创建人：Mical
 */
@Service
public class BookCatServiceImpl implements BookCatService {

    @Autowired
    private BookCatMapper bookCatMapper;

    /**
     * 根据某个一级分类的id查询出该分类下所有的根分类
     * @param id 一级分类的id
     * @return
     */
    @Override
    public List<BookCat> getAllBookCatsById(int id) {
        List<BookCat> parentCat = bookCatMapper.getParentCat(id, 0);
        return getCats(parentCat);
    }

    /**
     * 根据父id查询父id相同的cats
     * @param parentId
     * @param count
     * @return
     */
    @Override
    public List<BookCat> getRandomBookCats(int parentId, int count) {
        return bookCatMapper.getParentCat(parentId, count);
    }

    /**
     * 根据某个catID查询到跟cat
     * @param id
     * @return
     */
    @Override
    public List<BookCat> getAllDeepCatsById(int id) {
        List<BookCat> list = new ArrayList<>();
        BookCat cat = bookCatMapper.getCat(id);
        list.add(cat);
        while (cat != null){
            cat = bookCatMapper.getCat(cat.getParentId());
            list.add(cat);
        }
        list.remove(list.size() - 1);
        return list;
    }

    /**
     * 通过递归的方式查询某个分类下的所有根分类
     * @param myList 查询出的分类列表
     * @return
     */
    @Autowired
    private List<BookCat> getCats(List<BookCat> myList) {

        //由查询出的二级目录先过滤出根目录
        List<BookCat> newCats = myList.stream().filter(item -> item.getIsParent() == 0).collect(Collectors.toList());
        //过滤出非根目录
        List<BookCat> collect = myList.stream().filter(item -> item.getIsParent() == 1).collect(Collectors.toList());

        if (collect != null || collect.size() > 0){
            collect.forEach(item -> {
                List<BookCat> cats = getCats(bookCatMapper.getParentCat(item.getId(), 0));
                newCats.addAll(cats);
            });
        }
        return newCats;
    }


}
