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
    <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
    <script type="text/javascript">
        function getData(pageNum) {
            $.getJSON("vote/findUserVotedJson", {pageNum: pageNum},
                function (data) {
                    var str ="";
                    for (var i = 0; i < data.list.length; i++) {
                        str += "<a href=\"topicOption/findVotedTopicOption?voteId=" + data.list[i].voteId + "\" style=\"color: #def4f2\">";
                        str += "<div style=\"float: left;width: 50%;\">";
                        str += "<p>投票主题：" + data.list[i].topic + "</p>";
                        if (data.list[i].state == 1) {
                            str += "<p>截至日期：" + data.list[i].deadline + "</p>";
                        } else {
                            str += "<p style=\"color: red\">已经截至投票</p>";
                        }
                        str += "<p>创建用户:" + data.list[i].user.userName + "</p>";
                        str += "</div>";
                        str += "</a>";
                    }
                    $("#div").html(str);

                    str = "<nav aria-label=\"Page navigation\">\n" +
                        "        <ul class=\"pagination\">\n" +
                        "            <li><span onclick=\"getData(1)\">首页</span></li>";
                    if (data.hasPreviousPage == true) {
                        str += "<li><span onclick=\"getData(" +  (data.pageNum-1) + ")\"\n" +
                            "                       aria-label=\"Previous\"> <span aria-hidden=\"true\">&laquo;</span>\n" +
                            "                </span></li>";
                    }
                    for (var i = 0; i < data.navigatepageNums.length; i++) {
                        if (data.navigatepageNums[i] == data.pageNum) {
                            str += "<li class=\"active\"><span onclick=\"\">"+ (data.navigatepageNums[i]) +"</span></li>";
                        }
                        if (data.navigatepageNums[i] != data.pageNum) {
                            str += "<li><span onclick=\"getData("+ data.navigatepageNums[i] +")\">"+ data.navigatepageNums[i] +"</span></li>";
                        }
                    }
                    if (data.hasNextPage == true) {
                        str += "<li><span onclick=\"getData("+ (data.pageNum+1) +")\"\n" +
                            "                       aria-label=\"Next\"> <span aria-hidden=\"true\">&raquo;</span>\n" +
                            "                </span></li>";
                    }
                    str += "<li><span onclick=\"getData("+ (data.pages) +")\">末页</span></li>";
                    str += " </ul>\n" +
                        "    </nav>";
                    $("#page").html(str);
                });
        }
    </script>

</head>
<body>
<span style="color: red">${msgNullVote}</span>
<div id="div">
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

<div id="page" class="col-md-6">
    <nav aria-label="Page navigation">
        <ul class="pagination">
            <li><span onclick="getData(1)">首页</span></li>
            <c:if test="${pageInfo.hasPreviousPage }">
                <li><span onclick="getData(${pageInfo.pageNum-1})"
                       aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
                </span></li>
            </c:if>
            <c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
                <c:if test="${page_Num == pageInfo.pageNum }">
                    <li class="active"><span onclick="">${page_Num }</span></li>
                </c:if>
                <c:if test="${page_Num != pageInfo.pageNum }">
                    <li><span onclick="getData(${page_Num})">${page_Num}</span></li>
                </c:if>
            </c:forEach>
            <c:if test="${pageInfo.hasNextPage }">
                <li><span onclick="getData(${pageInfo.pageNum+1 })"
                       aria-label="Next"> <span aria-hidden="true">&raquo;</span>
                </span></li>
            </c:if>
            <li><span onclick="getData(${pageInfo.pages})">末页</span></li>
        </ul>
    </nav>
</div>
</body>
</html>