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

        .mycontent ul li {
            padding-bottom: 40px;
        }

        .mycontent input {
            width: 198px;
            height: 32px;
            border-radius: 5px;
            background: #EFEFEF;
        }

        .mycontent img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            margin-right: 20px
        }

        .close {
            /*float: right;*/
            font-size: 21px;
            font-weight: 700;
            line-height: 1;
            color: #000;
            text-shadow: 0 1px 0 #fff;
            opacity: .2;
            filter: alpha(opacity=20);
        }

        .pc-bind-phone-modal {
            width: 418px;
            height: 380px;
            margin: 0 auto;
            top: 25%;
        }

        .pc-bind-phone-modal .tips {
            color: #999999;
            font-size: 13px;
            font-weight: 500;
            line-height: 18px;
            margin-bottom: 14px;
        }

        .pc-bind-phone-modal .tips a {
            color: #3194D0;
        }

        .setting .main input[type=email], .setting .main input[type=text] {
            padding: 5px 10px;
            font-size: 15px;
            border: 1px solid #c8c8c8;
            border-radius: 4px;
            background-color: hsla(0, 0%, 71%, .1);
        }

        .mobile-bind form .input-prepend input {
            width: 100%;
            height: 50px;
            line-height: 50px;
            margin-bottom: 0;
            padding: 4px 12px 4px 35px;
            border: 1px solid #c8c8c8;
            border-radius: 4px;
            background-color: #fff;
            vertical-align: middle;
            font-size: 14px;
            background-color: hsla(0, 0%, 71%, .1);
        }

        .mobile-bind .overseas input {
            padding: 4px 12px 4px 35px !important;
            border-bottom: none !important;
            border-radius: 4px 4px 0 0 !important;
        }


        .mobile-bind form .input-prepend i {
            position: absolute;
            top: 14px;
            left: 10px;
            font-size: 18px;
            color: #969696;
        }

        #user-phone {
            background: url("/images/icons/phone.png") left no-repeat;
            background-size: 24px 26px;
            padding-left: 20px;
        }

        .mobile-bind form .security-up-code input {
            padding: 4px 12px 4px 35px !important;
            border-radius: 0 0 4px 4px !important;
        }

        input::-webkit-input-placeholder {
            padding-left: 10%;
        }

        #user-msg, #user-email-code {
            background: url("/images/icons/msgcode.png") left no-repeat;
            background-size: 24px 26px;
            padding-left: 20px;
        }

        #user-email {
            background: url("/images/icons/email.png") left no-repeat;
            background-size: 24px 26px;
            padding-left: 20px;
        }

        .btn-in-resend {
            background-color: #3194d0;
            font-size: 13px;
            width: 100px;
            height: 36px;
            border-radius: 20px;
            text-align: center;
            line-height: 36px;
            position: absolute;
            left: 70%;
            bottom: 33%;
        }

        .email-send {
            bottom: 41%;
        }

        .mobile-reset-password {
            background: #F6F6F6;
            margin-bottom: 15px;
        }

        a {
            cursor: pointer;
        }

        .sign-in-button {
            width: 80%;
            padding: 15px auto;
            margin: 0 auto;
            font-size: 18px;
            text-align: center;
            border: none;
            border-radius: 25px;
            color: #fff;
            height: 36px;
            line-height: 36px;
            background: #3194d0;
            cursor: pointer;
            outline: none;
            display: block;
            clear: both;
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
                <li class="li1"><img src="/images/icons/caidan.png"><a href="#">基础设置</a></li>
                <li><img src="/images/icons/dingdan.png"><a href="/bookstore/userpage/order">我的订单</a></li>
                <li><img src="/images/icons/myaddress.png"><a href="/bookstore/userpage/address">我的地址</a></li>
            </ul>
        </div>
        <div class="col-lg-8 mycontent">
            <ul>
                <li>
                    <c:if test="${empty sessionScope.user.picture}">
                        <img id="head-icon" src="/images/head-icons/head_icon.jpg">
                    </c:if>
                    <c:if test="${!empty sessionScope.user}">
                        <img id="head-icon" src="${user.picture}">
                    </c:if>
                    <form id="upload-form" enctype="multipart/form-data" style="display: none">
                        <input id="fileId" type="file" name="file"
                               accept="image/jpg,image/jpeg,image/png,image/PNG"/>
                    </form>
                    <button class="btn btn-success" id="file-btn" style="margin-left: 20px">修改头像</button>
                    <span id="img-check"></span>
                </li>
                <li>
                    <span style="padding-right: 80px;font-size: 15px">昵称</span>
                    <input type="text" value="${user.userName}" id="user-name"/>
                    <span id="name-check"></span>
                </li>
                <hr style="width: 80%"/>
                <li style="padding-top: 40px">
                    <span style="padding-right: 80px;font-size: 15px">电子邮件</span>
                    <c:if test="${!empty user.userEmail}">
                        <span style="color: #7A7A7A">${user.userEmail}</span>
                        <span id="email-check" style="margin-left: 20px;font-size: 10px;">点击修改</span>
                    </c:if>
                    <c:if test="${empty user.userEmail}">
                        <button class="btn btn-success bang-email">点击绑定</button>
                        <span id="email-check"></span>
                    </c:if>
                </li>
                <hr style="width: 80%"/>
                <li style="padding-top: 40px">
                    <span style="padding-right: 110px;font-size: 15px">手机</span>
                    <c:if test="${!empty user.userPhone}">
                        <span style="color: #7A7A7A">${user.userPhone}</span>
                        <span id="phone-check" style="margin-left: 20px;font-size: 10px;">点击修改</span>
                    </c:if>
                    <c:if test="${empty user.userPhone}">
                        <button class="btn btn-success bang-phone">点击绑定</button>
                        <span id="phone-check"></span>
                    </c:if>
                </li>
            </ul>

        </div>
    </div>

    <%--手机验证--%>
    <div class="modal pc-bind-phone-modal mobile-bind mobile-phone">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" style="font-size: 17px;font-weight: 700;color: #333;">绑定手机</h4>
                    <button type="button" data-dismiss="modal" class="close">×</button>
                </div>
                <div class="modal-body">
                    <div class="tips">根据国家法律要求，目前只支持国内手机号。绑定遇到问题？
                        <a href="#" target="_blank">点击查看帮助</a>
                    </div>
                    <form class="mobile-reset-password">
                        <div class="input-prepend restyle">
                            <div class="overseas">
                                <input type="text" placeholder="手机号" id="user-phone">
                            </div>
                            <div class="input-prepend security-up-code">
                                <input type="text" placeholder="短信验证码" id="user-msg">
                                <div class="btn-in-resend"><a style="color: white" id="send-msg">发送验证码</a></div>
                            </div>
                        </div>
                    </form>

                    <a class="sign-in-button phone-submit" style="color: white">确认</a>
                </div> <!---->
            </div>
        </div>
    </div>

    <%--邮箱验证--%>
    <div class="modal pc-bind-phone-modal mobile-bind mobile-email">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" style="font-size: 17px;font-weight: 700;color: #333;">绑定邮箱</h4>
                    <button type="button" data-dismiss="modal" class="close">×</button>
                </div>
                <div class="modal-body">
                    <form class="mobile-reset-password">
                        <div class="input-prepend restyle">
                            <div class="overseas">
                                <input type="text" placeholder="邮箱号" id="user-email">
                            </div>
                            <div class="input-prepend security-up-code">
                                <input type="text" placeholder="邮箱验证码" id="user-email-code">
                                <div class="btn-in-resend email-send"><a style="color: white" id="send-email">发送验证码</a></div>
                            </div>
                        </div>
                    </form>

                    <a class="sign-in-button email-submit" style="color: white">确认</a>
                </div> <!---->
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

        var userName = "${user.userName}";

        var time = 60;
        function getRandomCode() {
            if (time === 0) {
                time = 60;
                $('#send-msg').attr("disabled",false).css("pointer-events","auto");
                $('#send-msg').html("发送验证码");
                $('#send-email').attr("disabled",false).css("pointer-events","auto");
                $('#send-email').html("发送验证码");
                return;
            } else {
                time--;
                $('#send-msg').html(time);
                $('#send-email').html(time);
            }
            setTimeout(function () {
                getRandomCode();
            }, 1000);
        }

        //用户头像提交
        $("#file-btn").click(function () {
            var click = $("#fileId").click();
            $('#fileId').on('change', function () {//当chooseImage的值改变时，执行此函数
                var filePath = $(this).val(), //获取到input的value，里面是文件的路径
                    fileFormat = filePath.substring(filePath.lastIndexOf(".")).toLowerCase(),
                    src = window.URL.createObjectURL(this.files[0]); //转成可以在本地预览的格式

                // 检查是否是图片
                if (!fileFormat.match(/.png|.jpg|.jpeg/)) {
                    alert('上传错误,文件格式必须为：png/jpg/jpeg');
                    return;
                } else {
                    $.ajax({
                        type: 'POST',
                        url: '/bookstore/userpage/uploadimg',
                        data: new FormData($("#upload-form")[0]),
                        async: false,
                        cache: false,
                        processData: false,
                        contentType: false,
                        success: function (data) {
                            if (data.code == 17) {
                                $('#head-icon').attr('src', src);
                                $('#img-check').html(data.msg);
                                $('#img-check').attr("style", "margin-left: 20px;font-size: 10px;color: blue")
                            } else {
                                $('#img-check').html(data.msg);
                                $('#img-check').attr("style", "margin-left: 20px;font-size: 10px;color: red")
                            }
                        }
                    });
                }
            });
        });
        //用户名提交
        $("#user-name").blur(function () {
            if ($(this).val() != userName) {
                $.ajax({
                    type: "POST",
                    url: "/bookstore/userpage/username",
                    data: {
                        userName: $(this).val()
                    },
                    success: function (data) {
                        if (data.code == 19) {
                            $("#name-check").html(data.msg);
                            $("#name-check").attr("style", "margin-left: 20px;font-size: 10px;color: blue")
                        } else {
                            $("#name-check").html(data.msg);
                            $("#name-check").attr("style", "margin-left: 20px;font-size: 10px;color: red")
                        }
                    }
                })
            }
        });

        //点击展示出绑定手机的画面
        $(".bang-phone").click(function () {
            $(".mobile-phone").modal();
        });

        $("#phone-check").click(function () {
            $(".mobile-phone").modal();
        });

        //发送短信验证码
        $("#send-msg").click(function () {
            var regMobilePhone = new RegExp(/^[1][3,4,5,7,8,9][0-9]{9}$/);
            var phone = $("#user-phone").val();
            if (regMobilePhone.test(phone)) {
                $.ajax({
                    type: "POST",
                    url: "/bookstore/userpage/vertifyphone",
                    data: {
                        phone: phone
                    },
                    success: function (data) {
                        if (data.code == 26) {
                            $('#send-msg').attr("disabled", true).css("pointer-events", "none");
                            getRandomCode();
                        }else {
                            alert(data.msg);
                        }
                    }
                })
            }else {
                alert("手机号码不合格");
            }
        });

        //验证短信验证码
        $(".phone-submit").click(function () {
            var regMobilePhone = new RegExp(/^1[34578]\d{9}$/);
            var phone = $("#user-phone").val();
            if (regMobilePhone.test(phone)) {
                $.ajax({
                    type: "POST",
                    url: "/bookstore/userpage/phone",
                    data: {
                        phone: phone,
                        code: $("#user-msg").val()
                    },
                    success: function (data) {
                        if (data.code === 28) {
                            window.location.reload();
                        }else {
                            alert(data.msg);
                        }
                    }
                })
            }
        });

        //展开邮箱验证填写框
        $("#email-check").click(function () {
            $(".mobile-email").modal();
        });
        $(".bang-email").click(function () {
            $(".mobile-email").modal();
        });

        //邮箱验证码发送
        $("#send-email").click(function () {
            var regMobilePhone = new RegExp(/\w[-\w.+]*@([A-Za-z0-9][-A-Za-z0-9]+\.)+[A-Za-z]{2,14}/);
            var email = $("#user-email").val();
            if (regMobilePhone.test(email)) {
                $.ajax({
                    type: "POST",
                    url: "/bookstore/userpage/vertifyemail",
                    data: {
                        email: email
                    },
                    success: function (data) {
                        $('#send-email').attr("disabled", true).css("pointer-events", "none");
                        getRandomCode();
                        if (data.code !== 31) {
                            alert(data.msg);
                        }
                    }
                })
            }else {
                alert("邮箱号码不合格");
            }
        });

        //验证邮箱验证码
        $(".email-submit").click(function () {
            var regMobilePhone = new RegExp(/\w[-\w.+]*@([A-Za-z0-9][-A-Za-z0-9]+\.)+[A-Za-z]{2,14}/);
            var email = $("#user-email").val();
            if (regMobilePhone.test(email)) {
                $.ajax({
                    type: "POST",
                    url: "/bookstore/userpage/email",
                    data: {
                        email: email,
                        code: $("#user-email-code").val()
                    },
                    success: function (data) {
                        if (data.code === 28) {
                            window.location.reload();
                        }else {
                            alert(data.msg);
                        }
                    }
                })
            }
        });
    })
</script>
</body>
</html>
