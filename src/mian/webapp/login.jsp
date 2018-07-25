<%@ page language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
    <base href="<%=basePath%>">
    <title></title>
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
    <link rel="canonical" href="https://www.wjx.cn/login.aspx">
    <link rel="alternate" media="only screen and(max-width: 640px)" href="https://www.wjx.cn/mobile/login.aspx">
    <meta name="applicable-device" content="pc">

    <script src="js/zhezhao.js" type="text/javascript"></script>

    <link rel="stylesheet" type="text/css" href="css/login.css" media="all">
</head>
<body id="body1" class="fp-viewing">
<form name="form" method="post" action="user/login" id="form">
    <div>
        <input name="__VIEWSTATE" id="__VIEWSTATE"
               value="/wEPDwUJNzQzNjY2MDEwZBgBBR5fX0NvbnRyb2xzUmVxdWlyZVBvc3RCYWNrS2V5X18WAQUKUmVtZW1iZXJNZRppCRKv4euLWlb13uig5syGhGMV"
               type="hidden">
    </div>

    <div>

        <input name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="C2EE9ABB" type="hidden">
        <input name="__EVENTVALIDATION" id="__EVENTVALIDATION"
               value="/wEdAAZDauF9KsVVsB7XO9dhBGbjR1LBKX1P1xh290RQyTesRRHS0B3lkDg8wcTlzQR027xcCvP9YJ59uTpXZUTciHnZJx1yNK0PnRor9mt9az+5BdypqPqLgdpphNzIPTIm7G4NlXfZAv3rDDHACRBTlaZM5Q+l5w=="
               type="hidden">
    </div>
    <div class="fullpage-wrapper">
        <div class="full-head clearfix">
            <a href="https://www.wjx.cn/" id="sojumplogo" class="logo pull-left">
                <img src="images/logo.png" alt="问卷星_不止问卷调查/在线考试">
            </a>
            <div class="member pull-right">
                <a href="register.jsp" class="btn btn-default btn-lg pull-left register " rel="nofollow">注册</a>
                <a href="index.jsp" class="btn btn-default btn-lg pull-left back-wjx">返回首页</a>
            </div>
        </div>
        <div class="fullpage-main"></div>
        <div id="divSojump" class="validate-box">
            <fieldset class="validate-wrapper">
                <h1 id="hlogintxt" class="validate-caption">问卷星登录</h1>
                <ul>
                    <li>
                        <label for="User" class="icon user-icon"></label>
                        <input value="${cookie.cookieId.value}" name="userLoginId" id="UserName" placeholder="用户名/Email/手机"
                               class="validate-input user-name" onfocus="if(value=='用户名/Email/手机'){value='';}"
                               onblur="if(value==''){value='用户名/Email/手机'}" type="text" style="width: 80%;">
                        <span class="mb-4" style="color: red"> ${msgId}</span>
                        <input name="hfUserName"
                               id="hfUserName"
                               type="hidden">
                        <div class="divclear"></div>
                    </li>
                    <li>
                        <label for="password" class="icon password-icon"></label>
                        <input value="${cookie.cookiePwd.value}" name="userLoginPwd" id="Password" placeholder="请输入登录密码" class="validate-input"
                               type="password" style="width: 80%;">
                        <span class="mb-4" style="color: red"> ${msgPwd}</span>
                    </li>
                    <li>
                        <label for="checkCode" class="icon password-icon"></label>
                        <input name="checkCode" id="checkCode" placeholder="请输入验证码"
                               class="validate-input" type="checkCode"
                               style="width: 40%;">
                        <img src="user/setPicture"/>
                        <span class="mb-4" style="color: red"> ${msgCode}</span>
                    </li>


                </ul>
                <div id="trRemember" class="remember-box">
                        <span class="automatic-box pull-left">
                            <span class="login_checkbox centertxt"><input id="RememberMe" name="rememberMe" value="yes"
                                                                          type="checkbox"></span>下次自动登录
                        </span>
                    <a id="PasswordRecoveryLink" class="get-back pull-right"
                       href="https://www.wjx.cn/register/forgetpassword.aspx">忘记用户名/密码？</a>
                </div>
            </fieldset>
            <fieldset class="submit-wrapper" style="text-align: center; margin-top: 20px;">
                <input name="LoginButton" value="登 录" id="LoginButton" class="submitbutton"
                       onmouseover="this.className='submitbutton submitbutton_hover';"
                       onmouseout="this.className='submitbutton';" style="color: White;" type="submit">
                <span style="color: red; line-height: 28px;">
                        </span>
                <a href="register.jsp" id="hrefRegister" title="只需２０秒，就可完成注册"
                   class="register-now">立即注册</a>
                <div class="third-party-login">
                    <div class="third-party-txt">
                        <em class="word" style="color: rgb(136, 136, 136);">第三方登录</em>
                    </div>
                    <div class="penguin-box">
                            <span style="display: inline-block; margin-right: 20px;">
                                <a href="https://www.wjx.cn/connectnew.aspx" class="icon penguin-icon"></a>
                                <p>QQ登录</p>

                            </span>
                        <span style="display: inline-block;">
                              <a href="https://www.wjx.cn/weixinlogin.aspx" class="icon wxpenguin-icon"></a>
                               <p>微信登录</p>
                            </span>
                        <div style="clear: both;"></div>
                    </div>
                </div>
                <script type="text/javascript">
                    var UserName = document.getElementById("UserName");
                    var hfUserName = document.getElementById("hfUserName");
                    var Password = document.getElementById("Password");
                    var LoginButton = document.getElementById("LoginButton");
                    var txtCode = document.getElementById("txtCode");
                    var hrefGetCode = document.getElementById("hrefGetCode");

                    function getCode() {
                        if (!UserName.value) {
                            alert("请先输入用户名");
                            UserName.focus();
                            return;
                        }
                        txtCode.focus();
                        PDF_launch("/register/getcode.aspx?username=" + encodeURIComponent(hfUserName.value), 500, 150, codeCallBack);
                    }

                    function codeCallBack() {
                        txtCode.focus();
                    }

                    String.prototype.dbc2sbc = function () {
                        return this.replace(/[\uff01-\uff5e]/g, function (a) {
                            return String.fromCharCode(a.charCodeAt(0) - 65248);
                        }).replace(/\u3000/g, " ");
                    }
                    UserName.onkeypress = Password.onkeypress = function (e) {
                        e = e || window.event;
                        if (e && e.keyCode == 13) {
                            LoginButton.click();
                        }
                    }
                    UserName.onblur = UserName.onchange = function () {
                        var str = this.value;
                        var newstr = str.dbc2sbc();
                        if (str != newstr) this.value = newstr;
                        UserName.value = newstr;
                    }
                    if (txtCode) txtCode.onkeydown = UserName.onkeydown;
                    if (UserName.value) Password.focus();
                    else UserName.onblur();
                </script>
            </fieldset>
        </div>

    </div>
</form>


</body>