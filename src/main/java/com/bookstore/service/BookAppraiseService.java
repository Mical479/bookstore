package com.bookstore.service;

import com.bookstore.pojo.BookAppraise;


import java.util.List;
/**
 * 类 名 称：BookAppraiseService
 * 类 描 述：书籍评论服务实现
 * 创建时间：2019/9/11 15:17
 * 创建人：slx
 */
public interface BookAppraiseService {

    List<BookAppraise> getAllAppraise(int book_id);
    List<Integer> getNumOfReplyAppraises(int book_id);
    int getNumOfAppraises(int book_id);

}
