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
</head>
<body>
<form action="vote/createVote" method="post">
    <p>
        输入投票标题
        <input type="text" name="topic"/>
    </p>
    <p>
        输入投票题目
        <input type="text" name="topicContent"/>
    </p>
    <p>
        最多能选几项：
        <input type="radio" name="topicMax" value="1">1
        <input type="radio" name="topicMax" value="2">2
        <input type="radio" name="topicMax" value="3">3
    </p>
    <p>
        选项一
        <input type="text" name="option1"/>
    </p>
    <p>
        选项二
        <input type="text" name="option2"/>
    </p>
    <p>
        选项三
        <input type="text" name="option3"/>
    </p>
    <p>
        选项四
        <input type="text" name="option4"/>
    </p>
    <input type="submit" value="发布投票">
</form>
</body>
</html>