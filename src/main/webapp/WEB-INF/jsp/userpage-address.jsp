<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>个人中心</title>
    <!-- Stylesheets -->
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/plugins.css">
    <link rel="stylesheet" href="/css/style.css">

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
            padding-top: 30px;
            padding-left: 50px;
        }

        .modal-body input {
            margin: 0 auto;
            width: 80%;
        }

        .myAddress {
            text-align: center;
            background: #FBFFAE;
            width: 70%;
            height: 40px;
            margin: 0 auto;
            border-radius: 10px;
            margin-bottom: 10px;
        }

        .address-name {
            float: left;
            padding: 8px;
        }

        .address-phone {
            float: left;
            padding: 8px;
        }

        .address-address {
            float: left;
            margin: 8px;
        }

        .address-edit {
            float: right;
            margin: 8px;
            line-height: 70%;
            width: 25px;
            height: 25px
        }

        #btn_add {
            margin-top: 20px;
            margin-left: 40%;
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
                <li><img src="/images/icons/dingdan.png"><a href="/bookstore/userpage/order">我的订单</a></li>
                <li class="li1"><img src="/images/icons/myaddress.png"><a href="#">我的地址</a></li>
            </ul>
        </div>
        <div class="col-lg-8 mycontent">

            <div class="my-content">
                <h6>我的地址：</h6>
                <c:forEach items="${userAddress}" var="address">
                    <div class="myAddress">
                        <c:if test="${address.isDefault == 1}">
                                                    <span style="font-weight: bold" class="address-name">
                            <span class="badge badge-danger" style="margin-right: 5px">默认</span>${address.receiverName}</span>
                        </c:if>
                        <c:if test="${address.isDefault == 0}">
                            <span style="font-weight: bold" class="address-name">${address.receiverName}</span>
                        </c:if>
                        <span style="color: #9e9e9e" class="address-phone">${address.receiverPhone}</span>
                        <span class="address-address">${address.receiverAddress}</span>
                        <input type="hidden" class="address-id" value="${address.addressId}" />
                        <img src="/images/icons/edit.png" alt="修改" class="address-edit">
                        <img src="/images/icons/delete.png" alt="删除" class="address-delete address-edit"/>
                    </div>
                </c:forEach>
            </div>

            <button id="btn_add" class="btn btn-primary">新增地址</button>
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="myModalLabel">新增</h4>
                        </div>
                        <div class="modal-body">
                            <form>
                                <div class="form-group">
                                    <label for="txt_departmentname" style="font-weight: bold">收件人姓名：</label>
                                    <input type="text" name="receiverName" class="form-control" id="txt_departmentname"
                                           placeholder="收件人姓名">
                                </div>
                                <hr/>
                                <div class="form-group" style="margin-top: 10px">
                                    <label for="txt_parentdepartment" style="font-weight: bold">收件人电话：</label>
                                    <input type="text" name="receiverPhone" class="form-control"
                                           id="txt_parentdepartment"
                                           placeholder="收件人电话">
                                </div>
                                <hr/>
                                <div class="form-group" style="margin-top: 10px">
                                    <label for="txt_departmentlevel" style="font-weight: bold">收件人地址：</label>
                                    <input type="text" name="receiverAddress" class="form-control"
                                           id="txt_departmentlevel"
                                           placeholder="收件人地址">
                                </div>
                                <hr/>
                                <div class="my-checkbox" style="margin-top: 10px">
                                    <span style="font-weight: bold">是否设置为默认地址：</span>
                                    <label><input name="isDefault" type="radio" value="1"
                                                  style="width: 15px;height: 15px;margin-right: 10px;margin-left: 10px"/>是
                                    </label>
                                    <label><input name="isDefault" type="radio" value="0" checked
                                                  style="width: 15px;height: 15px;margin-right: 10px;margin-left: 10px"/>否
                                    </label>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                            <button type="button" id="btn_submit" class="btn btn-primary">保存</button>
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

<script>
    $(function () {
        //展示填写地址的页面
        $("#btn_add").click(function () {
            $('#myModal').modal();
        });

        //保存地址并提交
        $("#btn_submit").click(function () {
            // $('#myModal').modal('hide');
            var name = $("input[name='receiverName']").val().trim();
            var phone = $("input[name='receiverPhone']").val().trim();
            var address = $("input[name='receiverAddress']").val().trim();
            var isDefault = $("input[name='isDefault']:checked").val().trim();
            var regMobilePhone = new RegExp(/^1[34578]\d{9}$/);

            if (!regMobilePhone.test(phone)) {
                alert("手机号码格式有误，请重新输入");
            }
            if (regMobilePhone.test(phone) && name !== '' && phone !== '' && address !== '' && isDefault !== '') {
                $.ajax({
                    type: "POST",
                    url: "/bookstore/userpage/address/insertAddress",
                    data: {
                        receiverName: name,
                        receiverPhone: phone,
                        receiverAddress: address,
                        isDefault: isDefault
                    },
                    success: function (data) {
                        if (data.code == 20){
                            window.location.reload();
                        }else {
                            alert(data.msg);
                        }
                    }
                });
            }else {
                alert("请填写完整内容");
            }
        });

        //删除地址
        $(".address-delete").click(function () {
            $.ajax({
                type: "POST",
                url: "/bookstore/userpage/address/deleteAddress",
                data: {
                    addressId: $(this).parent().find("input").val()
                },
                success: function (data) {
                    if (data.code == 21) {
                        window.location.reload();
                    }else {
                        alert(data.msg);
                    }
                }
            })
        });
    })
</script>
</body>
</html>
