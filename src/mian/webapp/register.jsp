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
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <script id="AWSC_uabModule" src="js/110.js"></script>
    <link rel="stylesheet" type="text/css" href="css/register.css" media="all">
</head>
<body class="fp-viewing">
<form name="form" method="post" action="https://www.wjx.cn/register/register.aspx?type=1" id="form">
    <div>
        <input name="__VIEWSTATE" id="__VIEWSTATE"
               value="/wEPDwUKLTY4MjQzOTU3Mw8WAh4TVmFsaWRhdGVSZXF1ZXN0TW9kZQIBFgICAw9kFgICBA9kFgQCAg9kFgICAQ8PFgIeBFRleHQFCemXruWNt+aYn2RkAgQPZBYMAgMPD2QWAh4FdmFsdWVlZAIFDxYCHgdWaXNpYmxlaBYCAgEPD2QWAh8CZWQCBw8WAh8DaGQCCQ8WAh8DZxYCAgMPFgIfA2hkAg0PFgIfA2hkAg8PFgIfA2gWAgIBDxAPFgIeB0NoZWNrZWRnZGRkZGQhkRIkpWEkDpfJDGT7xckV2G5k+Q=="
               type="hidden">
    </div>

    <div>

        <input name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="355BB878" type="hidden">
    </div>
    <div id="fullpage" class="fullpage-wrapper">
        <div class="full-head clearfix">
            <a href="https://www.wjx.cn/" id="sojumplogo" class="logo pull-left">
                <img src="images/logo.png" alt="问卷星_不止问卷调查/在线考试">
            </a>
            <div class="member pull-right">
                <a href="https://www.wjx.cn/login.aspx" class="btn btn-default btn-lg pull-left login " rel="nofollow">登录</a>
                <a href="#" class="btn btn-default btn-lg pull-left register hidden" rel="nofollow">注册</a>
                <a href="https://www.wjx.cn/" class="btn btn-default btn-lg pull-left back-wjx">返回首页</a>
            </div>
        </div>
        <div class="fullpage-main"></div>


        <div>


            <script src="js/nvc.js"></script>
            <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
            <script type="text/javascript" src="js/jquery.pseudo.js"></script>
            <!--[if lte IE 9]>
            <script src="/js/jquery.placeholder.min.js"></script>
            <script>
                $(function () {
                    $('input[placeholder]').placeholder();
                });
            </script>
            <![endif]-->
            <div id="register-box" class="validate-box">


                <fieldset class="validate-wrapper">
                    <h1 id="Register1_divVT" class="validate-caption">用户注册</h1>


                    <div id="Register1_pnlCreate">

                        <ul>
                            <li>
                                <label for="register-user-name" class="icon user-icon"></label>
                                <input value="" name="Register1$UserName" maxlength="50" id="Register1_UserName"
                                       class="validate-input user-name" placeholder="支持英文与数字，注册后不能修改" type="text">
                                <label for="register-user-name" style="display: none;" id="divUserNamePromptInfo"
                                       class="error blue">支持英文与数字，注册后不能修改</label>
                                <label for="register-user-name" style="display: none;" id="divUserNameErrorInfo"
                                       class="error red">用户名不能为空</label>
                                <label for="register-user-name" style="display: none;" id="divUserNameRightInfo"
                                       class="error green">用户名可用</label>
                            </li>
                            <li>
                                <label for="register-password" class="icon password-icon"></label>
                                <input name="Register1$Password" maxlength="20" id="Register1_Password"
                                       class="validate-input" placeholder="6~20位字母、数字或特殊符号" value="" type="password">
                                <label style="display: none;" id="divPasswordPromptInfo" for="register-password"
                                       class="error blue">6~20位字母、数字或特殊符号。</label>
                                <label style="display: none;" id="divPasswordErrorInfo" for="register-password"
                                       class="error red">密码长度要在6-20个字符之间</label>
                                <label style="display: none;" id="divPasswordRightInfo" for="register-password"
                                       class="error green">密码设置成功</label>
                            </li>


                            <li id="Register1_liMobile" style="text-align: left;">

                                <label for="mobile-number" class="icon mobile-icon"></label>
                                <input value="" name="Register1$txtMobile" maxlength="11" id="Register1_txtMobile"
                                       class="validate-input" placeholder="可通过手机号登录问卷星" type="text">

                                <input name="Register1$hfField" id="Register1_hfField" type="hidden">

                                <div id="Register1_divGeeTest" style="padding-top: 15px; width: 400px;">
                                    <div id="captcha"></div>
                                    <div id="Register1_divGeeTest1">

                                        <script>
                                            window.NVC_Opt = {
                                                appkey: 'FFFF00000000016770EE',
                                                scene: 'ic_activity',
                                                renderTo: '#captcha'
                                            }
                                        </script>
                                        <script src="guide.js"></script>
                                        <script src="index.js"></script>
                                        <script>
                                            var useAliVerify = 1;
                                            var isCaptchaValid = false;
                                            var nc_csessionid = "";
                                            var nc_sig = "";
                                            var nc_appkey = 'FFFF00000000016770EE';
                                            var nc_scene = 'ic_activity';
                                            var nc_token = "";
                                            var hasClick = false;
                                            var captchaOjb = new smartCaptcha({
                                                renderTo: '#captcha',
                                                width: 380,
                                                success: function (data) {
                                                    isCaptchaValid = true;
                                                    nc_token = NVC_Opt.token;
                                                    nc_csessionid = data.sessionId;
                                                    nc_sig = data.sig;
                                                    if (!hasClick) {
                                                        document.getElementById("btnSendSmsCode").onclick();
                                                        hasClick = true;
                                                    }
                                                },
                                            });
                                        </script>
                                    </div>

                                </div>
                                <div class="divclear"></div>
                                <div style="position: relative; margin-top: 15px; display: none;" id="divSmsCode">

                                    <input value="" name="Register1$txtCode" maxlength="6" id="Register1_txtCode"
                                           class="validate-input pull-left required" placeholder="手机验证码"
                                           style="margin-right: 0px; width: 228px; padding-right: 130px; padding-left: 20px;"
                                           type="text">
                                    <div class="btn btn-default btn-lg get-code-btn" id="btnSendSmsCode">
                                        获取验证码
                                    </div>
                                    <div style="position: absolute; left: 215px; width: 180px; height: 32px; line-height: 30px; top: 0px;">
                                        &nbsp;&nbsp;<span id="spanSmsMsg" class="warning-word phone-warning"
                                                          style="color: red;"></span><a href="javascript:"
                                                                                        class="link-U666"
                                                                                        title="收不到短信，试试语音验证码吧"
                                                                                        id="hrefVoice"
                                                                                        style="display: none; width: auto;">收不到？试试语音验证码</a>
                                        <div style="clear: both;"></div>
                                    </div>
                                    <script>
                                        var btnSendSmsCode = document.getElementById("btnSendSmsCode");
                                        var txtCode = document.getElementById("Register1_txtCode");
                                        var divSmsCode = document.getElementById("divSmsCode");
                                        var spanSmsMsg = "";
                                        var txtMobile = document.getElementById("Register1_txtMobile");
                                        var totalCount = 60;
                                        if (txtMobile.value && txtCode.value)
                                            txtMobile.hassended = true;

                                        var hrefVoice = document.getElementById("hrefVoice");
                                        var isVoice = false;
                                        var repeat = 0;
                                        var hasInitCode = false;
                                        window.onload = function () {
                                            if (window.useAliVerify && !hasInitCode) {
                                                if (useAliVerify == 1)
                                                    captchaOjb.init();
                                                else
                                                    captchaOjb.init(nc_option);
                                            }
                                            hasInitCode = true;
                                        }
                                        txtMobile.onblur = txtMobile.onchange = function () {
                                            if (/^(1[0-9])\d{9}$/.test(this.value)) {
                                                divSmsCode.style.display = "";
                                                if (window.useAliVerify && !hasInitCode) {
                                                    if (useAliVerify == 1)
                                                        captchaOjb.init();
                                                    else
                                                        captchaOjb.init(nc_option);
                                                }
                                                hasInitCode = true;
                                            }

                                        }
                                        if (txtMobile.value)
                                            txtMobile.onblur();

                                        function sendSms(mobile) {
                                            spanSmsMsg = document.getElementById("Register1_lbMsg");
                                            var codeval = "&mobile=" + txtMobile.value;
                                            if (window.txtValInputCode) {
                                                codeval += "&valcode=" + encodeURIComponent(txtValInputCode.value);
                                                codeval += "&btcaptchaId=" + encodeURIComponent(imageValCode.captchaId);
                                                codeval += "&btinstanceId=" + encodeURIComponent(imageValCode.instanceId);
                                            }
                                            else {
                                                codeval += "&nc_csessionid=" + encodeURIComponent(nc_csessionid) + "&nc_sig=" + encodeURIComponent(nc_sig)
                                                    + "&nc_token=" + encodeURIComponent(nc_token) + "&nc_scene=" + nc_scene + "&validate_text=geet";
                                            }
                                            if (isVoice)
                                                codeval += "&voice=1";
                                            var url = "/handler/sendsms.ashx?type=3" + codeval + "&t=" + new Date().valueOf();
                                            var xmlhttp = getXmlHttp();
                                            xmlhttp.onreadystatechange = function () {
                                                if (xmlhttp.readyState != 4) {
                                                    return;
                                                }
                                                if (xmlhttp.status != 200) {
                                                    return;
                                                }
                                                var data = xmlhttp.responseText;
                                                var mdata = data.split("|");
                                                var valcode = mdata[1] || "";
                                                if (mdata[0] == '1') {
                                                    spanSmsMsg.innerHTML = "验证码发送成功" + valcode;
                                                    if (isVoice) {
                                                        hrefVoice.innerHTML = "语音验证码";
                                                        spanSmsMsg.innerHTML = "发送成功,请注意接听电话";
                                                    }
                                                    if (lbMsg && lbMsg.innerHTML.indexOf("手机号码验证") > -1)
                                                        lbMsg.innerHTML = "";
                                                    txtMobile.hassended = true;
                                                    hrefVoice.disabled = true;
                                                    btnSendSmsCode.disabled = true;
                                                    totalCount = 60;
                                                    setTimeout(decreaseTimer, 1000);

                                                    hasDisplay = false;

                                                    if (window.txtValInputCode) {
                                                        txtValInputCode.value = "";
                                                        imageValCode.parentNode.style.display = "none";
                                                    }
                                                    else {
                                                        isCaptchaValid = false;
                                                    }
                                                    txtCode.focus();
                                                    if (window._czc) {
                                                        _czc.push(["_trackEvent", "注册发送短信", "PC端"]);
                                                    }
                                                }
                                                else {
                                                    txtMobile.hassended = false;
                                                    spanSmsMsg.innerHTML = data;
                                                    if (window.txtValInputCode) {
                                                        txtValInputCode.value = "";
                                                        imageValCode.onclick();
                                                    }
                                                    else {
                                                        isCaptchaValid = false;
                                                        if (window.useAliVerify == 1) {
                                                            captchaOjb.reload();
                                                        }
                                                        else if (window.useAliVerify == 2) {
                                                            captchaOjb.reset();
                                                        }
                                                    }
                                                }

                                            }
                                            xmlhttp.open("get", url, false);
                                            xmlhttp.send(null);
                                        }

                                        function getXmlHttp() {
                                            var xmlhttp;
                                            try {
                                                xmlhttp = new ActiveXObject('Msxml2.XMLHTTP');
                                            }
                                            catch (e) {
                                                try {
                                                    xmlhttp = new XMLHttpRequest();
                                                }
                                                catch (e) {
                                                    try {
                                                        xmlhttp = new ActiveXObject('Microsoft.XMLHTTP');
                                                    }
                                                    catch (e) {
                                                    }
                                                }
                                            }
                                            return xmlhttp;
                                        }

                                        function doSendSms() {
                                            var mobile = txtMobile.value;
                                            if (/^(1[0-9])\d{9}$/.test(mobile) == false) {
                                                spanSmsMsg.innerHTML = "手机号码输入错误！";
                                                txtMobile.focus();
                                                return;
                                            }
                                            if (repeat && !confirm("您输入的手机号码“" + mobile + "”确认准确无误吗？")) {
                                                return;
                                            }
                                            if (window.txtValInputCode) {
                                                if (txtValInputCode.value.length < 4) {
                                                    spanSmsMsg.innerHTML = "请输入正确的图形验证码！";
                                                    return;
                                                }
                                            }
                                            else {
                                                if (!isCaptchaValid) {
                                                    spanSmsMsg.innerHTML = "请先进行上面的图形验证！";
                                                    return;
                                                }
                                            }
                                            txtMobile.hassended = false;
                                            sendSms(mobile);
                                        }

                                        hrefVoice.onclick = function () {
                                            if (this.disabled)
                                                return;
                                            isVoice = true;
                                            if (window.captchaOjb && !isCaptchaValid) {
                                                if (window.useAliVerify == 1) {
                                                    captchaOjb.reload();
                                                }
                                                else if (window.useAliVerify == 2) {
                                                    captchaOjb.reset();
                                                }
                                            }
                                            doSendSms();
                                        }
                                        btnSendSmsCode.onclick = function () {
                                            isVoice = false;
                                            if (this.disabled)
                                                return;
                                            doSendSms();
                                        }

                                        function decreaseTimer() {
                                            totalCount--;
                                            if (totalCount > 0) {
                                                hrefVoice.innerHTML = "重发(" + totalCount + "秒)";
                                                btnSendSmsCode.innerHTML = "重发(" + totalCount + "秒)";
                                                setTimeout(decreaseTimer, 1000);
                                            }
                                            else {
                                                hrefVoice.innerHTML = "收不到？试试语音验证码";
                                                hrefVoice.disabled = false;
                                                hrefVoice.style.display = "";
                                                if (isVoice) {
                                                    hrefVoice.innerHTML = "语音验证码";
                                                }
                                                btnSendSmsCode.innerHTML = "发送验证码";
                                                btnSendSmsCode.disabled = false;
                                            }
                                        }
                                    </script>
                                </div>
                                <div class="divclear"></div>
                            </li>


                            <li>

                                <div>
                                    <div style="font-size: 14px; text-align: left; padding-left: 20px;"
                                         class="pull-left">
                                        <a href="https://www.wjx.cn/wjx/license.aspx" id="Register1_hrefXieYi"
                                           target="_top" style="color: rgb(102, 102, 102); text-decoration: underline;">
                                            我接受问卷星服务协议</a>
                                        &nbsp;&nbsp;<span id="Register1_lbMsg" style="color: Red;"></span>
                                    </div>
                                    <div style="clear: both;"></div>
                                    <div style="padding-top: 20px;">
                                        <input name="Register1$btnCreate" value="创建用户" onclick="return validate();"
                                               id="Register1_btnCreate" class="submitbutton"
                                               onmouseover="this.className='submitbutton submitbutton_hover';"
                                               onmouseout="this.className='submitbutton';" type="submit">
                                        <a href="https://www.wjx.cn/login.aspx" id="Register1_hrefLogin" class="log-on">已有账号，立即登录</a>
                                    </div>


                                    <div style="width: 380px; height: 150px; overflow-y: scroll; overflow-x: hidden; border: 1px solid rgb(186, 203, 217); display: none; margin-top: 10px; text-align: left;"
                                         id="divsojing">
                                        收奖网是一家提供网络调查、购物返利的信息平台。在您的积极参与下，将会直接影响企事业单位提供更好产品和服务，让您和广大消费者更好的满足消费需求等。，用户须完全同意下列所有服务条款并完成注册程序，才能成为本站的会员。<br>
                                        一、用户注册<br>
                                        用户须完全同意收奖网的会员服务条款，并完成全部注册程序，才能成为本站正式的会员。<br>
                                        二、服务内容<br>
                                        用户成为收奖网的正式会员后，收奖网将不定期地通过E-mail与其取得联系，邀请受访者会员参与各种形式的市场调研。<br>
                                        三、权利和义务<br>
                                        1. 收奖网正式的会员可通过参加调查获得相关利益；<br>
                                        2. 收奖网正式的会员可根据对被调查产品或服务的喜好，自由真实地发表意见，以及对产品或服务提出建议和要求。<br>
                                        3.
                                        收奖网承诺保护用户的隐私和个人信息，保证不以任何借口、任何形式向其他第三方透露用户个人信息，或经加工整理的专有私人信息，除非法律规定或用户本人书面同意。<br>
                                        4.一旦注册，用户将提供真实的个人信息，诸如姓名、工作单位和电子邮件地址等，收奖网还将要求用户提供一些附加信息以确认其是否愿意和有资格参加一些具有特殊要求的市场调研。收奖网将使用这些信息去建立个人帐号，并由用户设置的口令来保护。<br>
                                        5.对于因用户个人对网络的不正确使用，或不适当处理造成的信息披露，及因此而引起的纠纷，收奖网不承担任何责任。<br>
                                        6.用户成为受访者会员后，收到收奖网的访问邀请后须在要求的时间内妥善填写问卷后提交，收奖网确认是有效问卷后会给用户回复，以此为一次有效的问卷回答，并累计其积分。<br>
                                        7.收奖网会要求用户通过手机验证跟支付宝实名认证。用户不得恶意填写问卷，不得重复注册多个用户填写问卷，一经发现将直接永久锁定用户。<br>
                                        四、调研分析手段<br>
                                        1. 收奖网有权对用户提供的相关信息进行分析、整理，信息来源包括但不限于以下途径：<br>
                                        (a)使用软件程序获取用户的访问信息<br>
                                        (b)注册用户填写的调查表<br>
                                        (c)举办市场活动获得的用户信息<br>
                                        (d)从其它合作网站合法获得的用户信息<br>
                                        2. 收奖网有权以分类、分组、分地域等形式分析用户的类型、特点、区域特色等指标。
                                        <br>
                                        五、其他<br>
                                        1.上述协议条款的解释权和修改权归收奖网所有。
                                        <br>
                                        2.收奖网有权随时对收奖网受会员服务协议条款进行修改，并且一旦发生服务协议条款的变动，将在收奖网页面上提示修改的内容；会员如果不同意服务协议条款的修改，可以主动与收奖网取得联系；如果用户继续参与收奖网的在线调查，则视为用户已经接受服务协议条款的修改。
                                        <br>
                                        3.本协议条款和收奖网的其他协议服务条款构成完整的协议。本协议条款因与中华人民共和国现行法律相抵触而导致部分无效，不影响其他部分的效力。
                                    </div>
                                    <script type="text/javascript">
                                        function showXy() {
                                            var divsojing = document.getElementById("divsojing");
                                            divsojing.style.display = divsojing.style.display == "none" ? "" : "none";

                                        }
                                    </script>
                                </div>

                            </li>
                        </ul>

                    </div>
                </fieldset>

            </div>
            <script type="text/javascript">
                function $$(id) {
                    return document.getElementById(id);
                }

                var userName = $$("Register1_UserName");

                var password = $$("Register1_Password");
                var email = $$("Register1_Email");
                var confirmPassword = $$("Register1_ConfirmPassword");
                var lbMsg = $$("Register1_lbMsg");
                var createUserButton = $$("Register1_btnCreate");
                var divAntiSpam = $$("divAntiSpam");
                var rndnum = "1886212687";
                if (divAntiSpam) {
                    var validateImage = divAntiSpam.getElementsByTagName("input")[0];
                }

                function LoginSmall(obj) {

                    window.parent.PDF_close();
                    window.parent.PDF_launch(obj.href, 480, 522, null, "登录问卷星");
                    obj.href = "#";
                    return false;
                }

                var divType = document.getElementById("Register1_divType");
                var inputTypes = null;
                if (divType) {
                    inputTypes = divType.getElementsByTagName("input");
                }

                function selectTag(showContent, selfObj) {
                    // 操作标签
                    var tag = document.getElementById("RE-Tags").getElementsByTagName("li");
                    var taglength = tag.length;
                    for (i = 0; i < taglength; i++) {
                        tag[i].className = "";
                    }
                    selfObj.className = "RE-selectTag";
                    // 操作内容
                    inputTypes[showContent].checked = true;
                }

                var isUserValid = false;
                var isPasswordValid = false;
                var isEmailValid = false;
                var isConfirmPasswordValid = false;

                function endregister() {
                    window.parent.isLogin = 1;
                    window.parent.isTiyan = false;
                    window.parent.PDF_close();
                }

                function showhide(id, tar) {
                    var obj = $$(id);
                    obj.style.display = tar.checked ? "" : "none";
                }
            </script>
            <script src="register.js" type="text/javascript"></script>


        </div>
        <div class="feelings-wrapper">
            <div style="margin-bottom: 12px; font-size: 20px;">《登顶武功山》</div>
            <div style="padding-left: 10px; font-size: 16px;">拍摄于问卷星团队二月徒步之旅</div>
        </div>
    </div>
</form>


<script></script>
</body>