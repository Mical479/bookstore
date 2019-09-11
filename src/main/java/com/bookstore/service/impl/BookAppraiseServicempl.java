package com.bookstore.service.impl;

import com.bookstore.mapper.BookAppraiseMapper;
import com.bookstore.pojo.BookAppraise;
import com.bookstore.service.BookAppraiseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 类 名 称：BookAppraiseServicempl
 * 类 描 述：书籍评论服务实现
 * 创建时间：2019/9/11 15:17
 * 创建人：slx
 */
@Service
public class BookAppraiseServicempl implements BookAppraiseService {
    private BookAppraiseMapper bookAppraiseMapper;

    /**
     * 查询所有评论
     * @param book_id  书籍id
     * @return
     */
    @Autowired
    public List<BookAppraise> getAllAppraise(int book_id){
        return bookAppraiseMapper.selectAllAppraisesById(book_id);
    }

    /**
     * 查询所有回复评论数+1
     * @param book_id  书籍id
     * @return
     */
    @Autowired
    public List<Integer> getNumOfReplyAppraises(int book_id){
        return bookAppraiseMapper.countReplayAppraises(book_id);
    }

    /**
     * 查询所有第一评论数
     * @param book_id  书籍id
     * @return
     */
    @Autowired
    public int getNumOfAppraises(int book_id){
        return bookAppraiseMapper.countApprases(book_id);
    }
}
