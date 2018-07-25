<%@ page language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="img/favicon1.ico" rel="shortcut icon" type="image/x-icon">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>
        创建投票
    </title>


    <script src="js/analytics1.js" async="" type="text/javascript"></script>
    <script src="js/modernizr1-2.8.3.js"></script>

    <link rel="stylesheet" type="text/css" href="css/index2.css" media="all">
</head>
<body class="right-sb">


<div class="container">


    <!-- Start Header -->
    <header class="header-wrap clearfix">
        <div class="slicknav_menu"><a href="#" aria-haspopup="true" tabindex="0"
                                      class="slicknav_btn slicknav_collapsed"><span class="slicknav_menutxt">MENU</span><span
                class="slicknav_icon"><span class="slicknav_icon-bar"></span><span
                class="slicknav_icon-bar"></span><span class="slicknav_icon-bar"></span></span></a>
            <nav role="menu" aria-hidden="true" style="display: none;" class="slicknav_nav slicknav_hidden">
                <div class="menu-navigation-container">
                    <ul class="menu">

                        <li class="slicknav_collapsed slicknav_parent"><a href="#" role="menuitem" aria-haspopup="true"
                                                                          tabindex="-1" class="slicknav_item"><a
                                class="username" href="https://www.toutoupiao.com/Account" title="管理">lk9630</a>
                            <span class="slicknav_arrow">►</span></a>
                            <ul aria-hidden="true" style="display: none;" role="menu" class="sub-menu slicknav_hidden">
                                <li><a tabindex="-1" role="menuitem" href="https://www.toutoupiao.com/AddVote">创建投票</a>
                                </li>
                                <li><a tabindex="-1" role="menuitem" href="https://www.toutoupiao.com/AddPost">发表新帖</a>
                                </li>
                                <li><a tabindex="-1" role="menuitem" href="https://www.toutoupiao.com/MyList">我的菜单</a>
                                </li>
                                <li>
                                    <form action="https://www.toutoupiao.com/User/LogOff" method="post"><input
                                            name="__RequestVerificationToken"
                                            value="3OZt5QXPzELBwo31ppKFfNVkMRhO8eVkgTN136c7-y_qr5cQ0fRvUmAIE8zt85aWpAOKQ5aBUqc2ij_2j9hdg7xMttvj3FJp2WzOPPXjuI98C-StpvQgAqHqMZpK91zP0"
                                            type="hidden">
                                        <a href="javascript:document.getElementById('logoutForm').submit()">注销</a>
                                    </form>
                                </li>
                            </ul>
                        </li>

                        <li><a role="menuitem" href="https://www.toutoupiao.com/Help">帮助</a></li>
                    </ul>
                </div>
            </nav>
        </div>
        <div class="logo" role="banner">
            <a href="https://www.toutoupiao.com/" title="投票网" rel="home">
                <div class="logo-text">
                    <h1 class="logo-name">投票网</h1>
                </div>
            </a>
        </div>
        <nav class="main-nav clearfix">
            <div class="menu-navigation-container">
                <ul id="menu-navigation" class="menu">

                    <li><a class="username" href="https://www.toutoupiao.com/Account" title="管理">lk9630</a>
                        <ul class="sub-menu">
                            <li><a href="https://www.toutoupiao.com/AddVote">创建投票</a></li>
                            <li><a href="https://www.toutoupiao.com/AddPost">发表新帖</a></li>
                            <li><a href="https://www.toutoupiao.com/MyList">我的菜单</a></li>
                            <li>
                                <form id="logoutForm" action="https://www.toutoupiao.com/User/LogOff" method="post">
                                    <input name="__RequestVerificationToken"
                                           value="3OZt5QXPzELBwo31ppKFfNVkMRhO8eVkgTN136c7-y_qr5cQ0fRvUmAIE8zt85aWpAOKQ5aBUqc2ij_2j9hdg7xMttvj3FJp2WzOPPXjuI98C-StpvQgAqHqMZpK91zP0"
                                           type="hidden">
                                    <a href="javascript:document.getElementById('logoutForm').submit()">注销</a>
                                </form>
                            </li>
                        </ul>
                    </li>

                    <li><a href="https://www.toutoupiao.com/Help">帮助</a></li>
                </ul>
            </div>
        </nav>
    </header>
    <!-- End Header -->

    <div class="content-section clearfix">

        <div id="main-content" class="content">
            <form action="https://www.toutoupiao.com/AddVote" method="post" onsubmit="return ValidateVote()"><input
                    name="__RequestVerificationToken"
                    value="B9CQhrwu8rWk1fgGNzddZMYvbsheySNp9_4FTQY_itDaBfFix_6pt3QBOaitTYH5-EJN3ghAK-uomOPYyLRwvdlqkadmqEZzaRfwYBxAQOTVSfv79PjVg6w4BKz89EVZ0"
                    type="hidden">
                <article class="loop-container content-margin clearfix">
                    <header class="page-title-wrap">
                        <h1 class="page-title">创建投票</h1>
                    </header>
                    <div class="validation-summary-valid" data-valmsg-summary="true">
                        <ul>
                            <li style="display: none;"></li>
                        </ul>
                    </div>
                    <div class="entry-content clearfix">
                        <p>
                            <label for="VoteName">投票标题</label><br>
                            <input data-val="true" data-val-length="投票标题 必须至少包含 1 个字符，最多包含 200 个字符。"
                                   data-val-length-max="200" data-val-length-min="1" data-val-required="投票标题 不能为空"
                                   id="VoteName" name="VoteName" value="" type="text">
                            <span class="field-validation-valid" data-valmsg-for="VoteName"
                                  data-valmsg-replace="true"></span>
                        </p>
                        <p>
                            <input class="content_button" value="添加说明" type="button">
                        </p>
                        <p class="inputvote-content">
                            <div data-chars="0/2000" class="froala-box">
                                <div class="froala-editor f-basic" style="z-index: 2000;">
                                    <div class="bttn-wrapper" id="bttn-wrapper-1">
                                        <button tabindex="-1" type="button" class="fr-bttn" title="粗体" data-cmd="bold">
                                            <i class="fa fa-bold"></i></button>
                                        <div class="fr-bttn fr-dropdown ">
                                            <button tabindex="-1" type="button" data-name="fontSize" class="fr-trigger"
                                                    title="字号"><i class="fa fa-text-height"></i></button>
                                            <ul class="fr-dropdown-menu f-font-sizes">
                                                <li data-cmd="fontSize" data-val="11px"><a
                                                        href="#"><span>11px</span></a></li>
                                                <li data-cmd="fontSize" data-val="12px"><a
                                                        href="#"><span>12px</span></a></li>
                                                <li data-cmd="fontSize" data-val="13px"><a
                                                        href="#"><span>13px</span></a></li>
                                                <li data-cmd="fontSize" data-val="14px"><a
                                                        href="#"><span>14px</span></a></li>
                                                <li data-cmd="fontSize" data-val="15px"><a
                                                        href="#"><span>15px</span></a></li>
                                                <li data-cmd="fontSize" data-val="16px"><a
                                                        href="#"><span>16px</span></a></li>
                                                <li data-cmd="fontSize" data-val="17px"><a
                                                        href="#"><span>17px</span></a></li>
                                                <li data-cmd="fontSize" data-val="18px"><a
                                                        href="#"><span>18px</span></a></li>
                                                <li data-cmd="fontSize" data-val="19px"><a
                                                        href="#"><span>19px</span></a></li>
                                                <li data-cmd="fontSize" data-val="20px"><a
                                                        href="#"><span>20px</span></a></li>
                                                <li data-cmd="fontSize" data-val="21px"><a
                                                        href="#"><span>21px</span></a></li>
                                                <li data-cmd="fontSize" data-val="22px"><a
                                                        href="#"><span>22px</span></a></li>
                                                <li data-cmd="fontSize" data-val="23px"><a
                                                        href="#"><span>23px</span></a></li>
                                                <li data-cmd="fontSize" data-val="24px"><a
                                                        href="#"><span>24px</span></a></li>
                                                <li data-cmd="fontSize" data-val="25px"><a
                                                        href="#"><span>25px</span></a></li>
                                                <li data-cmd="fontSize" data-val="26px"><a
                                                        href="#"><span>26px</span></a></li>
                                                <li data-cmd="fontSize" data-val="27px"><a
                                                        href="#"><span>27px</span></a></li>
                                                <li data-cmd="fontSize" data-val="28px"><a
                                                        href="#"><span>28px</span></a></li>
                                                <li data-cmd="fontSize" data-val="29px"><a
                                                        href="#"><span>29px</span></a></li>
                                                <li data-cmd="fontSize" data-val="30px"><a
                                                        href="#"><span>30px</span></a></li>
                                                <li data-cmd="fontSize" data-val="31px"><a
                                                        href="#"><span>31px</span></a></li>
                                                <li data-cmd="fontSize" data-val="32px"><a
                                                        href="#"><span>32px</span></a></li>
                                                <li data-cmd="fontSize" data-val="33px"><a
                                                        href="#"><span>33px</span></a></li>
                                                <li data-cmd="fontSize" data-val="34px"><a
                                                        href="#"><span>34px</span></a></li>
                                                <li data-cmd="fontSize" data-val="35px"><a
                                                        href="#"><span>35px</span></a></li>
                                                <li data-cmd="fontSize" data-val="36px"><a
                                                        href="#"><span>36px</span></a></li>
                                                <li data-cmd="fontSize" data-val="37px"><a
                                                        href="#"><span>37px</span></a></li>
                                                <li data-cmd="fontSize" data-val="38px"><a
                                                        href="#"><span>38px</span></a></li>
                                                <li data-cmd="fontSize" data-val="39px"><a
                                                        href="#"><span>39px</span></a></li>
                                                <li data-cmd="fontSize" data-val="40px"><a
                                                        href="#"><span>40px</span></a></li>
                                                <li data-cmd="fontSize" data-val="41px"><a
                                                        href="#"><span>41px</span></a></li>
                                                <li data-cmd="fontSize" data-val="42px"><a
                                                        href="#"><span>42px</span></a></li>
                                                <li data-cmd="fontSize" data-val="43px"><a
                                                        href="#"><span>43px</span></a></li>
                                                <li data-cmd="fontSize" data-val="44px"><a
                                                        href="#"><span>44px</span></a></li>
                                                <li data-cmd="fontSize" data-val="45px"><a
                                                        href="#"><span>45px</span></a></li>
                                                <li data-cmd="fontSize" data-val="46px"><a
                                                        href="#"><span>46px</span></a></li>
                                                <li data-cmd="fontSize" data-val="47px"><a
                                                        href="#"><span>47px</span></a></li>
                                                <li data-cmd="fontSize" data-val="48px"><a
                                                        href="#"><span>48px</span></a></li>
                                                <li data-cmd="fontSize" data-val="49px"><a
                                                        href="#"><span>49px</span></a></li>
                                                <li data-cmd="fontSize" data-val="50px"><a
                                                        href="#"><span>50px</span></a></li>
                                                <li data-cmd="fontSize" data-val="51px"><a
                                                        href="#"><span>51px</span></a></li>
                                                <li data-cmd="fontSize" data-val="52px"><a
                                                        href="#"><span>52px</span></a></li>
                                            </ul>
                                        </div>
                                        <div class="fr-bttn fr-dropdown fr-color-picker">
                                            <button tabindex="-1" type="button" data-name="color" class="fr-trigger"
                                                    title="颜色"><i class="fa fa-tint"></i></button>
                                            <div class="fr-dropdown-menu">
                                                <div class="fr-color-set fr-foreColor" style="display: block;">
                                                    <button type="button" class="fr-color-bttn" data-val="#61BD6D"
                                                            data-cmd="color" data-param="foreColor"
                                                            style="background: rgb(97, 189, 109) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#1ABC9C"
                                                            data-cmd="color" data-param="foreColor"
                                                            style="background: rgb(26, 188, 156) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#54ACD2"
                                                            data-cmd="color" data-param="foreColor"
                                                            style="background: rgb(84, 172, 210) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#2C82C9"
                                                            data-cmd="color" data-param="foreColor"
                                                            style="background: rgb(44, 130, 201) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#9365B8"
                                                            data-cmd="color" data-param="foreColor"
                                                            style="background: rgb(147, 101, 184) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#475577"
                                                            data-cmd="color" data-param="foreColor"
                                                            style="background: rgb(71, 85, 119) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#CCCCCC"
                                                            data-cmd="color" data-param="foreColor"
                                                            style="background: rgb(204, 204, 204) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <hr>
                                                    <button type="button" class="fr-color-bttn" data-val="#41A85F"
                                                            data-cmd="color" data-param="foreColor"
                                                            style="background: rgb(65, 168, 95) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#00A885"
                                                            data-cmd="color" data-param="foreColor"
                                                            style="background: rgb(0, 168, 133) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#3D8EB9"
                                                            data-cmd="color" data-param="foreColor"
                                                            style="background: rgb(61, 142, 185) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#2969B0"
                                                            data-cmd="color" data-param="foreColor"
                                                            style="background: rgb(41, 105, 176) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#553982"
                                                            data-cmd="color" data-param="foreColor"
                                                            style="background: rgb(85, 57, 130) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#28324E"
                                                            data-cmd="color" data-param="foreColor"
                                                            style="background: rgb(40, 50, 78) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#000000"
                                                            data-cmd="color" data-param="foreColor"
                                                            style="background: rgb(0, 0, 0) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <hr>
                                                    <button type="button" class="fr-color-bttn" data-val="#F7DA64"
                                                            data-cmd="color" data-param="foreColor"
                                                            style="background: rgb(247, 218, 100) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#FBA026"
                                                            data-cmd="color" data-param="foreColor"
                                                            style="background: rgb(251, 160, 38) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#EB6B56"
                                                            data-cmd="color" data-param="foreColor"
                                                            style="background: rgb(235, 107, 86) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#E25041"
                                                            data-cmd="color" data-param="foreColor"
                                                            style="background: rgb(226, 80, 65) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#A38F84"
                                                            data-cmd="color" data-param="foreColor"
                                                            style="background: rgb(163, 143, 132) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#EFEFEF"
                                                            data-cmd="color" data-param="foreColor"
                                                            style="background: rgb(239, 239, 239) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#FFFFFF"
                                                            data-cmd="color" data-param="foreColor"
                                                            style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <hr>
                                                    <button type="button" class="fr-color-bttn" data-val="#FAC51C"
                                                            data-cmd="color" data-param="foreColor"
                                                            style="background: rgb(250, 197, 28) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#F37934"
                                                            data-cmd="color" data-param="foreColor"
                                                            style="background: rgb(243, 121, 52) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#D14841"
                                                            data-cmd="color" data-param="foreColor"
                                                            style="background: rgb(209, 72, 65) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#B8312F"
                                                            data-cmd="color" data-param="foreColor"
                                                            style="background: rgb(184, 49, 47) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#7C706B"
                                                            data-cmd="color" data-param="foreColor"
                                                            style="background: rgb(124, 112, 107) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#D1D5D8"
                                                            data-cmd="color" data-param="foreColor"
                                                            style="background: rgb(209, 213, 216) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#123456"
                                                            data-cmd="color" data-param="foreColor"
                                                            style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                                                        <i class="fa fa-eraser"></i></button>
                                                    <hr>
                                                </div>
                                                <div class="fr-color-set fr-backColor" style="display: none;">
                                                    <button type="button" class="fr-color-bttn" data-val="#61BD6D"
                                                            data-cmd="color" data-param="backColor"
                                                            style="background: rgb(97, 189, 109) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#1ABC9C"
                                                            data-cmd="color" data-param="backColor"
                                                            style="background: rgb(26, 188, 156) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#54ACD2"
                                                            data-cmd="color" data-param="backColor"
                                                            style="background: rgb(84, 172, 210) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#2C82C9"
                                                            data-cmd="color" data-param="backColor"
                                                            style="background: rgb(44, 130, 201) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#9365B8"
                                                            data-cmd="color" data-param="backColor"
                                                            style="background: rgb(147, 101, 184) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#475577"
                                                            data-cmd="color" data-param="backColor"
                                                            style="background: rgb(71, 85, 119) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#CCCCCC"
                                                            data-cmd="color" data-param="backColor"
                                                            style="background: rgb(204, 204, 204) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <hr>
                                                    <button type="button" class="fr-color-bttn" data-val="#41A85F"
                                                            data-cmd="color" data-param="backColor"
                                                            style="background: rgb(65, 168, 95) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#00A885"
                                                            data-cmd="color" data-param="backColor"
                                                            style="background: rgb(0, 168, 133) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#3D8EB9"
                                                            data-cmd="color" data-param="backColor"
                                                            style="background: rgb(61, 142, 185) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#2969B0"
                                                            data-cmd="color" data-param="backColor"
                                                            style="background: rgb(41, 105, 176) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#553982"
                                                            data-cmd="color" data-param="backColor"
                                                            style="background: rgb(85, 57, 130) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#28324E"
                                                            data-cmd="color" data-param="backColor"
                                                            style="background: rgb(40, 50, 78) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#000000"
                                                            data-cmd="color" data-param="backColor"
                                                            style="background: rgb(0, 0, 0) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <hr>
                                                    <button type="button" class="fr-color-bttn" data-val="#F7DA64"
                                                            data-cmd="color" data-param="backColor"
                                                            style="background: rgb(247, 218, 100) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#FBA026"
                                                            data-cmd="color" data-param="backColor"
                                                            style="background: rgb(251, 160, 38) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#EB6B56"
                                                            data-cmd="color" data-param="backColor"
                                                            style="background: rgb(235, 107, 86) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#E25041"
                                                            data-cmd="color" data-param="backColor"
                                                            style="background: rgb(226, 80, 65) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#A38F84"
                                                            data-cmd="color" data-param="backColor"
                                                            style="background: rgb(163, 143, 132) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#EFEFEF"
                                                            data-cmd="color" data-param="backColor"
                                                            style="background: rgb(239, 239, 239) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#FFFFFF"
                                                            data-cmd="color" data-param="backColor"
                                                            style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <hr>
                                                    <button type="button" class="fr-color-bttn" data-val="#FAC51C"
                                                            data-cmd="color" data-param="backColor"
                                                            style="background: rgb(250, 197, 28) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#F37934"
                                                            data-cmd="color" data-param="backColor"
                                                            style="background: rgb(243, 121, 52) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#D14841"
                                                            data-cmd="color" data-param="backColor"
                                                            style="background: rgb(209, 72, 65) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#B8312F"
                                                            data-cmd="color" data-param="backColor"
                                                            style="background: rgb(184, 49, 47) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#7C706B"
                                                            data-cmd="color" data-param="backColor"
                                                            style="background: rgb(124, 112, 107) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#D1D5D8"
                                                            data-cmd="color" data-param="backColor"
                                                            style="background: rgb(209, 213, 216) none repeat scroll 0% 0%;">
                                                        &nbsp;
                                                    </button>
                                                    <button type="button" class="fr-color-bttn" data-val="#123456"
                                                            data-cmd="color" data-param="backColor"
                                                            style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                                                        <i class="fa fa-eraser"></i></button>
                                                    <hr>
                                                </div>
                        <p><span class="fr-choose-color active" data-text="true" data-param="foreColor"
                                 style="width: 50%;">文字</span><span class="fr-choose-color " data-text="true"
                                                                    data-param="backColor" style="width: 50%;">背景</span>
                        </p></div>
        </div>
        <div class="fr-bttn fr-dropdown ">
            <button tabindex="-1" type="button" data-name="align" class="fr-trigger" title="对齐方式"><i
                    class="fa fa-align-left"></i></button>
            <ul class="fr-dropdown-menu f-align">
                <li data-cmd="align" data-val="justifyLeft" title="左对齐"><a href="#"><i class="fa fa-align-left"></i></a>
                </li>
                <li data-cmd="align" data-val="justifyCenter" title="居中"><a href="#"><i class="fa fa-align-center"></i></a>
                </li>
                <li data-cmd="align" data-val="justifyRight" title="右对齐"><a href="#"><i
                        class="fa fa-align-right"></i></a></li>
                <li data-cmd="align" data-val="justifyFull" title="两端对齐"><a href="#"><i class="fa fa-align-justify"></i></a>
                </li>
            </ul>
        </div>
        <button tabindex="-1" type="button" class="fr-bttn" title="插入链接" data-cmd="createLink"><i
                class="fa fa-link"></i></button>
        <button tabindex="-1" type="button" class="fr-bttn" title="插入图片" data-cmd="insertImage"><i
                class="fa fa-picture-o"></i></button>
        <button tabindex="-1" type="button" class="fr-bttn" title="插入视频" data-cmd="insertVideo"><i
                class="fa fa-video-camera"></i></button>
    </div>
</div>
<div style="min-height: 100px; max-height: 500px;" class="froala-wrapper f-basic">
    <div dir="auto" spellcheck="false" style="outline: 0px none; min-height: 100px;"
         class="f-placeholder froala-view froala-element not-msie f-basic" contenteditable="true"><p><br></p></div>
    <span class="fr-placeholder" unselectable="on">输入一些内容</span></div>
</div><textarea placeholder="输入一些内容" style="display: none;" cols="20" id="Content" name="Content" rows="2"></textarea>
<span class="field-validation-valid" data-valmsg-for="Content" data-valmsg-replace="true"></span>
</p>


<ul id="options_list" class="item-list">
    <li class="options_list_var">
        <div class="clearfix">
            <label for="item-0" for-format="item-%d">选项1</label><br>
            <input data-val="true" data-val-length="选项标题 必须至少包含 1 个字符，最多包含 200 个字符。" data-val-length-max="200"
                   data-val-length-min="1" data-val-required="选项标题 不能为空" id="InputVoteItemList_[0]__ItemName"
                   id-format="InputVoteItemList_[%d]__ItemName" name="InputVoteItemList[0].ItemName"
                   name-format="InputVoteItemList[%d].ItemName" value="" type="text"><br>
            <label style="position: relative; overflow: hidden; direction: ltr;" name="picbutton_0" id="picbutton_0"
                   role="button" class="options_input"><input value="图片" type="button"><input
                    style="position: absolute; right: 0px; top: 0px; font-family: Arial; font-size: 118px; margin: 0px; padding: 0px; cursor: pointer; opacity: 0; height: 100%;"
                    multiple="" title="file input" qq-button-id="eff7c50c-fa0f-4dda-b272-215801652cfe"
                    type="file"></label>
            <label class="options_input"><input id="add-viedo" value="视频" type="button"></label>
            <label class="options_input"><input id="add-content" value="说明" type="button"></label>
            <label class="options_input"><input style="display: none;" class="options_list_del" value="删除"
                                                type="button"></label>
        </div>
        <div name="options_list_0" id="options_list_0">
            <div class="qq-uploader-selector qq-uploader qq-gallery">
                <ul class="qq-upload-list-selector qq-upload-list" role="region" aria-live="polite"
                    aria-relevant="additions removals"></ul>
            </div>
        </div>
        <div class="item-vid"><input id="InputVoteItemList_[0]__Vid" id-format="InputVoteItemList_[%d]__Vid"
                                     name="InputVoteItemList[0].Vid" name-format="InputVoteItemList[%d].Vid"
                                     placeholder="请输入视频地址" value="" type="text"></div>
        <div class="item-content"><textarea cols="20" id="InputVoteItemList_[0]__Content"
                                            id-format="InputVoteItemList_[%d]__Content"
                                            name="InputVoteItemList[0].Content"
                                            name-format="InputVoteItemList[%d].Content" rows="2"></textarea></div>
        <input class="pic-link" id="InputVoteItemList_[0]__pic" id-format="InputVoteItemList_[%d]__pic"
               name="InputVoteItemList[0].pic" name-format="InputVoteItemList[%d].pic" value="" type="hidden">
    </li>
</ul>
<input class="options_list_add" id="add_item" value="增加选项" type="button">
</div>
</article>

<section class="loop-container related-posts content-background content-margin">
    <header class="page-title-wrap">
        <h1 class="page-title">功能设置</h1>
    </header>
    <ul class="related-wrap">
        <li>
            <div class="function_tag">
                单选多选：
                <label>单选</label>
                <label>多选</label>
                <select id="MaxCheck" name="MaxCheck">
                    <option value="0">无限制</option>
                </select>
                <input data-val="true" data-val-required="请选择单选或多选" id="SelectType" name="SelectType" value=""
                       type="hidden">
                <span class="field-validation-valid" data-valmsg-for="SelectType" data-valmsg-replace="true"></span>
            </div>
        </li>
        <li>
            <div class="function_tag">
                允许评论：
                <label>是</label>
                <label>否</label>
                <input data-val="true" data-val-required="请选择是否允许评论" id="b_CommentFlag" name="b_CommentFlag" value=""
                       type="hidden">
                <span class="field-validation-valid" data-valmsg-for="b_CommentFlag" data-valmsg-replace="true"></span>
            </div>
        </li>
        <li>
            <div class="function_tag">
                首页置顶：

                <label>是</label>
                <label>否</label>
                <a href="https://www.toutoupiao.com/Post/2488" target="_top"><i class="fa fa-question-circle"></i></a>
                <input data-val="true" data-val-required="请选择是否在首页置顶" id="b_IndexFlag" name="b_IndexFlag" value=""
                       type="hidden">
                <span class="field-validation-valid" data-valmsg-for="b_IndexFlag" data-valmsg-replace="true"></span>

            </div>
        </li>
        <li>
            <div class="function_tag">
                去除广告：

                <label class="checked">否</label>
                <a href="https://www.toutoupiao.com/Member" target="_top"><i class="fa fa-star"></i> 加入金会员，去除广告</a>
                <input value="否" data-val="true" data-val-required="请选择是否去除广告" id="b_AdvFlag" name="b_AdvFlag"
                       type="hidden">
                <span class="field-validation-valid" data-valmsg-for="b_AdvFlag" data-valmsg-replace="true"></span>

            </div>
        </li>
        <li>
            <div class="function_tag">
                投票密码：
                <label>是</label>
                <label>否</label>
                <input data-val="true" data-val-length="投票密码最多包含6位数。" data-val-length-max="6"
                       data-val-regex="投票密码必须是不超过6位的数字密码" data-val-regex-pattern="^[0-9]*$" id="VotePass"
                       name="VotePass" placeholder="请输入不超过6位的数字密码" value="" type="text"><span
                    class="field-validation-valid" data-valmsg-for="VotePass" data-valmsg-replace="true"></span>
                <input data-val="true" data-val-required="请选择是否需要投票密码" id="b_VotePass" name="b_VotePass" value=""
                       type="hidden">
                <span class="field-validation-valid" data-valmsg-for="b_VotePass" data-valmsg-replace="true"></span>
            </div>
        </li>
        <li>
            <div class="function_tag">
                票数上限：
                <label>是</label>
                <label>否</label>
                <input data-val="true" data-val-length="票数上限最多包含6位数。" data-val-length-max="6"
                       data-val-regex="票数上限必须是正整数" data-val-regex-pattern="^\d+$" id="SumLimit" name="SumLimit"
                       placeholder="总票数达到多少票后自动结束" value="" type="text"><span class="field-validation-valid"
                                                                              data-valmsg-for="SumLimit"
                                                                              data-valmsg-replace="true"></span>
                <input data-val="true" data-val-required="请选择票数上限" id="b_SumLimit" name="b_SumLimit" value=""
                       type="hidden">
                <span class="field-validation-valid" data-valmsg-for="b_SumLimit" data-valmsg-replace="true"></span>
            </div>
        </li>
        <li>
            <div class="function_tag">
                允许重复投票：
                <label>是</label>
                <label>否</label>
                <a href="https://www.toutoupiao.com/Post/2422" target="_top"><i class="fa fa-question-circle"></i></a>
                <input data-val="true" data-val-length="重复投票时间最多包含6位数。" data-val-length-max="6"
                       data-val-regex="重复投票时间必须是正整数" data-val-regex-pattern="^\d+$" id="Intervals" name="Intervals"
                       placeholder="多少小时后可以再次投票" value="" type="text"><span class="field-validation-valid"
                                                                            data-valmsg-for="Intervals"
                                                                            data-valmsg-replace="true"></span>
                <input data-val="true" data-val-required="请选择是否允许重复投票" id="b_Intervals" name="b_Intervals" value=""
                       type="hidden">
                <span class="field-validation-valid" data-valmsg-for="b_Intervals" data-valmsg-replace="true"></span>
            </div>
        </li>
        <li>
            <div class="function_tag">
                投票后显示结果：
                <label>是</label>
                <label>否</label>
                <input data-val="true" data-val-required="请选择投票后是否显示结果" id="b_ResultFlag" name="b_ResultFlag" value=""
                       type="hidden">
                <span class="field-validation-valid" data-valmsg-for="b_ResultFlag" data-valmsg-replace="true"></span>
            </div>
        </li>
        <li>
            <div class="function_tag">
                开启票数智能监控：
                <label class="checked">是</label>
                <a href="https://www.toutoupiao.com/Post/2118" target="_top"><i class="fa fa-question-circle"></i></a>
            </div>
        </li>
        <li>
            <div class="function_tag">
                只能在微信里投票：
                <label>是</label>
                <label>否</label>
                <input data-val="true" data-val-required="请选择是否只能在微信里投票" id="b_WechatFlag" name="b_WechatFlag" value=""
                       type="hidden">
                <span class="field-validation-valid" data-valmsg-for="b_WechatFlag" data-valmsg-replace="true"></span>
            </div>
        </li>
        <li>
            <div class="function_tag stylecolor">
                风格颜色：
                <label>绿</label>
                <label>橙</label>
                <label>紫</label>
                <label>红</label>
                <label>黄</label>
                <input data-val="true" data-val-required="请选择风格颜色" id="StyleColor" name="StyleColor" value=""
                       type="hidden">
                <span class="field-validation-valid" data-valmsg-for="StyleColor" data-valmsg-replace="true"></span>
            </div>
        </li>
        <li>
            <div class="function_tag">
                投票分类：

                <label>文字投票</label>

                <label>图片投票</label>

                <label>视频投票</label>
                <input data-val="true" data-val-required="请选择投票分类" id="b_SortId" name="b_SortId" value="" type="hidden">
                <span class="field-validation-valid" data-valmsg-for="b_SortId" data-valmsg-replace="true"></span>
            </div>
        </li>
        <li>
            <div class="function_tag">
                投票截止日期：
                <input value="" name="EndTime" id="EndTime" class="input" data-field="datetime" readonly="readonly"
                       type="text">
                <span class="field-validation-valid" data-valmsg-for="EndTime" data-valmsg-replace="true"></span>
                <div id="dtBox"></div>
            </div>
        </li>
    </ul>
</section>

<div class="content-background clearfix">
    <h3 class="center-container">

        <input id="addsubmit" class="submit" value="发布投票" type="submit">

    </h3>
</div>
</form>
</div>


<aside id="main-sidebar" class="sidebar">

    <div class="sb-widget">
        <div class="widget-content">
            <form action="https://www.toutoupiao.com/Search" class="searchform" id="searchform" method="get">
                <div>
                    <input value="" name="keywords" id="keywords" type="text">
                    <input id="searchsubmit" value="搜索" type="submit">
                </div>
            </form>
        </div>
    </div>


    <div class="sb-widget">
        <div class="widget-content">
            <h4 class="widget-title">各类投票示例</h4>
            <ul>
                <li><a href="https://www.toutoupiao.com/Vote/14230" target="_top">文字投票示例</a></li>
                <li><a href="https://www.toutoupiao.com/Vote/14185" target="_top">图片投票示例</a></li>
                <li><a href="https://www.toutoupiao.com/Vote/14186" target="_top">视频投票示例</a></li>
                <li><a href="https://www.toutoupiao.com/Vote/14187" target="_top">密码投票示例</a></li>
                <li><a href="https://www.toutoupiao.com/Vote/14195" target="_top">无广告投票示例</a></li>
                <li><a href="https://www.toutoupiao.com/Vote/14189" target="_top">无评论投票示例</a></li>
                <li><a href="https://www.toutoupiao.com/Vote/14404" target="_top">选项说明投票示例</a></li>
                <li><a href="https://www.toutoupiao.com/Vote/14190" target="_top">不显示结果投票示例</a></li>
                <li><a href="https://www.toutoupiao.com/Vote/14916" target="_top">只能在微信里投票示例</a></li>
            </ul>
        </div>
    </div>

</aside>
</div>


<footer id="footer" class="footer clearfix">
    <nav class="social-nav clearfix">
        <div class="menu-social-container">
            <ul id="menu-social" class="menu">
                <li class="menu-item"><a target="_top" href="mailto:1210253763@qq.com"><span class="social-icon"><i
                        class="fa fa-social"></i></span><span class="screen-reader-text">Email</span></a></li>
                <li class="menu-item"><a target="_top" href="http://weibo.com/2138175953"><span class="social-icon"><i
                        class="fa fa-social"></i></span><span class="screen-reader-text">新浪微博</span></a></li>
                <li class="menu-item"><a target="_top" href="img/toutoupiao_weixin2.jpg"><span class="social-icon"><i
                        class="fa fa-social"></i></span><span class="screen-reader-text">微信</span></a></li>
            </ul>
        </div>
    </nav>
    <div class="copyright-wrap">
        <p class="copyright">Copyright © 2018 <a href="https://www.toutoupiao.com/" title="投票网">投票网</a></p>
    </div>
</footer>
<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

</div>


<script src="js/jquery1-1.11.1.min.js"></script>

<script src="js/common1.min.js"></script>


<script src="js/froala_editor.js"></script>

<script src="js/plugins.min.js"></script>

<script src="js/zh_cn.js"></script>

<!--[if lt IE 9]>
<script src="//data.toutoupiao.com/Scripts/froalaeditor/froala_editor_ie8.js"></script>

<![endif]-->
<script src="js/add-input-area.js"></script>

<script src="js/fineuploader5.3.0.js"></script>

<script src="js/datetimepicker.js"></script>

<script src="js/notifit.js"></script>

<script type="text/template" id="pic-template">
    <div class="qq-uploader-selector qq-uploader qq-gallery">
        <ul class="qq-upload-list-selector qq-upload-list" role="region" aria-live="polite"
            aria-relevant="additions removals">
            <li>
                <span role="status" class="qq-upload-status-text-selector qq-upload-status-text"></span>
                <div class="qq-progress-bar-container-selector qq-progress-bar-container">
                    <div role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"
                         class="qq-progress-bar-selector qq-progress-bar"></div>
                </div>
                <span class="qq-upload-spinner-selector qq-upload-spinner"></span>
                <div class="qq-thumbnail-wrapper">
                    <a class="preview-link" target="_blank">
                        <img class="qq-thumbnail-selector" qq-max-size="120" qq-server-scale>
                    </a>
                </div>
                <button type="button" class="qq-upload-cancel-selector qq-upload-cancel">X</button>
                <button type="button" class="qq-upload-retry-selector qq-upload-retry">重新上传</button>

                <div class="qq-file-info">
                    <div class="qq-file-name">
                        <span class="qq-upload-file-selector qq-upload-file"></span>
                    </div>
                    <span class="qq-upload-size-selector qq-upload-size"></span>
                    <button type="button" class="qq-btn qq-upload-delete-selector qq-upload-delete">
                        <span class="qq-btn qq-delete-icon" aria-label="删除"></span>
                    </button>
                    <button type="button" class="qq-btn qq-upload-pause-selector qq-upload-pause">
                        <span class="qq-btn qq-pause-icon" aria-label="暂停"></span>
                    </button>
                    <button type="button" class="qq-btn qq-upload-continue-selector qq-upload-continue">
                        <span class="qq-btn qq-continue-icon" aria-label="继续"></span>
                    </button>
                </div>
            </li>
        </ul>
    </div>
</script>
<script src="js/inputvote.js"></script>


<!-- Global site tag (gtag.js) - Google Analytics -->
<script async="" src="js"></script>
<script>
    window.dataLayer = window.dataLayer || [];

    function gtag() {
        dataLayer.push(arguments);
    }

    gtag('js', new Date());

    gtag('config', 'UA-45890340-1');
</script>


<div class="froala-editor f-inline" style="display: none; z-index: 2001;">
    <div class="froala-popup froala-image-popup" style="display: none;"><h4><span data-text="true">插入图片</span><span
            data-text="true">上传图像</span><i title="取消" class="fa fa-times" id="f-image-close-1"></i></h4>
        <div id="f-image-list-1">
            <div class="f-popup-line drop-upload">
                <div class="f-upload" id="f-upload-div-1"><strong data-text="true">图像拖放</strong><br>(<span
                        data-text="true">或点击</span>)
                    <form target="frame-1" enctype="multipart/form-data" encoding="multipart/form-data"
                          action="https://www.toutoupiao.com/Upload/FroalaUploadImage" method="post"
                          id="f-upload-form-1"><input id="f-file-upload-1" name="file" accept="image/*" type="file">
                    </form>
                </div>
            </div>
            <div class="f-popup-line"><label><span data-text="true">输入网址</span>: </label><input value=""
                                                                                                id="f-image-url-1"
                                                                                                placeholder="http://example.com"
                                                                                                type="text">
                <button class="f-browse fr-p-bttn" id="f-browser-1"><i class="fa fa-search"></i></button>
                <button data-text="true" class="f-ok fr-p-bttn f-submit" id="f-image-ok-1">确定</button>
            </div>
        </div>
        <p class="f-progress" id="f-progress-1"><span></span></p></div>
    <div class="froala-popup froala-image-editor-popup" style="display: none;">
        <div class="f-popup-line f-popup-toolbar">
            <div class="fr-bttn fr-dropdown ">
                <button tabindex="-1" type="button" data-name="display" class="fr-trigger" title="显示"><i
                        class="fa fa-star"></i></button>
                <ul class="fr-dropdown-menu">
                    <li data-namespace="Image" data-cmd="display" data-val="fr-dii" data-param="undefined"><a href="#"
                                                                                                              data-text="true"
                                                                                                              class="fr-dii"
                                                                                                              title="排队">排队</a>
                    </li>
                    <li data-namespace="Image" data-cmd="display" data-val="fr-dib" data-param="undefined"><a href="#"
                                                                                                              data-text="true"
                                                                                                              class="fr-dib"
                                                                                                              title="断开文本">断开文本</a>
                    </li>
                </ul>
            </div>
            <div class="fr-bttn fr-dropdown ">
                <button tabindex="-1" type="button" data-name="align" class="fr-trigger" title="对齐方式"><i
                        class="fa fa-align-center"></i></button>
                <ul class="fr-dropdown-menu f-align">
                    <li data-cmd="align" data-namespace="Image" data-val="floatImageLeft" title="左对齐"><a href="#"><i
                            class="fa fa-align-left"></i></a></li>
                    <li data-cmd="align" data-namespace="Image" data-val="floatImageNone" title="居中"><a href="#"><i
                            class="fa fa-align-center"></i></a></li>
                    <li data-cmd="align" data-namespace="Image" data-val="floatImageRight" title="右对齐"><a href="#"><i
                            class="fa fa-align-right"></i></a></li>
                </ul>
            </div>
            <button class="fr-bttn" data-namespace="Image" data-cmd="linkImage" title="插入链接"><i class="fa fa-link"></i>
            </button>
            <button class="fr-bttn" data-namespace="Image" data-cmd="replaceImage" title="更换图像"><i
                    class="fa fa-exchange"></i></button>
            <button class="fr-bttn" data-namespace="Image" data-cmd="removeImage" title="删除图像"><i
                    class="fa fa-trash-o"></i></button>
        </div>
        <div class="f-popup-line f-image-alt"><label><span data-text="true">标题</span>: </label><input value=""
                                                                                                      type="text">
            <button class="fr-p-bttn f-ok" data-text="true" data-callback="setImageAlt" data-cmd="setImageAlt"
                    title="确定">确定
            </button>
        </div>
    </div>
    <div class="froala-popup froala-link-popup" style="display: none;"><h4><span data-text="true">插入链接</span><a
            target="_top" title="Open Link" class="f-external-link" href="#"><i class="fa fa-external-link"></i></a><i
            title="取消" class="fa fa-times" id="f-link-close-1"></i></h4>
        <div class="f-popup-line fr-hidden"><input value="" placeholder="Text" class="f-lt" id="f-lt-1" type="text">
        </div>
        <div class="f-popup-line"><input value="" placeholder="http://www.example.com" class="f-lu " id="f-lu-1"
                                         type="text"></div>
        <div class="f-popup-line"><input class="f-target" id="f-target-1" type="checkbox"> <label data-text="true"
                                                                                                  for="f-target-1">开启在新标签页</label>
            <button data-text="true" type="button" class="fr-p-bttn f-ok f-submit" id="f-ok-1">确定</button>
            <button type="button" data-text="true" class="fr-p-bttn f-ok f-unlink" id="f-unlink-1">删除链接</button>
        </div>
    </div>
    <div class="froala-popup froala-video-popup" style="display: none;"><h4><span data-text="true">插入视频</span><i
            title="取消" class="fa fa-times" id="f-video-close-1"></i></h4>
        <div class="f-popup-line"><textarea placeholder="通用代码" id="f-video-textarea-1"></textarea></div>
        <p class="or"><span data-text="true">或</span></p>
        <div class="f-popup-line"><input value="" placeholder="http://youku.com/" id="f-video-input-1" type="text">
            <button data-text="true" class="f-ok f-submit fr-p-bttn" id="f-video-ok-1">确定</button>
        </div>
    </div>
    <div class="froala-popup froala-video-editor-popup" style="display: none;">
        <div class="f-popup-line">
            <button class="fr-bttn" data-callback="floatVideoLeft" data-cmd="floatVideoLeft" title="左对齐"><i
                    class="fa fa-align-left"></i></button>
            <button class="fr-bttn" data-callback="floatVideoNone" data-cmd="floatVideoNone" title="无"><i
                    class="fa fa-align-justify"></i></button>
            <button class="fr-bttn" data-callback="floatVideoRight" data-cmd="floatVideoRight" title="右对齐"><i
                    class="fa fa-align-right"></i></button>
            <button class="fr-bttn" data-callback="removeVideo" data-cmd="removeVideo" title="Remove Video"><i
                    class="fa fa-trash-o"></i></button>
        </div>
    </div>
</div>
</body>
</body>
</html>