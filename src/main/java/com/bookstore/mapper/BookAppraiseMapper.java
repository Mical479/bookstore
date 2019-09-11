package com.bookstore.mapper;

import com.bookstore.pojo.BookAppraise;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookAppraiseMapper {
    /*
    * 根据评价id查看评论具体信息
    * @param id
    * @return
    * */
    BookAppraise selectById(int id);

    /*
    *删除评论
    */
    int deleteByPrimaryKey(int id);

    /*
    * 添加评论 非回复  reply_User_id=0
    * */
    void insertNewContent(BookAppraise bookAppraise);

    /*
     * 根据replyId查找回复信息
     * @param replyId
     * @return
     * */
    List<BookAppraise> selectByReplyId(int replyId);

    /*
    对已有评论的回复 reply_User_id:前一评论用户id
    * */
    void insertReplyContent(BookAppraise bookAppraise);

    /*
    获取所有评论
     */
    List<BookAppraise> selectAllAppraisesById(int book_id);
    /*
    查询回复评论数+1
     */
    List<Integer> countReplayAppraises(int book_id);
    /*
    查询第一评论数
     */
    int countApprases(int book_id);

}
