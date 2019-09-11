package com.bookstore.controller;

import com.bookstore.enums.CommonEnums;
import com.bookstore.pojo.BookInfo;
import com.bookstore.pojo.BookUser;
import com.bookstore.pojo.ShopList;
import com.bookstore.service.ShoppingCartService;
import com.bookstore.vo.CommonVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/**
 * 类 名 称：GetShopsToCartController
 * 类 描 述：加入购物车的Controller
 * 创建时间：2019/9/11 10:48
 * 创建人：Mical
 */
@Controller
public class PutShopsToCartController {

    @Autowired
    private ShoppingCartService shoppingCartService;


    /**
     * 向购物车添加商品
     * @param request request请求
     * @param bookNumber 书籍数量
     * @param bookId 书籍id
     * @return
     */
    @RequestMapping("/bookstore/getshoptocart")
    @ResponseBody
    public CommonVO putShopToCart(HttpServletRequest request, @RequestParam(value = "bookNumber", defaultValue = "1") int bookNumber,
                                  @RequestParam("bookId") int bookId){

        HttpSession session = request.getSession();
        Object user = session.getAttribute("user");
        if (user instanceof BookUser){
            ShopList shopList = new ShopList();
            shopList.setUserId(((BookUser) user).getUserId());
            shopList.setBookNumber(bookNumber);

            BookInfo bookInfo = new BookInfo();
            bookInfo.setId(bookId);
            shopList.setBookInfo(bookInfo);
            shoppingCartService.insertShopsToCart(shopList);

            //获取购物车物品数量
            CommonVO commonVO = new CommonVO(CommonEnums.ADD_SHOP_TO_CART_SUCCESS);
            List<ShopList> shopListByUserId = shoppingCartService.getShopListByUserId(shopList.getUserId());
            int sum = shopListByUserId.stream().mapToInt(ShopList::getBookNumber).sum();

            //跟新session中的数据
            session.setAttribute("shoppingNumbers", sum);
            commonVO.setData(Collections.singletonList(sum));
            return commonVO;
        }else {
            return new CommonVO(CommonEnums.NOT_LOGIN);
        }
    }
}
