package com.bookstore.controller;

import com.bookstore.service.BookCatService;
import com.bookstore.vo.EUTreeNode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 类 名 称：BookCatController
 * 类 描 述：书籍分类管理
 * 创建时间：2019/9/25 22:27
 * 创建人：Mical
 */
@Controller
@RequestMapping("/item/cat")
public class BookCatController {

    @Autowired
    private BookCatService bookCatService;

    /**
     * 根据父id查询子分类
     * @param parentId
     * @return
     */
    @RequestMapping("/list")
    @ResponseBody
    private List<EUTreeNode> getCatList(@RequestParam(value = "id", defaultValue = "1")int parentId){
        List<EUTreeNode> catList = bookCatService.getCatList(parentId);
        return catList;
    }
}
