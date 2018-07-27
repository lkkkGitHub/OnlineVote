<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<div style="width: 100%">
    <span style="color: red">${msgNullVote}</span>
    <c:forEach items="${votes}" var="vote">
        <a href="?${vote.voteId}" style="color: #def4f2">
            <div style="float: left;width: 50%;">
                <p>投票主题：${vote.topic}</p>
                <p>截至日期：${vote.deadline}</p>
                <p>创建用户：${vote.user.userName}</p>
            </div>
        </a>
    </c:forEach>
</div>
</body>
</html>