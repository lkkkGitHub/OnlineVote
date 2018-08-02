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
    <h3>问题：${topicOptions.get(0).topic.topicContent}</h3>
    <p>多选：${topicOptions.get(0).topic.topicMax}</p>
    <c:forEach var="topicOption" items="${topicOptions}">
        <p>
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
    <a href="vote/findUserVoted">返回</a>
</div>

</body>
</html>