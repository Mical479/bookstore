package com.bookstore.controller;

import com.bookstore.enums.CommonEnums;
import com.bookstore.pojo.BookInfo;
import com.bookstore.pojo.BookUser;
import com.bookstore.pojo.ShopList;
import com.bookstore.service.ShoppingCartService;
import com.bookstore.vo.CommonVO;
import com.sun.org.apache.regexp.internal.RE;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Collections;
import java.util.List;

/**
 * 类 名 称：GetShopsToCartController
 * 类 描 述：加入购物车的Controller
 * 创建时间：2019/9/11 10:48
 * 创建人：Mical
 */
@Controller
public class ShopCartController {

    @Autowired
    private ShoppingCartService shoppingCartService;


    /**
     * 向购物车添加商品
     *
     * @param request    request请求
     * @param bookNumber 书籍数量
     * @param bookId     书籍id
     * @return
     */
    @RequestMapping("/bookstore/getshoptocart")
    @ResponseBody
    public CommonVO putShopToCart(HttpServletRequest request, @RequestParam(value = "bookNumber", defaultValue = "1") int bookNumber,
                                  @RequestParam("bookId") int bookId) {

        HttpSession session = request.getSession();
        Object user = session.getAttribute("user");
        if (user instanceof BookUser) {
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
        } else {
            return new CommonVO(CommonEnums.NOT_LOGIN);
        }
    }


    /**
     * 根据用户的shopId删除商品
     *
     * @param shopId
     * @return
     */
    @RequestMapping("/bookstore/delshop")
    @ResponseBody
    public CommonVO deleteShopsFromCart(@RequestParam("shopId") int shopId, HttpServletRequest request) {

        HttpSession session = request.getSession();
        Object user = session.getAttribute("user");
        //判断用户是否登录
        if (user instanceof BookUser) {
            try {
                //是否插入成功
                boolean b = shoppingCartService.delMyShop(shopId, (BookUser) user);
                if (b) {
                    List<ShopList> shopListByUserId = shoppingCartService.getShopListByUserId(((BookUser) user).getUserId());
                    session.setAttribute("shoppingNumbers", shopListByUserId.stream().mapToInt(ShopList::getBookNumber).sum());
                    return new CommonVO(CommonEnums.DELETE_SHOP_SUCCESS);
                } else
                    return new CommonVO(CommonEnums.DELETE_SHOP_FAILED);
            } catch (Exception e) {
                return new CommonVO(CommonEnums.DELETE_SHOP_FAILED);
            }
        } else {
            return new CommonVO(CommonEnums.NOT_LOGIN);
        }
    }


    /**
     * 更新购物车的商品数量
     * @param shopId
     * @param bookNumber
     * @param request
     * @return
     */
    @RequestMapping("/bookstore/updateShop")
    @ResponseBody
    public CommonVO updateShopsFromCart(@RequestParam("shopId") int shopId, @RequestParam("bookNumber") int bookNumber,
                                        HttpServletRequest request){
        HttpSession session = request.getSession();
        Object user = session.getAttribute("user");
        if (user instanceof BookUser){
            if (shoppingCartService.updateShops(bookNumber, (BookUser) user, shopId)){
                List<ShopList> shopListByUserId = shoppingCartService.getShopListByUserId(((BookUser) user).getUserId());
                session.setAttribute("shoppingNumbers", shopListByUserId.stream().mapToInt(ShopList::getBookNumber).sum());
                return new CommonVO(CommonEnums.ADD_SHOP_TO_CART_SUCCESS);
            }
        }
        return new CommonVO(CommonEnums.ADD_SHOP_TO_CART_FAILED);
    }
}
