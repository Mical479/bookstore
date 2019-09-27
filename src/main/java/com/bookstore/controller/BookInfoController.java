package com.bookstore.controller;

import com.bookstore.enums.CommonEnums;
import com.bookstore.mapper.BookInfoMapper;
import com.bookstore.pojo.BookCat;
import com.bookstore.pojo.BookInfo;
import com.bookstore.pojo.BookUser;
import com.bookstore.service.BookInfoService;
import com.bookstore.vo.CommonVO;
import com.bookstore.vo.EUDataGridResult;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * 类 名 称：BookInfoController
 * 类 描 述：后台系统查询商品信息
 * 创建时间：2019/9/25 22:54
 * 创建人：Mical
 */
@Controller
public class BookInfoController {

    @Autowired
    private BookInfoService bookInfoService;

    @Autowired
    private BookInfoMapper bookInfoMapper;

    /**
     * 查询某个书籍
     * @param itemId
     * @return
     */
    @RequestMapping("/item/{itemId}")
    @ResponseBody
    public BookInfo getBookById(@PathVariable int itemId){
        BookInfo bookById = bookInfoService.getBookById(itemId);
        return bookById;
    }

    /**
     * 查询书籍列表
     * @param page
     * @param rows
     * @return
     */
    @RequestMapping("/item/list")
    @ResponseBody
    public EUDataGridResult getBookList(int page, int rows){
        PageHelper.startPage(page, rows);
        List<BookInfo> bookInfos = bookInfoMapper.selectRandBooks();
        EUDataGridResult result = new EUDataGridResult();
        result.setRows(bookInfos);

        PageInfo<BookInfo> pageInfo = new PageInfo<>(bookInfos);
        result.setTotal((int) pageInfo.getTotal());
        return result;
    }

    @PostMapping("/item/save")
    @ResponseBody
    private CommonVO createBook(BookInfo bookInfo, int catId){

        BookCat cat = new BookCat();
        cat.setId(catId);
        bookInfo.setBookCat(cat);
        bookInfoMapper.insertBookInfo(bookInfo);

        return new CommonVO(CommonEnums.INSERT_INTO_BOOK_SUCCESS);
    }

    @PostMapping(value = "/pic/upload")
    @ResponseBody
    public String pictureUpload(MultipartFile uploadFile, HttpServletRequest request){
        System.out.println(uploadFile.getOriginalFilename());
        Map resultMap = new HashMap();

        String rootPath = request.getSession().getServletContext().getRealPath("/");
        rootPath = rootPath + "images/book-imgs";

        String fileOrginName = uploadFile.getOriginalFilename();
        String newFileName = UUID.randomUUID() + fileOrginName.substring(fileOrginName.lastIndexOf("."));

        File writeFile = new File(rootPath + "/" + newFileName);
        System.out.println(newFileName);
        //文件读写
        try {
            FileUtils.copyInputStreamToFile(uploadFile.getInputStream(), writeFile);
        }catch (Exception e){
            System.out.println(e.getMessage());
            resultMap.put("error", 1);
            resultMap.put("message", "文件上传失败");
            return new Gson().toJson(resultMap);
        }

        resultMap.put("error", 0);
        resultMap.put("url", "/images/book-imgs/" + newFileName);
        for (Object o : resultMap.keySet()) {
            System.out.println(o.toString());
            System.out.println(resultMap.get(o));
        }
        return new Gson().toJson(resultMap);
    }
}
