<%--
  Created by IntelliJ IDEA.
  User: coffee
  Date: 2021/2/28
  Time: 14:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String basePath = request.getScheme()
            + "://"
            + request.getServerName()
            + ":"
            + request.getServerPort()
            + request.getContextPath()
            + "/";

    pageContext.setAttribute("basePath",basePath);
%>

<!--写base标签，永远固定相对路径跳转的结果-->
<base href="<%=basePath%>">
<link type="text/css" rel="stylesheet" href="static/css/style.css">
<link type="text/css" rel="stylesheet" href="static/css/iconfont.css">
<link type="text/css" rel="stylesheet" href="static/css/swiper-bundle.min.css">
<script type="text/javascript" src="static/script/swiper-bundle.min.js"></script>
<script type="text/javascript" src="static/script/jquery-1.7.2.js"></script>
<!-- Initialize Swiper -->
