<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>书单</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Google font (font-family: 'Roboto', sans-serif; Poppins ; Satisfy) -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,600,600i,700,700i,800"
          rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">

    <!-- Stylesheets -->
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/plugins.css">
    <link rel="stylesheet" href="/css/style.css">

    <!-- Cusom css -->
    <link rel="stylesheet" href="/css/custom.css">
    <link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon" />

    <!-- Modernizer js -->
    <script src="/js/vendor/modernizr-3.5.0.min.js"></script>
</head>
<body>
<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade
    your browser</a> to improve your experience and security.</p>
<![endif]-->

<!-- Main wrapper -->
<div class="wrapper" id="wrapper">

    <!-- Header -->
    <header id="wn__header" class="oth-page header__area header__absolute sticky__header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4 col-sm-4 col-7 col-lg-2">
                    <div class="logo">
                        <a href="/index">
                            <img src="/images/logo/logo.png" alt="logo images">
                        </a>
                    </div>
                </div>
                <div class="col-lg-8 d-none d-lg-block">
                    <nav class="mainmenu__nav">
                        <ul class="meninmenu d-flex justify-content-start">
                            <li><a href="/index">主页</a></li>
                            <li><a href="#">书单</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-md-8 col-sm-8 col-5 col-lg-2">
                    <ul class="header__sidebar__right d-flex justify-content-end align-items-center">
                        <li class="shop_search"><a class="search__active" href="#"></a></li>
                        <li class="wishlist"><a href="#"></a></li>
                        <c:if test="${!empty sessionScope.user}">
                            <li class="shopcart"><a class="cartbox_active" href="/bookstore/shoppingcart"><span
                                    class="product_qun" id="cart-number">${sessionScope.shoppingNumbers}</span></a>
                                <!-- Start Shopping Cart -->
                                <!-- End Shopping Cart -->
                            </li>
                        </c:if>
                        <li class="setting__bar__icon"><a class="setting__active" href="#"></a>
                            <div class="searchbar__content setting__block">
                                <div class="content-inner">
                                    <div class="switcher-currency">
                                        <c:choose>
                                            <c:when test="${!empty sessionScope.user}">
                                                <strong class="label switcher-label">
                                                    <span>${user.userName}</span>
                                                </strong>
                                                <div class="switcher-options">
                                                    <div class="switcher-currency-trigger">
                                                        <div class="setting__menu">
                                                            <span><a href="#">我的账户</a></span>
                                                            <span><a href="/bookstore/shoppingcart">我的购物车</a></span>
                                                            <span><a href="#">退出</a></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:when>
                                            <c:otherwise>
                                                <span class="label switcher-label" style="font-size: 20px"><a href="/login">注册/登录</a> </span>
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- Start Mobile Menu -->
            <div class="row d-none">
                <div class="col-lg-12 d-none">
                    <nav class="mobilemenu__nav">
                        <ul class="meninmenu">
                            <li><a href="/index">主页</a></li>
                            <li><a href="#">书单</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
            <!-- End Mobile Menu -->
            <div class="mobile-menu d-block d-lg-none">
            </div>
            <!-- Mobile Menu -->
        </div>
    </header>
    <!-- //Header -->
    <!-- Start Search Popup -->
    <div class="box-search-content search_active block-bg close__top">
        <form id="search_mini_form" class="minisearch" action="#">
            <div class="field__search">
                <input type="text" placeholder="Search entire store here...">
                <div class="action">
                    <a href="#"><i class="zmdi zmdi-search"></i></a>
                </div>
            </div>
        </form>
        <div class="close__wrap">
            <span>关闭</span>
        </div>
    </div>
    <!-- End Search Popup -->
    <!-- Start Bradcaump area -->
    <div class="ht__bradcaump__area bg-image--5">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="bradcaump__inner text-center">
                        <h2 class="bradcaump-title">Shop List</h2>
                        <nav class="bradcaump-content">
                            <a class="breadcrumb_item" href="/index">主页</a>
                            <span class="brd-separetor">/</span>
                            <span class="breadcrumb_item active">Shop List</span>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Bradcaump area -->
    <!-- Start Shop Page -->
    <div class="page-shop-sidebar left--sidebar bg--white section-padding--lg">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-12 order-2 order-lg-1 md-mt-40 sm-mt-40">
                    <div class="shop__sidebar">
                        <aside class="wedget__categories poroduct--cat">
                            <h3 class="wedget__title">产品类别</h3>
                            <ul>
                                <c:forEach items="${bookCats}" var="cat">
                                    <li><a href="/shop-list?catId=${cat.id}">${cat.name}</a></li>
                                </c:forEach>
                            </ul>
                        </aside>
                        <aside class="wedget__categories poroduct--tag">
                            <h3 class="wedget__title">产品标签</h3>
                            <ul>
                                <c:if test="${empty deepCats}">图书</c:if>
                                <c:if test="${!empty deepCats}">
                                    <c:forEach items="${deepCats}" var="cat">
                                        ${cat.name}
                                    </c:forEach>
                                </c:if>
                            </ul>
                        </aside>
                        <aside class="wedget__categories sidebar--banner">
                            <img src="/images/others/banner_left.jpg" alt="banner images">
                            <div class="text">
                                <h2>new products</h2>
                                <h6>save up to <br> <strong>40%</strong>off</h6>
                            </div>
                        </aside>
                    </div>
                </div>
                <div class="col-lg-9 col-12 order-1 order-lg-2">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="shop__list__wrapper d-flex flex-wrap flex-md-nowrap justify-content-between">
                                <div class="shop__list nav justify-content-center" role="tablist">
                                    <a class="nav-item nav-link" data-toggle="tab" href="#nav-grid" role="tab"><i
                                            class="fa fa-th"></i></a>
                                    <a class="nav-item nav-link active" data-toggle="tab" href="#nav-list" role="tab"><i
                                            class="fa fa-list"></i></a>
                                </div>
                                <p>Showing 1–12 of 40 results</p>
                                <div class="orderby__wrapper">
                                    <span>排序</span>
                                    <select class="shot__byselect">
                                        <option>系统推荐</option>
                                        <option>价格实惠</option>
                                        <option>店家信用</option>
                                        <option>月售数量</option>
                                        <option>最短时间</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab__container">
                        <div class="shop-grid tab-pane fade" id="nav-grid" role="tabpanel">
                            <div class="row">
                                <!-- Start Single Product -->
                                <c:forEach items="${books.list}" var="book">
                                    <div class="col-lg-4 col-md-4 col-sm-6 col-12">
                                        <div class="product">
                                            <div class="product__thumb">
                                                <a class="first__img" href="/single-product/${book.id}"><img
                                                        src="${book.bookImg}" alt="product image"></a>
                                                <a class="second__img animation1" href="/single-product/${book.id}"><img
                                                        src="${book.bookImg}" alt="product image"></a>
                                                <div class="new__box">
                                                    <span class="new-label">
                                                        <c:choose>
                                                            <c:when test="${book.bookIndentification == 1}">
                                                                最新上架
                                                            </c:when>
                                                            <c:when test="${book.bookIndentification == 2}">
                                                                火热售卖
                                                            </c:when>
                                                            <c:when test="${book.bookIndentification == 3}">
                                                                强力推荐
                                                            </c:when>
                                                            <c:otherwise>
                                                                经典著作
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </span>
                                                </div>
                                                <ul class="prize position__right__bottom d-flex">
                                                    <li>￥${book.bookPrice}</li>
                                                    <li class="old_prize">￥${book.bookPrice}</li>
                                                </ul>
                                                <div class="action">
                                                    <div class="actions_inner">
                                                        <ul class="add_to_links">
                                                            <li><a class="cart" href="#"></a></li>
                                                            <li><a class="wishlist" href="#"></a></li>
                                                            <li><a class="compare" href="compare.jsp"></a></li>
                                                            <li><a data-toggle="modal" title="Quick View"
                                                                   class="quickview modal-view detail-link"
                                                                   href="#productmodal"></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="product__content">
                                                <h4><a href="/single-product/${book.id}">${book.bookName}</a></h4>
                                                <ul class="rating d-flex">
                                                    <li class="on"><i class="fa fa-star-o"></i></li>
                                                    <li class="on"><i class="fa fa-star-o"></i></li>
                                                    <li class="on"><i class="fa fa-star-o"></i></li>
                                                    <li><i class="fa fa-star-o"></i></li>
                                                    <li><i class="fa fa-star-o"></i></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                                <!-- End Single Product -->
                            </div>
                            <br />
                            <br />
                            <ul class="wn__pagination">
                                <c:if test="${!books.isFirstPage}">
                                    <button class="btn btn-info"><a href="/shop-list?pageNum=${books.pageNum - 1}">上一页</a></button>
                                </c:if>
                                <c:if test="${!books.isLastPage}">
                                    <button class="btn btn-info"><a href="/shop-list?pageNum=${books.pageNum + 1}">下一页</a></button>
                                </c:if>
                            </ul>
                        </div>
                        <div class="shop-grid tab-pane fade show active" id="nav-list" role="tabpanel">
                            <div class="list__view__wrapper">
                                <!-- Start Single Product -->
                                <c:forEach items="${books.list}" var="book">
                                    <div class="list__view">
                                        <div class="thumb">
                                            <a class="first__img" href="/single-product/${book.id}"><img
                                                    src="${book.bookImg}"
                                                    alt="product images"></a>
                                            <a class="second__img animation1" href="/single-product/${book.id}"><img
                                                    src="${book.bookImg}" alt="product images"></a>
                                        </div>
                                        <div class="content">
                                            <h2><a href="/single-product/${book.id}">${book.bookName}</a></h2>
                                            <ul class="rating d-flex">
                                                <li class="on"><i class="fa fa-star-o"></i></li>
                                                <li class="on"><i class="fa fa-star-o"></i></li>
                                                <li class="on"><i class="fa fa-star-o"></i></li>
                                                <li class="on"><i class="fa fa-star-o"></i></li>
                                                <li><i class="fa fa-star-o"></i></li>
                                                <li><i class="fa fa-star-o"></i></li>
                                            </ul>
                                            <ul class="prize__box">
                                                <li>￥${book.bookPrice}</li>
                                                <li class="old__prize">￥${book.bookPrice}</li>
                                            </ul>
                                            <p>${book.bookDesc}</p>
                                            <ul class="cart__action d-flex">
                                                <li class="cart"><input type="hidden" value="${book.id}"/><a href="javascript:;">加入购物车</a></li>
                                                <li class="wishlist"><a href="#"></a></li>
                                                <li class="compare"><a href="#"></a></li>
                                            </ul>

                                        </div>
                                    </div>
                                </c:forEach>
                                <!-- End Single Product -->
                            </div>
                            <br/>
                            <br/>
                            <ul class="wn__pagination">
                                <c:if test="${!books.isFirstPage}">
                                    <button class="btn btn-info"><a href="/shop-list?pageNum=${books.pageNum - 1}">上一页</a></button>
                                </c:if>
                                <c:if test="${!books.isLastPage}">
                                    <button class="btn btn-info"><a href="/shop-list?pageNum=${books.pageNum + 1}">下一页</a></button>
                                </c:if>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Shop Page -->
    <!-- Footer Area -->
    <footer id="wn__footer" class="footer__area bg__cat--8 brown--color">
        <div class="footer-static-top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="footer__widget footer__menu">
                            <div class="ft__logo">
                                <a href="/index">
                                    <img src="/images/logo/3.png" alt="logo">
                                </a>
                                <p>这里有许多版本的书籍，但大多数的书籍都经历了岁月的沉淀，愿您在这里找到您满意的书籍，遨游在知识的海洋</p>
                            </div>
                            <div class="footer__content">
                                <ul class="social__net social__net--2 d-flex justify-content-center">
                                    <li><a href="#"><i class="bi bi-facebook"></i></a></li>
                                    <li><a href="#"><i class="bi bi-google"></i></a></li>
                                    <li><a href="#"><i class="bi bi-twitter"></i></a></li>
                                    <li><a href="#"><i class="bi bi-linkedin"></i></a></li>
                                    <li><a href="#"><i class="bi bi-youtube"></i></a></li>
                                </ul>
                                <ul class="mainmenu d-flex justify-content-center">
                                    <li><a href="/index">热门书籍</a></li>
                                    <li><a href="/index">畅销书作者</a></li>
                                    <li><a href="/index">折扣书籍</a></li>
                                    <li><a href="/index">愿望清单</a></li>
                                    <li><a href="/index">博客</a></li>
                                    <li><a href="/index">联系方式</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright__wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <div class="copyright">
                            <div class="copy__right__inner text-left">
                                <p>版权 &copy; 2018.公司名称版权所有.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <div class="payment text-right">
                            <img src="/images/icons/payment.png" alt=""/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- //Footer Area -->

</div>
<!-- //Main wrapper -->

<!-- JS Files -->
<script src="/js/vendor/jquery-3.2.1.min.js"></script>
<script src="/js/popper.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/plugins.js"></script>
<script src="/js/active.js"></script>
<script>
    <c:if test="${!empty sessionScope.user}">
    $(function () {
        $(".cart").click(function () {
            $.ajax({
                url: "/bookstore/getshoptocart",
                data: {
                    bookId: $(this).children().val()
                },
                type: "POST",
                success: function (data) {
                    if(data.code == 9){
                        $("#cart-number").html(data.data);
                    }else {
                        alert(data.msg);
                    }
                }
            });
        });
        $("#cart-number").click(function(){
            window.location.href = "/bookstore/shoppingcart";
        });
    });
    </c:if>
    <c:if test="${empty sessionScope.user}">
    $(function () {
        $(".cart").click(function () {
            alert("请先登录");
        });
    });
    </c:if>
</script>
</body>
</html>
