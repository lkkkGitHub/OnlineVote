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
<div style="color: #def4f2">
    <form action="userVote/voting" method="post">
        <h3>问题：${topicOptions.get(0).topic.topicContent}</h3>
        <p>多选：${topicOptions.get(0).topic.topicMax}</p>
        <c:forEach var="topicOption" items="${topicOptions}">
            <p><input type="checkbox" name="topicOptionId" value="${topicOption.topicOptionId}">
                    ${topicOption.option.optionContent}
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span>
                    <c:forEach items="${voteCount.countList}" var="count">
                        <c:if test="${topicOption.optionId == count.optionId}">
                            ${count.optionNum / voteCount.countPeople * 100} %
                        </c:if>
                    </c:forEach>
                </span>
            </p>
        </c:forEach>
        <span style="color: red">${msgVoting}</span>
        <input type="submit" value="提交">
    </form>
</div>
</body>
</html>