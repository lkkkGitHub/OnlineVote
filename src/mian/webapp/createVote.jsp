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
<div style="color: aliceblue">
    <form action="vote/createVote" method="post">
        <p>
            输入投票主题
            <input type="text" name="topic" value="${cookie.cookieTopic.value}"/>
            <span style="color: red">${msgTopic}</span>
        </p>
        <p>
            输入投票题目
            <input type="text" name="topicContent" value="${cookie.cookieTopicContent.value}"/>
            <span style="color: red">${msgTopicContent}</span>
        </p>
        <p>
            最多能选几项：
            <input type="radio" name="topicMax" value="1">1
            <input type="radio" name="topicMax" value="2">2
            <input type="radio" name="topicMax" value="3">3
            <span style="color: red">${msgTopicMax}</span>
        </p>
        <p>
            选项一
            <input type="text" name="option1" value="${cookie.cookieOption1.value}"/>
        </p>
        <p>
            选项二
            <input type="text" name="option2" value="${cookie.cookieOption2.value}"/>
        </p>
        <p>
            选项三
            <input type="text" name="option3" value="${cookie.cookieOption3.value}"/>
        </p>
        <p>
            选项四
            <input type="text" name="option4" value="${cookie.cookieOption4.value}"/>
            <span style="color: red">${msgOptionContent}</span>
        </p>
        <p>
            截至天数
            <input type="text" name="deadlineTime" value="${cookie.cookieDeadline.value}"/>
            <span style="color: red">${msgDeadline}</span>
        </p>
        <input type="submit" value="发布投票" class="btn btn-primary tm-btn-submit">
    </form>
</div>
</body>
</html>