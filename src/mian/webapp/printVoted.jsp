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
<div>
    <span style="color: red">${msgNullVote}</span>
    <c:forEach items="${pageInfo.list}" var="vote">
        <a href="topicOption/findVotedTopicOption?voteId=${vote.voteId}" style="color: #def4f2">
            <div style="float: left;width: 50%;">
                <p>投票主题：${vote.topic}</p>
                <c:choose>
                    <c:when test="${vote.state == 1}">
                        <p>截至日期：${vote.deadline}</p>
                    </c:when>
                    <c:otherwise>
                        <p style="color: red">已经截至投票</p>
                    </c:otherwise>
                </c:choose>
                <p>创建用户：${vote.user.userName}</p>
            </div>
        </a>
    </c:forEach>
</div>
<div class="col-md-6">
    当前 ${pageInfo.pageNum}页,总${pageInfo.pages}页,总 ${pageInfo.total} 条记录
    <ul>
        <li><a href="vote/findUserVoted?pageNum=1">首页</a></li>
        <c:if test="${pageInfo.hasPreviousPage }">
            <li><a href="vote/findUserVoted?pageNum=${pageInfo.pageNum-1}"
                   aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
            </a></li>
        </c:if>
        <c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
            <c:if test="${page_Num == pageInfo.pageNum }">
                <li class="active"><a href="">${page_Num }</a></li>
            </c:if>
            <c:if test="${page_Num != pageInfo.pageNum }">
                <li><a href="vote/findUserVoted?pageNum=${page_Num }">${page_Num }</a></li>
            </c:if>

        </c:forEach>
        <c:if test="${pageInfo.hasNextPage }">
            <li>
                <a href="vote/findUserVoted?pageNum=${pageInfo.pageNum+1 }">&raquo;
            </a></li>
        </c:if>
        <li><a href="vote/findUserVoted?pageNum=${pageInfo.pages}">末页</a></li>
    </ul>
</div>
</body>
</html>