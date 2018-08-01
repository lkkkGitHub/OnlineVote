<%@ page language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%
    //    response.setHeader("refresh", "3;URL = voting.jsp");
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
    <TITLE> New Document </TITLE>
    <META NAME="Generator" CONTENT="EditPlus">
    <META NAME="Author" CONTENT="">
    <META NAME="Keywords" CONTENT="">
    <META NAME="Description" CONTENT="">
    <base href="<%=basePath%>">
    <title></title>
    <script LANGUAGE="JavaScript">
        <!--
        function show() {
            document.getElementById("a").style.display = "none";
            document.getElementById("b").style.display = "none";
        }

        function show_one() {
            document.getElementById("a").style.display = "block";
            document.getElementById("b").style.display = "block";
        }

        //-->
    </script>
</head>
<body>
<%--<label type="text" id="a" value="姓名">姓名</label>--%>
<p style="color: #def4f2">成功</p>
<%--<input type="text" id="b"/><br>--%>
<%--<input type="button" value="隐藏" onclick="show()"/>--%>
<%--<input type="button" value="显示" onclick="show_one()"/>--%>
</body>
</html>
