<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>登录</title>
    <link rel="stylesheet" href="/css/auth.css">
    <link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon" />
</head>

<body>
<div class="lowin lowin-purple">
    <div class="lowin-brand">
        <a href="/index"> <img src="/images/timg.jpg" alt="logo"></a>
    </div>
    <div class="lowin-wrapper">
        <div class="lowin-box lowin-login">
            <div class="lowin-box-inner">
                <form>
                    <p id="login-title">欢迎访问本书城</p>
                    <div class="lowin-group">
                        <label>账户 <a href="#" class="login-back-link">登录?</a></label>
                        <input type="email" autocomplete="email" name="email" class="lowin-input" id="myEmail">
                    </div>
                    <div class="lowin-group password-group">
                        <label>密码 <a href="#" class="forgot-link">忘记密码?</a></label>
                        <input type="password" name="password" autocomplete="current-password" class="lowin-input" id="myPass">
                    </div>
                    <input type="button" class="lowin-btn login-btn" value="登录" id="login">

                    <div class="text-foot">
                        Don't have an account? <a href="" class="register-link">注册</a>
                    </div>
                </form>
            </div>
        </div>

        <div class="lowin-box lowin-register">
            <div class="lowin-box-inner">
                <form>
                    <p id="regist-title">创建账户</p>
                    <div class="lowin-group">
                        <label>账户名</label>
                        <input type="text" name="name" autocomplete="name" class="lowin-input" id="regist-name">
                    </div>
                    <div class="lowin-group">
                        <label>邮箱</label>
                        <input type="email" autocomplete="email" name="email" class="lowin-input" id="regist-email">
                    </div>
                    <div class="lowin-group">
                        <label>密码</label>
                        <input type="password" name="password" autocomplete="current-password" class="lowin-input" id="regist-pass">
                    </div>
                    <input class="lowin-btn" type="button" value="注册" id="regist-bt">
                    <div class="text-foot">
                        Already have an account? <a href="" class="login-link">登录</a>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <footer class="lowin-footer">
        Design By <a href="http://fb.me/itskodinger">@淘金小组</a>
    </footer>
</div>

<script src="/js/vendor/jquery-3.2.1.min.js"></script>
<script src="/js/auth.js"></script>
<script>
    Auth.init({
        login_url: '/login/doLogin',
        forgot_url: '/forgot_pass'
    });
    $(function () {
        $("#login").click(function () {
            $.ajax({
                url: "/login/doLogin",
                data: {
                    email: $("#myEmail").val(),
                    password: $("#myPass").val()
                },
                type: "POST",
                success: function (data) {
                    if (data.code == 4){
                        window.location.href = "/index";
                    }else {
                        $("#login-title").html(data.msg);
                        $("#login-title").attr("style", "color: red");
                    }
                }
            });
        });

        $("#regist-bt").click(function () {
            $.ajax({
                url: "/login/register",
                data: {
                    email: $("#regist-email").val(),
                    name: $("#regist-name").val(),
                    password: $("#regist-pass").val()
                },
                type: "POST",
                success: function (data) {
                    if (data.code == 7){
                        $("#regist-title").html(data.msg + "，正在跳转");
                        $("#regist-title").attr("style", "color: blue");
                        setTimeout(function () {
                            window.location.reload();
                        }, 3000);
                    }else {
                        $("#regist-title").html(data.msg);
                        $("#regist-title").attr("style", "color: red");
                    }
                }
            });
        });
    })
</script>
</body>
</html>