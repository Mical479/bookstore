package com.bookstore.controller;

import com.bookstore.pojo.BookCat;
import com.bookstore.pojo.BookInfo;
import com.bookstore.service.BookCatService;
import com.bookstore.service.BookInfoService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * 类 名 称：PageController
 * 类 描 述：页面跳转的Controller
 * 创建时间：2019/9/8 13:30
 * 创建人：Mical
 */
@Controller
public class PageController {

    @Autowired
    private BookInfoService bookInfoService;

    @Autowired
    private BookCatService bookCatService;

    /**
     * 首页访问并加载首页数据
     * @param modelAndView
     * @return
     */
    @RequestMapping("/index")
    public ModelAndView getIndexData(ModelAndView modelAndView) {
        //获取20个新品书籍
        List<BookInfo> newBooks = bookInfoService.getBooksByIndentify(1, 20);
        //获取20个热卖书籍
        List<BookInfo> hotBooks = bookInfoService.getBooksByIndentify(2, 20);
        //获取推荐分类
        List<BookCat> bookCat = bookCatService.getRandomBookCats(1, 5);

        AtomicInteger i = new AtomicInteger(1);
        bookCat.forEach(item -> {
            List<BookInfo> cat1 = new ArrayList<>();
            List<BookCat> allBookCatsById = bookCatService.getAllBookCatsById(item.getId());
            allBookCatsById.forEach(item1 ->
                    cat1.addAll(bookInfoService.getBooksByCat(item1.getId()))
            );
            modelAndView.addObject("cat" + i, cat1);
            i.getAndIncrement();
        });

        //将对象加入model中，传给前端
        modelAndView.addObject("newBooks", newBooks);
        modelAndView.addObject("hotBooks", hotBooks);
        modelAndView.addObject("bookCat", bookCat);

        modelAndView.setViewName("/index");
        return modelAndView;
    }

    /**
     * 书籍详情的访问并加载数据
     * @param modelAndView
     * @param id
     * @return
     */
    @RequestMapping("/single-product/{id}")
    public ModelAndView getBookInfo(ModelAndView modelAndView, @PathVariable("id") int id){
        BookInfo myBook = bookInfoService.getBookById(id);
        List<BookInfo> newBooks = bookInfoService.getBooksByIndentify(1, 10);
        List<BookInfo> recommendBooks = bookInfoService.getBooksByIndentify(3, 10);
        List<BookCat> bookCats = bookCatService.getRandomBookCats(1, 25);
        List<BookCat> cats = bookCatService.getAllDeepCatsById(myBook.getBookCat().getId());

        modelAndView.addObject("cats", cats);
        modelAndView.addObject("bookCats", bookCats);
        modelAndView.addObject("newBooks", newBooks);
        modelAndView.addObject("recommendBooks", recommendBooks);
        modelAndView.addObject("myBook", myBook);
        modelAndView.setViewName("/single-product");
        return modelAndView;
    }

    /**
     * 跳转到商品列表页面
     * @param modelAndView
     * @param catId
     * @param pageNum
     * @param pageSize
     * @return
     */
    @RequestMapping("/shop-list")
    public ModelAndView getBooks(ModelAndView modelAndView, @RequestParam(value = "catId", defaultValue = "0") int catId,
                                 @RequestParam(value = "pageNum", defaultValue = "1") int pageNum,
                                 @RequestParam(value = "pageSize", defaultValue = "12") int pageSize){
        if (catId == 0) {
            PageInfo randBooks = bookInfoService.getRandBooks(pageNum, pageSize);
            modelAndView.addObject("books", randBooks);
        }else {
            List<BookInfo> books = new ArrayList<>();
            List<BookCat> allBookCatsById = bookCatService.getAllBookCatsById(catId);
            allBookCatsById.forEach(item ->
                books.addAll(bookInfoService.getBooksByCat(item.getId()))
            );
            List<BookInfo> bookInfos = new ArrayList<>();
            if (bookInfos.size() > pageSize) {
                bookInfos = books.subList((pageNum - 1) * pageSize, pageNum * pageSize);
            }else {
                bookInfos = books;
            }
            PageInfo pageInfo = new PageInfo(bookInfos);
            pageInfo.setPageNum(pageNum);
            pageInfo.setPageSize(pageSize);
            List<BookCat> deepCats = bookCatService.getAllDeepCatsById(catId);
            modelAndView.addObject("books", pageInfo);
            modelAndView.addObject("deepCats", deepCats);
        }
        List<BookCat> bookCats = bookCatService.getRandomBookCats(1, 25);

        modelAndView.addObject("bookCats", bookCats);
        modelAndView.setViewName("/shop-list");
        return modelAndView;
    }

    /**
     * 跳转到登录页面
     * @return
     */
    @RequestMapping("/login")
    public String goLoginPage(){
        return "/login";
    }
}
