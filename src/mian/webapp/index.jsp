<%@ page language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
    <base href="<%=basePath%>">
    <title></title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300">  <!-- Google web font "Open Sans" -->
    <link rel="stylesheet" href="css/bootstrap.min.css">                                  <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="fontawesome/css/fontawesome-all.min.css">                <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" type="text/css" href="slick/slick.css"/>                       <!-- http://kenwheeler.github.io/slick/ -->
    <link rel="stylesheet" type="text/css" href="slick/slick-theme.css"/>
    <link rel="stylesheet" href="css/tooplate-style.css">
    <script>document.documentElement.className="js";var supportsCssVars=function(){var e,t=document.createElement("style");return t.innerHTML="root: { --tmp-var: bold; }",document.head.appendChild(t),e=!!(window.CSS&&window.CSS.supports&&window.CSS.supports("font-weight","var(--tmp-var)")),t.parentNode.removeChild(t),e};supportsCssVars()||alert("Please view this in a modern browser such as latest version of Chrome or Microsoft Edge.");</script>

</head>
<body>
<div id="tm-bg"></div>
<div id="tm-wrap">
    <div class="tm-main-content">
        <div class="container tm-site-header-container">
            <div class="row">
                <div class="col-sm-12 col-md-6 col-lg-6 col-md-col-xl-6 mb-md-0 mb-sm-4 mb-4 tm-site-header-col">
                    <div class="tm-site-header">
                        <p>
                            <c:choose>
                                <c:when test="${sessionScope.sessionAccount==null}">
                                    <a href="user/login">登录</a>
                                </c:when>
                                <c:otherwise>
                                    ${sessionScope.sessionAccount.userLoginId} <a href="user/exit">注销</a>
                                    <a href="vote/createVote">创建投票</a>
                                </c:otherwise>
                            </c:choose>
                        </p>
                        <h1 class="mb-4">POP design</h1>
                        <img src="img/underline.png" class="img-fluid mb-4">
                        <p>New HTML Template with pop up pages and use this layout for your website</p>
                    </div>
                </div>

                <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                    <div class="content">
                        <div class="grid">
                            <div class="grid__item" id="home-link">
                                <div class="product">
                                    <div class="tm-nav-link">
                                        <i class="fas fa-home fa-3x tm-nav-icon"></i>
                                        <span class="tm-nav-text">Welcome</span>
                                        <div class="product__bg"></div>
                                    </div>
                                    <div class="product__description">
                                        <div class="row mb-3">
                                            <div class="col-12">
                                                <h2 class="tm-page-title">Welcome to Pop Design</h2>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                                                <img src="img/welcome-1.jpg" class="img-fluid mb-3">
                                                <p>You can feel free to use this template for your websites. Please tell
                                                    your friends about Tooplate website. Thank you.</p>
                                                <p>Vivamus placerat in nunc eget volutpat. Etiam tincidunt blandit
                                                    sapien, sed posuere enim. Ut eget ornare lectus.</p>
                                            </div>
                                            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                                                <p>Donec eu lectus ligula. Aenean pulvinar dolor et massa lacinia
                                                    rhoncus sit amet sed mauris. Aliquam dictum nibh et consequat
                                                    finibus.</p>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In magna
                                                    mauris, malesuada ut diam eu, pellentesque fringilla orci.</p>
                                                <img src="img/welcome-2.jpg" class="img-fluid">
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>

                            <div class="grid__item" id="team-link">
                                <div class="product">
                                    <div class="tm-nav-link">
                                        <i class="fas fa-users fa-3x tm-nav-icon"></i>
                                        <span class="tm-nav-text">Our Team</span>
                                        <div class="product__bg"></div>
                                    </div>
                                    <div class="product__description">
                                        <div class="p-sm-4 p-2">
                                            <div class="row mb-3">
                                                <div class="col-12">
                                                    <h2 class="tm-page-title">Background of Our Team</h2>
                                                </div>
                                            </div>
                                            <div class="row tm-reverse-sm">
                                                <div class="col-sm-12 col-md-8 col-lg-8 col-xl-8">
                                                    <p class="mb-4">Vestibulum aliquet, arcu accumsan lobortis bibendum,
                                                        justo velit efficitur lorem, at pulvinar mi justo nec lacus.
                                                        Nullam et libero aliquet, luctus nunc sit amet, tincidunt
                                                        ligula. Sed finibus ante sed tortor cursus, nec malesuada lectus
                                                        interdum.</p>
                                                    <p class="mb-4">Sed ex turpis, vulputate in efficitur id, lobortis
                                                        eget nibh. Pellentesque maximus ipsum eget velit imperdiet
                                                        sodales. Suspendisse in blandit mi.</p>
                                                    <p class="mb-5">Pellentesque finibus felis risus, ut malesuada felis
                                                        viverra at. Quisque accumsan in mi non hendrerit.</p>
                                                    <a href="#" class="btn tm-btn-gray">Read More</a>
                                                </div>
                                                <div class="col-sm-12 col-md-4 col-lg-4 col-xl-4 mb-lg-0 mb-sm-4 mb-4">
                                                    <img src="img/team.jpg" class="img-fluid">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tlinks">Collect from <a href="http://www.cssmoban.com/">网页模板</a></div>

                            <div class="grid__item">
                                <div class="product">
                                    <div class="tm-nav-link">
                                        <i class="fas fa-handshake fa-3x tm-nav-icon"></i>
                                        <span class="tm-nav-text">Our Work</span>
                                        <div class="product__bg"></div>
                                    </div>
                                    <div class="product__description">
                                        <div class="p-sm-4 p-2">
                                            <div class="row mb-3">
                                                <div class="col-12">
                                                    <h2 class="tm-page-title">Our Work</h2>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="col-12">
                                                    <p>Aliquam interdum, nisl sed faucibus tempor, massa velit laoreet
                                                        ipsum, et faucibus sapien magna at enim. Suspendisse a dictum
                                                        tortor, vel rhoncus libero. Integer at lacus velit. Nullam
                                                        dapibus venenatis placerat.</p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-12">
                                                    <div class="p-sm-4 p-2 tm-img-container">
                                                        <div class="tm-img-slider" id="tmImgSlider">
                                                            <img src="img/gallery-img-01-tn.jpg" alt="Image"
                                                                 class="tm-slider-img">
                                                            <img src="img/gallery-img-02-tn.jpg" alt="Image"
                                                                 class="tm-slider-img">
                                                            <img src="img/gallery-img-03-tn.jpg" alt="Image"
                                                                 class="tm-slider-img">
                                                            <img src="img/gallery-img-04-tn.jpg" alt="Image"
                                                                 class="tm-slider-img">
                                                            <img src="img/gallery-img-05-tn.jpg" alt="Image"
                                                                 class="tm-slider-img">
                                                            <img src="img/gallery-img-06-tn.jpg" alt="Image"
                                                                 class="tm-slider-img">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="grid__item">
                                <div class="product">
                                    <div class="tm-nav-link">
                                        <i class="fas fa-comments fa-3x tm-nav-icon"></i>
                                        <span class="tm-nav-text">Contact</span>
                                        <div class="product__bg"></div>
                                    </div>
                                    <div class="product__description">
                                        <div class="pt-sm-4 pb-sm-4 pl-sm-5 pr-sm-5 pt-2 pb-2 pl-3 pr-3">
                                            <div class="row mb-3">
                                                <div class="col-12">
                                                    <h2 class="tm-page-title">Contact Us</h2>
                                                </div>
                                            </div>
                                            <div class="row mb-4">
                                                <div class="col-12">
                                                    <p>Lorem ipsum dolor site amet, consectetur adipiscing elit. Aliquam
                                                        interdum, nisl sed faucibus tempor, massa velit laoreet ipsum,
                                                        et faucibus sapien magna at enim. Suspendisse a dictum tortor,
                                                        vel rhoncus libero.</p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-12">
                                                    <form action="index.html" method="post" class="contact-form">
                                                        <div class="row">
                                                            <div class="form-group col-md-6 col-lg-6 col-xl-6">
                                                                <input type="text" id="contact_name" name="contact_name"
                                                                       class="form-control" placeholder="Name"
                                                                       required/>
                                                            </div>
                                                            <div class="form-group col-md-6 col-lg-6 col-xl-6 tm-col-email">
                                                                <input type="email" id="contact_email"
                                                                       name="contact_email" class="form-control"
                                                                       placeholder="Email" required/>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <textarea id="contact_message" name="contact_message"
                                                                      class="form-control" rows="9"
                                                                      placeholder="Message" required></textarea>
                                                        </div>
                                                        <button type="submit" class="btn btn-primary tm-btn-submit">
                                                            Submit
                                                        </button>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer>
            <p class="small tm-copyright-text">Copyright &copy; <span class="tm-current-year">2018</span> Your Company.

                Layout: <a rel="nofollow" href="#/view/2097-pop" class="tm-text-highlight">Pop Design</a> More Templates
                <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a
                        href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
        </footer>
    </div> <!-- .tm-main-content -->
</div>
<!-- load JS -->
<script src="js/jquery-3.2.1.slim.min.js"></script>         <!-- https://jquery.com/ -->
<script src="slick/slick.min.js"></script>                  <!-- http://kenwheeler.github.io/slick/ -->
<script src="js/anime.min.js"></script>                     <!-- http://animejs.com/ -->
<script src="js/main.js"></script>
<script>

    function setupFooter() {
        var pageHeight = $('.tm-site-header-container').height() + $('footer').height() + 100;

        var main = $('.tm-main-content');

        if ($(window).height() < pageHeight) {
            main.addClass('tm-footer-relative');
        }
        else {
            main.removeClass('tm-footer-relative');
        }
    }

    /* DOM is ready
    ------------------------------------------------*/
    $(function () {

        setupFooter();

        $(window).resize(function () {
            setupFooter();
        });

        $('.tm-current-year').text(new Date().getFullYear());  // Update year in copyright
    });

</script>

</body>
</html>