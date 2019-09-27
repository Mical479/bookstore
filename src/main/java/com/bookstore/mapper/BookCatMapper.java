package com.bookstore.mapper;

import com.bookstore.pojo.BookCat;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 类 名 称：BookCatMapper
 * 类 描 述：分类表相关操作
 * 创建时间：2019/9/7 11:23
 * 创建人：Mical
 */
public interface BookCatMapper {

    /**
     * 根据父id获取相同级别下的分类
     * @param parentId 父id
     * @param count 是否限制查询出的数量，0表示不限制，大于0表示限制
     * @return
     */
    List<BookCat> getParentCat(@Param("parentId") int parentId, @Param("count") int count);

    /**
     * 根据id获取该分类
     * @param id
     * @return
     */
    BookCat getCat(int id);
}
