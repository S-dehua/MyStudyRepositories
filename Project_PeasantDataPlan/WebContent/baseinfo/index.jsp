<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>数据采集平台</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/stylesheets/theme.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/font-awesome/css/font-awesome.css">
<script src="${pageContext.request.contextPath}/css/jquery-1.8.1.min.js"
	type="text/javascript"></script>
	 <script>
        $(function () {
            $("#card1").bind("click",function () {
                location = "baseinfo/peasant?cmd=query";
            });
            $("#card2").click(function () {
                location = "baseinfo/produce?cmd=query";
            });
            $("#card3").click(function () {
                location = "baseinfo/income?cmd=query";
            });
        })
    </script>
    <style type="text/css">
        div img{
            cursor: pointer;
            transition: all 0.6s;
        }
        div img:hover{
            transform: scale(1.4);
        }
    </style>
</head>
<body>
	<ul class="breadcrumb">
		<li><a href="${pageContext.request.contextPath}">数据采集平台</a> <span class="divider">/</span></li>
		<li class="active"></li>
	</ul>
	
	<div align="center">
    <img src="${pageContext.request.contextPath}/image/card1.png" id="card1" style="height: 260px;width:470px">
    <img src="${pageContext.request.contextPath}/image/card2.png" id="card2" style="height: 260px;width:470px">
    <img src="${pageContext.request.contextPath}/image/card3.png" id="card3" style="height: 260px;width:470px">
</div>	

</body>
</html>