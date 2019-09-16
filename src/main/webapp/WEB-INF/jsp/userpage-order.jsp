<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>个人中心</title>
    <!-- Stylesheets -->
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/plugins.css">
    <link rel="stylesheet" href="/css/style.css">
    <link href="https://cdn.bootcss.com/twitter-bootstrap/3.0.1/css/bootstrap-theme.css" rel="stylesheet">

    <!-- Cusom css -->
    <link rel="stylesheet" href="/css/custom.css">
    <link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon"/>

    <!-- Modernizer js -->
    <script src="/js/vendor/modernizr-3.5.0.min.js"></script>

    <style>
        .choise {
            margin-top: 30px;
        }

        .choise li {
            height: 52px;
            width: 240px;
            float: right;
            line-height: 52px;
            font-size: 15px;
            border-radius: 10px;
        }

        .choise li img {
            width: 30px;
            height: 30px;
            margin-right: 15px;
            line-height: 52px;
        }

        .li1 {
            background: #EFEFEF;
        }

        .mycontent {
            margin-left: auto;
            padding-top: 10px;
            padding-left: 10px;
        }

        .myTitle {
            background: #9e9e9e;
            line-height: 30px;
            text-align: center;
        }

        .title-content {
            text-align: center;
            padding-top: 5px;
            padding-bottom: 5px;
        }

        .econtent{
            padding-top: 1%;
        }

        .title-content img{
            height: 50px;
            width: 40px;
        }

        .panel {
            margin-top: 5px;
            margin-bottom: 5px;
        }
    </style>
</head>
<body>
<%--Header--%>
<div class="wrapper" id="wrapper" style="background: #b8daff">
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
                        <li class="wishlist"><a href="#"></a></li>
                        <li class="shopcart"><a href="/bookstore/shoppingcart"><span
                                class="product_qun" id="cart-number">${sessionScope.shoppingNumbers}</span></a>
                        </li>
                        <li class="setting__bar__icon">
                            <c:if test="${empty sessionScope.user.picture}">
                                <a class="setting__active" href="javascript:;"
                                   style="background-image: url('/images/head-icons/head_icon.jpg')"></a>
                            </c:if>
                            <c:if test="${!empty sessionScope.user}">
                                <a class="setting__active" href="javascript:;"
                                   style="background-image: url('${sessionScope.user.picture}')"></a>
                            </c:if>
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
                                                            <span><a href="#">退出</a></span>
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
        </div>
    </header>
    <!-- //Header -->
</div>
<%--Header END--%>
<div style="margin-top: 90px" class="container-fluid">
    <div class="row">
        <div class="col-lg-4 caidan">
            <ul class="choise">
                <li><img src="/images/icons/caidan.png"><a href="/bookstore/userpage">基础设置</a></li>
                <li class="li1"><img src="/images/icons/dingdan.png"><a href="#">我的订单</a></li>
                <li><img src="/images/icons/myaddress.png"><a href="/bookstore/userpage/address">我的地址</a> </li>
            </ul>
        </div>
        <div class="col-lg-8 mycontent">
            <div class="container mycontent">
                <div class="row clearfix">
                    <div class="col-md-12 column">
                        <div class="panel-group" id="panel-911108">
                            <div class="myTitle row">
                                <div class="col-lg-2">
                                    订单编号
                                </div>
                                <div class="col-lg-1">
                                    数量
                                </div>
                                <div class="col-lg-1">
                                    金额
                                </div>
                                <div class="col-lg-2">
                                    时间
                                </div>
                                <div class="col-lg-1">
                                    收件人
                                </div>
                                <div class="col-lg-2">
                                    电话
                                </div>
                                <div class="col-lg-3">
                                    地址
                                </div>
                            </div>
                            <c:forEach items="${userOrder}" var="order">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <a class="panel-title collapsed" data-toggle="collapse" data-parent="#panel-911108" href="#panel-element-${order.orderForm.orderId}">
                                        <div class="title-content row">
                                            <div class="col-lg-2">
                                                ${order.orderForm.orderId}
                                            </div>
                                            <div class="col-lg-1">
                                                ${order.orderForm.allNumber}
                                            </div>
                                            <div class="col-lg-1">
                                                ￥${order.orderForm.allCost}
                                            </div>
                                            <div class="col-lg-2">
                                                <fmt:formatDate value="${order.orderForm.createTime}" pattern="yyyy-MM-dd HH:mm" />
                                            </div>
                                            <div class="col-lg-1">
                                                ${order.orderForm.address.receiverName}
                                            </div>
                                            <div class="col-lg-2">
                                                ${order.orderForm.address.receiverPhone}
                                            </div>
                                            <div class="col-lg-3">
                                                ${order.orderForm.address.receiverAddress}
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div id="panel-element-${order.orderForm.orderId}" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <c:forEach items="${order.orderDetails}" var="orderDetail">
                                        <div class="title-content row">
                                            <div class="col-lg-3">
                                                <img src="${orderDetail.bookInfo.bookImg}" />
                                            </div>
                                            <div class="col-lg-3 econtent">
                                                <span><a href="/single-product/${orderDetail.bookInfo.id}">${orderDetail.bookInfo.bookName}</a></span>
                                            </div>
                                            <div class="col-lg-3 econtent">
                                                <span>x ${orderDetail.bookNumber}</span>
                                            </div>
                                            <div class="col-lg-3 econtent">
                                                <span>￥ ${orderDetail.bookPrice}</span>
                                            </div>
                                        </div>
                                        <hr />
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="/js/vendor/jquery-3.2.1.min.js"></script>
<script src="/js/carts.js"></script>
<script src="/js/popper.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/plugins.js"></script>
<script src="/js/active.js"></script>
</body>
</html>
