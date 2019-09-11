<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>淘金书城</title>
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
    <link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon"/>

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
    <header id="wn__header" class="header__area header__absolute sticky__header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 col-sm-6 col-6 col-lg-2">
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
                            <li><a href="/shop-list">书单</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-md-6 col-sm-6 col-6 col-lg-2">
                    <ul class="header__sidebar__right d-flex justify-content-end align-items-center">
                        <li class="shop_search"><a class="search__active" href="javascript:;"></a></li>
                        <li class="wishlist"><a href="javascript:;"></a></li>
                        <li class="shopcart"><a class="cartbox_active" href="javascript:;"><span
                                class="product_qun">3</span></a>
                            <!-- Start Shopping Cart -->
                            <div class="block-minicart minicart__active">
                                <div class="minicart-content-wrapper">
                                    <div class="micart__close">
                                        <span>关闭</span>
                                    </div>
                                    <div class="items-total d-flex justify-content-between">
                                        <span>3 小件</span>
                                        <span>购物车小计</span>
                                    </div>
                                    <div class="total_amount text-right">
                                        <span>$66.00</span>
                                    </div>
                                    <div class="mini_action checkout">
                                        <a class="checkout__btn" href="javascript:;">结账</a>
                                    </div>
                                    <div class="single__items">
                                        <div class="miniproduct">
                                            <div class="item01 d-flex">
                                                <div class="thumb">
                                                    <a href="single-product.jsp"><img src="/images/product/sm-img/1.jpg"
                                                                                      alt="product images"></a>
                                                </div>
                                                <div class="content">
                                                    <h6><a href="single-product.jsp">Voyage Yoga Bag</a></h6>
                                                    <span class="prize">$30.00</span>
                                                    <div class="product_prize d-flex justify-content-between">
                                                        <span class="qun">Qty: 01</span>
                                                        <ul class="d-flex justify-content-end">
                                                            <li><a href="javascript:;"><i
                                                                    class="zmdi zmdi-settings"></i></a></li>
                                                            <li><a href="javascript:;"><i class="zmdi zmdi-delete"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="item01 d-flex mt--20">
                                                <div class="thumb">
                                                    <a href="single-product.jsp"><img src="/images/product/sm-img/3.jpg"
                                                                                      alt="product images"></a>
                                                </div>
                                                <div class="content">
                                                    <h6><a href="single-product.jsp">Impulse Duffle</a></h6>
                                                    <span class="prize">$40.00</span>
                                                    <div class="product_prize d-flex justify-content-between">
                                                        <span class="qun">Qty: 03</span>
                                                        <ul class="d-flex justify-content-end">
                                                            <li><a href="javascript:;"><i
                                                                    class="zmdi zmdi-settings"></i></a></li>
                                                            <li><a href="javascript:;"><i class="zmdi zmdi-delete"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="item01 d-flex mt--20">
                                                <div class="thumb">
                                                    <a href="single-product.jsp"><img src="/images/product/sm-img/2.jpg"
                                                                                      alt="product images"></a>
                                                </div>
                                                <div class="content">
                                                    <h6><a href="single-product.jsp">Compete Track Tote</a></h6>
                                                    <span class="prize">$40.00</span>
                                                    <div class="product_prize d-flex justify-content-between">
                                                        <span class="qun">Qty: 03</span>
                                                        <ul class="d-flex justify-content-end">
                                                            <li><a href="javascript:;"><i
                                                                    class="zmdi zmdi-settings"></i></a></li>
                                                            <li><a href="javascript:;"><i class="zmdi zmdi-delete"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mini_action cart">
                                        <a class="cart__btn" href="javascript:;">View and edit cart</a>
                                    </div>
                                </div>
                            </div>
                            <!-- End Shopping Cart -->
                        </li>
                        <li class="setting__bar__icon"><a class="setting__active" href="javascript:;"></a>
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
                                                            <span><a href="javascript:;">我的账户</a></span>
                                                            <span><a href="/bookstore/shoppingcart">我的购物车</a></span>
                                                            <span><a href="javascript:;">退出</a></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:when>
                                            <c:otherwise>
                                                <span class="label switcher-label" style="font-size: 20px"><a
                                                        href="/login">注册/登录</a> </span>
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="mobile-menu d-block d-lg-none">
            </div>
            <!-- Mobile Menu -->
        </div>
    </header>
    <!-- //Header -->
    <!-- Start Search Popup -->
    <div class="brown--color box-search-content search_active block-bg close__top">
        <form id="search_mini_form" class="minisearch" action="#">
            <div class="field__search">
                <input type="text" placeholder="请输入您想要的书籍名称...">
                <div class="action">
                    <a href="javascript:;"><i class="zmdi zmdi-search"></i></a>
                </div>
            </div>
        </form>
        <div class="close__wrap">
            <span>关闭</span>
        </div>
    </div>
    <!-- End Search Popup -->
    <!-- Start Slider area -->
    <div class="slider-area brown__nav slider--15 slide__activation slide__arrow01 owl-carousel owl-theme">
        <!-- Start Single Slide -->
        <div class="slide animation__style10 bg-image--1 fullscreen align__center--left">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="slider__content">
                            <div class="contentbox">
                                <h2>买 <span>您</span></h2>
                                <h2>最爱的 <span>宝贝</span></h2>
                                <h2>请来<span>这里 </span></h2>
                                <a class="shopbtn" href="javascript:;">立即购买</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Single Slide -->
        <!-- Start Single Slide -->
        <div class="slide animation__style10 bg-image--7 fullscreen align__center--left">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="slider__content">
                            <div class="contentbox">
                                <h2>买 <span>您 </span></h2>
                                <h2>最喜爱的 <span>宝贝 </span></h2>
                                <h2>请来 <span>这里 </span></h2>
                                <a class="shopbtn" href="javascript:;">立即购买</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Single Slide -->
    </div>
    <!-- End Slider area -->
    <!-- Start BEst Seller Area -->
    <section class="wn__product__area brown--color pt--80  pb--30">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section__title text-center">
                        <h2 class="title__be--2">新 <span class="color--theme">品</span></h2>
                        <p>这里有您喜爱的最新宝贝</p>
                    </div>
                </div>
            </div>
            <!-- Start Single Tab Content -->
            <div class="furniture--4 border--round arrows_style owl-carousel owl-theme row mt--50">
                <!-- Start Single Product -->
                <c:forEach items="${newBooks}" var="book">
                    <div class="product product__style--3">
                        <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                            <div class="product__thumb">
                                <a class="first__img" href="/single-product/${book.id}"><img src="${book.bookImg}"
                                                                                             alt="product image"></a>
                                <a class="second__img animation1" href="/single-product/${book.id}"><img
                                        src="${book.bookImg}"
                                        alt="product image"></a>
                                <div class="hot__box">
                                    <span class="hot-label">NEWEST BOOK</span>
                                </div>
                            </div>
                            <div class="product__content content--center">
                                <h4><a href="/single-product/${book.id}">${book.bookName}</a></h4>
                                <ul class="prize d-flex">
                                    <li>￥${book.bookPrice}</li>
                                    <li class="old_prize">￥${book.bookPrice}</li>
                                </ul>
                                <div class="action">
                                    <div class="actions_inner">
                                        <ul class="add_to_links">
                                            <li><a class="cart" href="javascript:;"><i class="bi bi-shopping-bag4"></i></a>
                                            </li>
                                            <li><a class="wishlist" href="javascript:;"><i
                                                    class="bi bi-shopping-cart-full shop-cart">
                                                <input type="hidden" value="${book.id}"/>
                                            </i></a></li>
                                            <li><a class="compare" href="javascript:;"><i class="bi bi-heart-beat"></i></a>
                                            </li>
                                            <li><a data-toggle="modal" title="Quick View"
                                                   class="quickview modal-view detail-link" href="#productmodal"><i
                                                    class="bi bi-search"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product__hover--content">
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
                    </div>
                </c:forEach>
            </div>
            <!-- End Single Tab Content -->
        </div>
    </section>
    <!-- Start BEst Seller Area -->
    <!-- Start NEwsletter Area -->
    <section class="wn__newsletter__area bg-image--2">
        <div class="container">
            <div class="row">
                <div class="col-lg-7 offset-lg-5 col-md-12 col-12 ptb--150">
                    <div class="section__title text-center">
                        <h2>跟我们一起</h2>
                    </div>
                    <div class="newsletter__block text-center">
                        <p>现在就订阅我们的时事通讯，了解最新的收藏、最新的产品介绍和独家优惠.</p>
                        <form action="#">
                            <div class="newsletter__box">
                                <input type="email" placeholder="输入您的电子邮件">
                                <button>订阅</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End NEwsletter Area -->
    <!-- Start Best Seller Area -->
    <section class="wn__bestseller__area bg--white pt--80  pb--30">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section__title text-center">
                        <h2 class="title__be--2">全部 <span class="color--theme">书籍</span></h2>
                        <p>这里有您所需求的全部宝贝</p>
                    </div>
                </div>
            </div>
            <div class="row mt--50">
                <div class="col-md-12 col-lg-12 col-sm-12">
                    <div class="product__nav nav justify-content-center" role="tablist">
                        <%--<c:forEach items="${bookCat}" var="cat" varStatus="sta">--%>
                        <%--<a class="nav-item nav-link active" data-toggle="tab" href="#nav-all"--%>
                        <%--role="tab">${cat.name}</a>--%>
                        <%--</c:forEach>--%>
                        <a class="nav-item nav-link active" data-toggle="tab" href="#nav-all"
                           role="tab">${bookCat[0].name}</a>
                        <a class="nav-item nav-link" data-toggle="tab" href="#nav-biographic"
                           role="tab">${bookCat[1].name}</a>
                        <a class="nav-item nav-link" data-toggle="tab" href="#nav-adventure"
                           role="tab">${bookCat[2].name}</a>
                        <a class="nav-item nav-link" data-toggle="tab" href="#nav-children"
                           role="tab">${bookCat[3].name}</a>
                        <a class="nav-item nav-link" data-toggle="tab" href="#nav-cook"
                           role="tab">${bookCat[4].name}</a>
                    </div>
                </div>
            </div>
            <div class="tab__container mt--60">
                <!-- Start Single Tab Content -->
                <div class="row single__tab tab-pane fade show active" id="nav-all" role="tabpanel">
                    <div class="product__indicator--4 arrows_style owl-carousel owl-theme">
                        <c:forEach items="${cat1}" var="book" step="2" varStatus="stu">
                            <div class="single__product">
                                <!-- Start Single Product -->
                                <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                    <div class="product product__style--3">
                                        <div class="product__thumb">
                                            <a class="first__img" href="/single-product/${book.id}"><img
                                                    src="${book.bookImg}"
                                                    alt="product image"></a>
                                            <a class="second__img animation1" href="/single-product/${book.id}"><img
                                                    src="${book.bookImg}" alt="product image"></a>
                                            <div class="hot__box">
                                                <span class="hot-label">
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
                                        </div>
                                        <div class="product__content content--center content--center">
                                            <h4><a href="/single-product/${book.id}">${book.bookName}</a></h4>
                                            <ul class="prize d-flex">
                                                <li>￥${book.bookPrice}</li>
                                                <li class="old_prize">￥${book.bookPrice}</li>
                                            </ul>
                                            <div class="action">
                                                <div class="actions_inner">
                                                    <ul class="add_to_links">
                                                        <li><a class="cart" href="javascript:;"><i
                                                                class="bi bi-shopping-bag4"></i></a>
                                                        </li>
                                                        <li><a class="wishlist" href="javascript:;"><i
                                                                class="bi bi-shopping-cart-full shop-cart">
                                                            <input type="hidden" value="${book.id}"/>
                                                        </i></a></li>
                                                        <li><a class="compare" href="javascript:;"><i
                                                                class="bi bi-heart-beat"></i></a>
                                                        </li>
                                                        <li><a data-toggle="modal" title="Quick View"
                                                               class="quickview modal-view detail-link"
                                                               href="#productmodal"><i class="bi bi-search"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product__hover--content">
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
                                </div>
                                <!-- Start Single Product -->
                                <c:set var="next" value="${cat1[stu.index + 1]}"/>
                                <!-- Start Single Product -->
                                <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                    <div class="product product__style--3">
                                        <div class="product__thumb">
                                            <a class="first__img" href="/single-product/${next.id}"><img
                                                    src="${next.bookImg}"
                                                    alt="product image"></a>
                                            <a class="second__img animation1" href="/single-product/${next.id}"><img
                                                    src="${next.bookImg}" alt="product image"></a>
                                            <div class="hot__box">
                                                <span class="hot-label">
                                                    <c:choose>
                                                        <c:when test="${next.bookIndentification == 1}">
                                                            最新上架
                                                        </c:when>
                                                        <c:when test="${next.bookIndentification == 2}">
                                                            火热售卖
                                                        </c:when>
                                                        <c:when test="${next.bookIndentification == 3}">
                                                            强力推荐
                                                        </c:when>
                                                        <c:otherwise>
                                                            经典著作
                                                        </c:otherwise>
                                                    </c:choose>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="product__content content--center content--center">
                                            <h4><a href="/single-product/${next.id}">${next.bookName}</a></h4>
                                            <ul class="prize d-flex">
                                                <li>￥${next.bookPrice}</li>
                                                <li class="old_prize">￥${next.bookPrice}</li>
                                            </ul>
                                            <div class="action">
                                                <div class="actions_inner">
                                                    <ul class="add_to_links">
                                                        <li><a class="cart" href="javascript:;"><i
                                                                class="bi bi-shopping-bag4"></i></a>
                                                        </li>
                                                        <li><a class="wishlist" href="javascript:;"><i
                                                                class="bi bi-shopping-cart-full shop-cart">
                                                            <input type="hidden" value="${next.id}"/>
                                                        </i></a></li>
                                                        <li><a class="compare" href="javascript:;"><i
                                                                class="bi bi-heart-beat"></i></a>
                                                        </li>
                                                        <li><a data-toggle="modal" title="Quick View"
                                                               class="quickview modal-view detail-link"
                                                               href="#productmodal"><i class="bi bi-search"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product__hover--content">
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
                                </div>
                                <!-- Start Single Product -->
                            </div>
                        </c:forEach>
                    </div>
                </div>
                <!-- End Single Tab Content -->
                <!-- Start Single Tab Content -->
                <div class="row single__tab tab-pane fade" id="nav-biographic" role="tabpanel">
                    <div class="product__indicator--4 arrows_style owl-carousel owl-theme">
                        <c:forEach items="${cat2}" var="book" step="2" varStatus="stu">
                            <div class="single__product">
                                <!-- Start Single Product -->
                                <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                    <div class="product product__style--3">
                                        <div class="product__thumb">
                                            <a class="first__img" href="/single-product/${book.id}"><img
                                                    src="${book.bookImg}"
                                                    alt="product image"></a>
                                            <a class="second__img animation1" href="/single-product/${book.id}"><img
                                                    src="${book.bookImg}" alt="product image"></a>
                                            <div class="hot__box">
                                                <span class="hot-label">
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
                                        </div>
                                        <div class="product__content content--center content--center">
                                            <h4><a href="/single-product/${book.id}">${book.bookName}</a></h4>
                                            <ul class="prize d-flex">
                                                <li>￥${book.bookPrice}</li>
                                                <li class="old_prize">￥${book.bookPrice}</li>
                                            </ul>
                                            <div class="action">
                                                <div class="actions_inner">
                                                    <ul class="add_to_links">
                                                        <li><a class="cart" href="javascript:;"><i
                                                                class="bi bi-shopping-bag4"></i></a>
                                                        </li>
                                                        <li><a class="wishlist" href="javascript:;"><i
                                                                class="bi bi-shopping-cart-full shop-cart">
                                                            <input type="hidden" value="${book.id}"/>
                                                        </i></a></li>
                                                        <li><a class="compare" href="javascript:;"><i
                                                                class="bi bi-heart-beat"></i></a>
                                                        </li>
                                                        <li><a data-toggle="modal" title="Quick View"
                                                               class="quickview modal-view detail-link"
                                                               href="#productmodal"><i class="bi bi-search"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product__hover--content">
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
                                </div>
                                <!-- Start Single Product -->
                                <c:set var="next" value="${cat2[stu.index + 1]}"/>
                                <!-- Start Single Product -->
                                <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                    <div class="product product__style--3">
                                        <div class="product__thumb">
                                            <a class="first__img" href="/single-product/${next.id}"><img
                                                    src="${next.bookImg}"
                                                    alt="product image"></a>
                                            <a class="second__img animation1" href="/single-product/${next.id}"><img
                                                    src="${next.bookImg}" alt="product image"></a>
                                            <div class="hot__box">
                                                <span class="hot-label">
                                                                                                        <c:choose>
                                                                                                            <c:when test="${next.bookIndentification == 1}">
                                                                                                                最新上架
                                                                                                            </c:when>
                                                                                                            <c:when test="${next.bookIndentification == 2}">
                                                                                                                火热售卖
                                                                                                            </c:when>
                                                                                                            <c:when test="${next.bookIndentification == 3}">
                                                                                                                强力推荐
                                                                                                            </c:when>
                                                                                                            <c:otherwise>
                                                                                                                经典著作
                                                                                                            </c:otherwise>
                                                                                                        </c:choose>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="product__content content--center content--center">
                                            <h4><a href="/single-product/${next.id}">${next.bookName}</a></h4>
                                            <ul class="prize d-flex">
                                                <li>￥${next.bookPrice}</li>
                                                <li class="old_prize">￥${next.bookPrice}</li>
                                            </ul>
                                            <div class="action">
                                                <div class="actions_inner">
                                                    <ul class="add_to_links">
                                                        <li><a class="cart" href="javascript:;"><i
                                                                class="bi bi-shopping-bag4"></i></a>
                                                        </li>
                                                        <li><a class="wishlist" href="javascript:;"><i
                                                                class="bi bi-shopping-cart-full shop-cart">
                                                            <input type="hidden" value="${next.id}"/>
                                                        </i></a></li>
                                                        <li><a class="compare" href="javascript:;"><i
                                                                class="bi bi-heart-beat"></i></a>
                                                        </li>
                                                        <li><a data-toggle="modal" title="Quick View"
                                                               class="quickview modal-view detail-link"
                                                               href="#productmodal"><i class="bi bi-search"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product__hover--content">
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
                                </div>
                                <!-- Start Single Product -->
                            </div>
                        </c:forEach>
                    </div>
                </div>
                <!-- End Single Tab Content -->
                <!-- Start Single Tab Content -->
                <div class="row single__tab tab-pane fade" id="nav-adventure" role="tabpanel">
                    <div class="product__indicator--4 arrows_style owl-carousel owl-theme">
                        <c:forEach items="${cat3}" var="book" step="2" varStatus="stu">
                            <div class="single__product">
                                <!-- Start Single Product -->
                                <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                    <div class="product product__style--3">
                                        <div class="product__thumb">
                                            <a class="first__img" href="/single-product/${book.id}"><img
                                                    src="${book.bookImg}"
                                                    alt="product image"></a>
                                            <a class="second__img animation1" href="/single-product/${book.id}"><img
                                                    src="${book.bookImg}" alt="product image"></a>
                                            <div class="hot__box">
                                                <span class="hot-label">
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
                                        </div>
                                        <div class="product__content content--center content--center">
                                            <h4><a href="/single-product/${book.id}">${book.bookName}</a></h4>
                                            <ul class="prize d-flex">
                                                <li>￥${book.bookPrice}</li>
                                                <li class="old_prize">￥${book.bookPrice}</li>
                                            </ul>
                                            <div class="action">
                                                <div class="actions_inner">
                                                    <ul class="add_to_links">
                                                        <li><a class="cart" href="javascript:;"><i
                                                                class="bi bi-shopping-bag4"></i></a>
                                                        </li>
                                                        <li><a class="wishlist" href="javascript:;"><i
                                                                class="bi bi-shopping-cart-full shop-cart">
                                                            <input type="hidden" value="${book.id}"/>
                                                        </i></a></li>
                                                        <li><a class="compare" href="javascript:;"><i
                                                                class="bi bi-heart-beat"></i></a>
                                                        </li>
                                                        <li><a data-toggle="modal" title="Quick View"
                                                               class="quickview modal-view detail-link"
                                                               href="#productmodal"><i class="bi bi-search"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product__hover--content">
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
                                </div>
                                <!-- Start Single Product -->
                                <c:set var="next" value="${cat3[stu.index + 1]}"/>
                                <!-- Start Single Product -->
                                <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                    <div class="product product__style--3">
                                        <div class="product__thumb">
                                            <a class="first__img" href="/single-product/${next.id}"><img
                                                    src="${next.bookImg}"
                                                    alt="product image"></a>
                                            <a class="second__img animation1" href="/single-product/${next.id}"><img
                                                    src="${next.bookImg}" alt="product image"></a>
                                            <div class="hot__box">
                                                <span class="hot-label">
                                                                                                        <c:choose>
                                                                                                            <c:when test="${next.bookIndentification == 1}">
                                                                                                                最新上架
                                                                                                            </c:when>
                                                                                                            <c:when test="${next.bookIndentification == 2}">
                                                                                                                火热售卖
                                                                                                            </c:when>
                                                                                                            <c:when test="${next.bookIndentification == 3}">
                                                                                                                强力推荐
                                                                                                            </c:when>
                                                                                                            <c:otherwise>
                                                                                                                经典著作
                                                                                                            </c:otherwise>
                                                                                                        </c:choose>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="product__content content--center content--center">
                                            <h4><a href="/single-product/${next.id}">${next.bookName}</a></h4>
                                            <ul class="prize d-flex">
                                                <li>￥${next.bookPrice}</li>
                                                <li class="old_prize">￥${next.bookPrice}</li>
                                            </ul>
                                            <div class="action">
                                                <div class="actions_inner">
                                                    <ul class="add_to_links">
                                                        <li><a class="cart" href="javascript:;"><i
                                                                class="bi bi-shopping-bag4"></i></a>
                                                        </li>
                                                        <li><a class="wishlist" href="javascript:;"><i
                                                                class="bi bi-shopping-cart-full shop-cart">
                                                            <input type="hidden" value="${next.id}"/>
                                                        </i></a></li>
                                                        <li><a class="compare" href="javascript:;"><i
                                                                class="bi bi-heart-beat"></i></a>
                                                        </li>
                                                        <li><a data-toggle="modal" title="Quick View"
                                                               class="quickview modal-view detail-link"
                                                               href="#productmodal"><i class="bi bi-search"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product__hover--content">
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
                                </div>
                                <!-- Start Single Product -->
                            </div>
                        </c:forEach>
                    </div>
                </div>
                <!-- End Single Tab Content -->
                <!-- Start Single Tab Content -->
                <div class="row single__tab tab-pane fade" id="nav-children" role="tabpanel">
                    <div class="product__indicator--4 arrows_style owl-carousel owl-theme">
                        <c:forEach items="${cat4}" var="book" step="2" varStatus="stu">
                            <div class="single__product">
                                <!-- Start Single Product -->
                                <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                    <div class="product product__style--3">
                                        <div class="product__thumb">
                                            <a class="first__img" href="/single-product/${book.id}"><img
                                                    src="${book.bookImg}"
                                                    alt="product image"></a>
                                            <a class="second__img animation1" href="/single-product/${book.id}"><img
                                                    src="${book.bookImg}" alt="product image"></a>
                                            <div class="hot__box">
                                                <span class="hot-label">
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
                                        </div>
                                        <div class="product__content content--center content--center">
                                            <h4><a href="/single-product/${book.id}">${book.bookName}</a></h4>
                                            <ul class="prize d-flex">
                                                <li>￥${book.bookPrice}</li>
                                                <li class="old_prize">￥${book.bookPrice}</li>
                                            </ul>
                                            <div class="action">
                                                <div class="actions_inner">
                                                    <ul class="add_to_links">
                                                        <li><a class="cart" href="javascript:;"><i
                                                                class="bi bi-shopping-bag4"></i></a>
                                                        </li>
                                                        <li><a class="wishlist" href="javascript:;"><i
                                                                class="bi bi-shopping-cart-full shop-cart">
                                                            <input type="hidden" value="${book.id}"/>
                                                        </i></a></li>
                                                        <li><a class="compare" href="javascript:;"><i
                                                                class="bi bi-heart-beat"></i></a>
                                                        </li>
                                                        <li><a data-toggle="modal" title="Quick View"
                                                               class="quickview modal-view detail-link"
                                                               href="#productmodal"><i class="bi bi-search"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product__hover--content">
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
                                </div>
                                <!-- Start Single Product -->
                                <c:set var="next" value="${cat4[stu.index + 1]}"/>
                                <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                    <div class="product product__style--3">
                                        <div class="product__thumb">
                                            <a class="first__img" href="/single-product/${next.id}"><img
                                                    src="${next.bookImg}"
                                                    alt="product image"></a>
                                            <a class="second__img animation1" href="/single-product/${next.id}"><img
                                                    src="${next.bookImg}" alt="product image"></a>
                                            <div class="hot__box">
                                                <span class="hot-label">
                                                                                                        <c:choose>
                                                                                                            <c:when test="${next.bookIndentification == 1}">
                                                                                                                最新上架
                                                                                                            </c:when>
                                                                                                            <c:when test="${next.bookIndentification == 2}">
                                                                                                                火热售卖
                                                                                                            </c:when>
                                                                                                            <c:when test="${next.bookIndentification == 3}">
                                                                                                                强力推荐
                                                                                                            </c:when>
                                                                                                            <c:otherwise>
                                                                                                                经典著作
                                                                                                            </c:otherwise>
                                                                                                        </c:choose>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="product__content content--center content--center">
                                            <h4><a href="/single-product/${next.id}">${next.bookName}</a></h4>
                                            <ul class="prize d-flex">
                                                <li>￥${next.bookPrice}</li>
                                                <li class="old_prize">￥${next.bookPrice}</li>
                                            </ul>
                                            <div class="action">
                                                <div class="actions_inner">
                                                    <ul class="add_to_links">
                                                        <li><a class="cart" href="javascript:;"><i
                                                                class="bi bi-shopping-bag4"></i></a>
                                                        </li>
                                                        <li><a class="wishlist" href="javascript:;"><i
                                                                class="bi bi-shopping-cart-full shop-cart">
                                                            <input type="hidden" value="${next.id}"/>
                                                        </i></a></li>
                                                        <li><a class="compare" href="javascript:;"><i
                                                                class="bi bi-heart-beat"></i></a>
                                                        </li>
                                                        <li><a data-toggle="modal" title="Quick View"
                                                               class="quickview modal-view detail-link"
                                                               href="#productmodal"><i class="bi bi-search"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product__hover--content">
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
                                </div>
                                <!-- Start Single Product -->
                            </div>
                        </c:forEach>
                    </div>
                </div>
                <!-- End Single Tab Content -->
                <!-- Start Single Tab Content -->
                <div class="row single__tab tab-pane fade" id="nav-cook" role="tabpanel">
                    <div class="product__indicator--4 arrows_style owl-carousel owl-theme">
                        <c:forEach items="${cat5}" var="book" step="2" varStatus="stu">
                            <div class="single__product">
                                <!-- Start Single Product -->
                                <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                    <div class="product product__style--3">
                                        <div class="product__thumb">
                                            <a class="first__img" href="/single-product/${book.id}"><img
                                                    src="${book.bookImg}"
                                                    alt="product image"></a>
                                            <a class="second__img animation1" href="/single-product/${book.id}"><img
                                                    src="${book.bookImg}" alt="product image"></a>
                                            <div class="hot__box">
                                                <span class="hot-label">
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
                                        </div>
                                        <div class="product__content content--center content--center">
                                            <h4><a href="/single-product/${book.id}">${book.bookName}</a></h4>
                                            <ul class="prize d-flex">
                                                <li>￥${book.bookPrice}</li>
                                                <li class="old_prize">￥${book.bookPrice}</li>
                                            </ul>
                                            <div class="action">
                                                <div class="actions_inner">
                                                    <ul class="add_to_links">
                                                        <li><a class="cart" href="javascript:;"><i
                                                                class="bi bi-shopping-bag4"></i></a>
                                                        </li>
                                                        <li><a class="wishlist" href="javascript:;"><i
                                                                class="bi bi-shopping-cart-full shop-cart">
                                                            <input type="hidden" value="${book.id}"/>
                                                        </i></a></li>
                                                        <li><a class="compare" href="javascript:;"><i
                                                                class="bi bi-heart-beat"></i></a>
                                                        </li>
                                                        <li><a data-toggle="modal" title="Quick View"
                                                               class="quickview modal-view detail-link"
                                                               href="#productmodal"><i class="bi bi-search"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product__hover--content">
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
                                </div>

                                <!-- Start Single Product -->
                                <c:set var="next" value="${cat5[stu.index + 1]}"/>
                                <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                    <div class="product product__style--3">
                                        <div class="product__thumb">
                                            <a class="first__img" href="/single-product/${next.id}"><img
                                                    src="${next.bookImg}"
                                                    alt="product image"></a>
                                            <a class="second__img animation1" href="/single-product/${next.id}"><img
                                                    src="${next.bookImg}" alt="product image"></a>
                                            <div class="hot__box">
                                                <span class="hot-label">
                                                                                                        <c:choose>
                                                                                                            <c:when test="${next.bookIndentification == 1}">
                                                                                                                最新上架
                                                                                                            </c:when>
                                                                                                            <c:when test="${next.bookIndentification == 2}">
                                                                                                                火热售卖
                                                                                                            </c:when>
                                                                                                            <c:when test="${next.bookIndentification == 3}">
                                                                                                                强力推荐
                                                                                                            </c:when>
                                                                                                            <c:otherwise>
                                                                                                                经典著作
                                                                                                            </c:otherwise>
                                                                                                        </c:choose>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="product__content content--center content--center">
                                            <h4><a href="/single-product/${next.id}">${next.bookName}</a></h4>
                                            <ul class="prize d-flex">
                                                <li>￥${next.bookPrice}</li>
                                                <li class="old_prize">￥${next.bookPrice}</li>
                                            </ul>
                                            <div class="action">
                                                <div class="actions_inner">
                                                    <ul class="add_to_links">
                                                        <li><a class="cart" href="javascript:;"><i
                                                                class="bi bi-shopping-bag4"></i></a>
                                                        </li>
                                                        <li><a class="wishlist" href="javascript:;"><i
                                                                class="bi bi-shopping-cart-full shop-cart">
                                                            <input type="hidden" value="${next.id}"/>
                                                        </i></a></li>
                                                        <li><a class="compare" href="javascript:;"><i
                                                                class="bi bi-heart-beat"></i></a>
                                                        </li>
                                                        <li><a data-toggle="modal" title="Quick View"
                                                               class="quickview modal-view detail-link"
                                                               href="#productmodal"><i class="bi bi-search"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product__hover--content">
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
                                </div>
                                <!-- Start Single Product -->
                            </div>
                        </c:forEach>
                    </div>
                </div>
                <!-- End Single Tab Content -->
            </div>
        </div>
    </section>
    <!-- Start BEst Seller Area -->
    <!-- Start Recent Post Area -->
    <section class="wn__recent__post bg--gray ptb--80">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section__title text-center">
                        <h2 class="title__be--2">我们的 <span class="color--theme">博客</span></h2>
                        <p>这里有我们最新的各种资讯</p>
                    </div>
                </div>
            </div>
            <div class="row mt--50">
                <div class="col-md-6 col-lg-4 col-sm-12">
                    <div class="post__itam">
                        <div class="content">
                            <h3><a href="blog-details.jsp">《法兰克福书》的国际活动 </a></h3>
                            <p>我们自豪地宣布法兰克福新闻的第一版。</p>
                            <div class="post__time">
                                <span class="day">Dec 06, 18</span>
                                <div class="post-meta">
                                    <ul>
                                        <li><a href="javascript:;"><i class="bi bi-love"></i>72</a></li>
                                        <li><a href="javascript:;"><i class="bi bi-chat-bubble"></i>27</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 col-sm-12">
                    <div class="post__itam">
                        <div class="content">
                            <h3><a href="blog-details.jsp">阅读有很多好处</a></h3>
                            <p>这里能找到所有你需要的信息来保证你的体验；找到所有你需要的信息来保证你的体验；找到你所需要的所有的信息。</p>
                            <div class="post__time">
                                <span class="day">Mar 08, 18</span>
                                <div class="post-meta">
                                    <ul>
                                        <li><a href="javascript:;"><i class="bi bi-love"></i>72</a></li>
                                        <li><a href="javascript:;"><i class="bi bi-chat-bubble"></i>27</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 col-sm-12">
                    <div class="post__itam">
                        <div class="content">
                            <h3><a href="blog-details.jsp">伦敦书展将挤满令人兴奋的东西 </a></h3>
                            <p>伦敦书展是全球范围内的权利谈判市场。今年的伦敦书展是全球范围内的权利谈判市场。</p>
                            <div class="post__time">
                                <span class="day">Nov 11, 18</span>
                                <div class="post-meta">
                                    <ul>
                                        <li><a href="javascript:;"><i class="bi bi-love"></i>72</a></li>
                                        <li><a href="javascript:;"><i class="bi bi-chat-bubble"></i>27</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Recent Post Area -->
    <!-- Best Sale Area -->
    <section class="best-seel-area pt--80 pb--60">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section__title text-center pb--50">
                        <h2 class="title__be--2">最好的 <span class="color--theme">卖家 </span></h2>
                        <p>这里有您最爱的书籍，最良心的卖家</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="slider center">
            <c:forEach items="${hotBooks}" var="book">
                <!-- Single product start -->
                <div class="product product__style--3">
                    <div class="product__thumb">
                        <a class="first__img" href="/single-product/${book.id}"><img src="${book.bookImg}"
                                                                                     alt="product image"></a>
                    </div>
                    <div class="product__content content--center">
                        <div class="action">
                            <div class="actions_inner">
                                <ul class="add_to_links">
                                    <li><a class="cart" href="javascript:;"><i class="bi bi-shopping-bag4"></i></a></li>
                                    <li><a class="wishlist" href="javascript:;"><i
                                            class="bi bi-shopping-cart-full shop-cart">
                                        <input type="hidden" value="${book.id}"/>
                                    </i></a></li>
                                    <li><a class="compare" href="javascript:;"><i class="bi bi-heart-beat"></i></a></li>
                                    <li><a data-toggle="modal" title="Quick View"
                                           class="quickview modal-view detail-link" href="#productmodal"><i
                                            class="bi bi-search"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="product__hover--content">
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
                <!-- Single product end -->
            </c:forEach>
        </div>
    </section>
    <!-- Best Sale Area Area -->
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
                                    <li><a href="javascript:;"><i class="bi bi-facebook"></i></a></li>
                                    <li><a href="javascript:;"><i class="bi bi-google"></i></a></li>
                                    <li><a href="javascript:;"><i class="bi bi-twitter"></i></a></li>
                                    <li><a href="javascript:;"><i class="bi bi-linkedin"></i></a></li>
                                    <li><a href="javascript:;"><i class="bi bi-youtube"></i></a></li>
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
                                <p>版权 &copy; 2018公司名称版权所有.</p>
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
    <!-- QUICKVIEW PRODUCT -->
    <div id="quickview-wrapper">
        <!-- Modal -->
        <div class="modal fade" id="productmodal" tabindex="-1" role="dialog">
            <div class="modal-dialog modal__container" role="document">
                <div class="modal-content">
                    <div class="modal-header modal__header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                    </div>
                    <div class="modal-body">
                        <div class="modal-product">
                            <!-- Start product images -->
                            <div class="product-images">
                                <div class="main-image images">
                                    <img alt="big images" src="/images/product/big-img/1.jpg">
                                </div>
                            </div>
                            <!-- end product images -->
                            <div class="product-info">
                                <h1>Simple Fabric Bags</h1>
                                <div class="rating__and__review">
                                    <ul class="rating">
                                        <li><span class="ti-star"></span></li>
                                        <li><span class="ti-star"></span></li>
                                        <li><span class="ti-star"></span></li>
                                        <li><span class="ti-star"></span></li>
                                        <li><span class="ti-star"></span></li>
                                    </ul>
                                    <div class="review">
                                        <a href="javascript:;">4 customer reviews</a>
                                    </div>
                                </div>
                                <div class="price-box-3">
                                    <div class="s-price-box">
                                        <span class="new-price">$17.20</span>
                                        <span class="old-price">$45.00</span>
                                    </div>
                                </div>
                                <div class="quick-desc">
                                    Designed for simplicity and made from high quality materials. Its sleek geometry and
                                    material combinations creates a modern look.
                                </div>
                                <div class="select__color">
                                    <h2>Select color</h2>
                                    <ul class="color__list">
                                        <li class="red"><a title="Red" href="javascript:;">Red</a></li>
                                        <li class="gold"><a title="Gold" href="javascript:;">Gold</a></li>
                                        <li class="orange"><a title="Orange" href="javascript:;">Orange</a></li>
                                        <li class="orange"><a title="Orange" href="javascript:;">Orange</a></li>
                                    </ul>
                                </div>
                                <div class="select__size">
                                    <h2>Select size</h2>
                                    <ul class="color__list">
                                        <li class="l__size"><a title="L" href="javascript:;">L</a></li>
                                        <li class="m__size"><a title="M" href="javascript:;">M</a></li>
                                        <li class="s__size"><a title="S" href="javascript:;">S</a></li>
                                        <li class="xl__size"><a title="XL" href="javascript:;">XL</a></li>
                                        <li class="xxl__size"><a title="XXL" href="javascript:;">XXL</a></li>
                                    </ul>
                                </div>
                                <div class="social-sharing">
                                    <div class="widget widget_socialsharing_widget">
                                        <h3 class="widget-title-modal">Share this product</h3>
                                        <ul class="social__net social__net--2 d-flex justify-content-start">
                                            <li class="facebook"><a href="javascript:;" class="rss social-icon"><i
                                                    class="zmdi zmdi-rss"></i></a></li>
                                            <li class="linkedin"><a href="javascript:;" class="linkedin social-icon"><i
                                                    class="zmdi zmdi-linkedin"></i></a></li>
                                            <li class="pinterest"><a href="javascript:;"
                                                                     class="pinterest social-icon"><i
                                                    class="zmdi zmdi-pinterest"></i></a></li>
                                            <li class="tumblr"><a href="javascript:;" class="tumblr social-icon"><i
                                                    class="zmdi zmdi-tumblr"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="addtocart-btn">
                                    <a href="javascript:;">Add to cart</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END QUICKVIEW PRODUCT -->
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
            $(".shop-cart").click(function () {
                $.ajax({
                    url: "/bookstore/getshoptocart",
                    data: {
                        bookId: $(this).children().val()
                    },
                    type: "POST",
                    success: function (data) {
                        alert(data.data.length);
                        var bookdata = JSON.parse(data.data);
                        var cartSize = bookdata.length;
                        // alert(cartSize);
                    }
                });
            });
        });
    </c:if>
    <c:if test="${empty sessionScope.user}">
        $(function () {
            $(".shop-cart").click(function () {
                window.location.href = "/login";
            });
        });
    </c:if>
</script>
</body>
</html>
