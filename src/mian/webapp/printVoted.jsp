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
<span style="color: red">${msgNullVote}</span>
<c:forEach items="${votes}" var="vote">
    <a href="topicOption/findVotedTopicOption?voteId=${vote.voteId}" style="color: #def4f2">
        <div style="float: left;width: 50%;">
            <p>投票主题：${vote.topic}</p>
            <c:choose>
                <c:when test="${vote.state == 1}">
                    <p>截至日期：${vote.deadline}</p>
                </c:when>
                <c:otherwise>
                    <p>已经截至投票</p>
                </c:otherwise>
            </c:choose>
            <p>创建用户：${vote.user.userName}</p>
        </div>
    </a>
</c:forEach>
</body>
</html>