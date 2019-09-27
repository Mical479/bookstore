package com.bookstore.mapper;

import com.bookstore.pojo.BookInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 类 名 称：BookInfoMapper
 * 类 描 述：书籍详情的相关操作
 * 创建时间：2019/9/7 8:53
 * 创建人：Mical
 */
public interface BookInfoMapper {

    /**
     * 根据书籍名称进行模糊查询
     * @param bookName
     * @return
     */
    List<BookInfo> selectByBookName(String bookName);

    /**
     * 根据书籍id查询书籍详情
     * @return
     */
    BookInfo selectByBookId(int id);

    /**
     * 根据书籍标识id从数据库中随机赛指定数量选出数据
     * @param identifyId 标识id
     * @param count 数量
     * @return
     */
    List<BookInfo> selectByIdentify(@Param("identifyId") int identifyId, @Param("count") int count);

    /**
     * 根据书籍的分裂id查询
     * @param catId 分裂id
     * @return
     */
    List<BookInfo> selectByCatId(int catId);

    /**
     * 随机查找数据
     * @return
     */
    List<BookInfo> selectRandBooks();

    /**
     * 根据书籍id更新书籍库存
     * @param number
     * @param id
     */
    void updateBookStock(@Param("number") int number, @Param("id") int id);

    /**
     * 插入书籍信息
     * @param bookInfo
     */
    void insertBookInfo(BookInfo bookInfo);
}
