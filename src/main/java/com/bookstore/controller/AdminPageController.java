package com.bookstore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 类 名 称：AdminPageController
 * 类 描 述：后台管理页面跳转
 * 创建时间：2019/9/25 22:21
 * 创建人：Mical
 */
@Controller
public class AdminPageController {

    /**
     * 打开首页
     * @return
     */
    @RequestMapping("/admin/index")
    public String showIndex(){
        return "/admin/index";
    }

    /**
     * 展示其他页面
     * @param page 页面名称
     * @return
     */
    @RequestMapping("/admin/{page}")
    public String showPage(@PathVariable String page){
        return "/admin/" + page;
    }
}
