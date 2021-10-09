<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>农产品展示</title>
<script src="${pageContext.request.contextPath}/css/jquery-1.8.1.min.js"
	type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/css/bootstrap/js/bootstrap.min.js"
	type="text/javascript"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/stylesheets/theme.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/font-awesome/css/font-awesome.css">

</head>
<body>
	<ul class="breadcrumb">
		<li><a href="${pageContext.request.contextPath}">农产品基本信息管理</a> <span class="divider">/</span></li>
		<li class="active">农产品展示</li>
	</ul>
	<div class="alert">
		<button type="button" class="close" data-dismiss="alert">×</button>
		<h4>提示!</h4>
		<strong id="msg">${msg}</strong>
	</div>


	<div class="container">
		<table class="table table-hover">
			<!-- On rows -->
			<tr class="info">
				<th>农产品名称</th>
				<th>农产品所在地</th>
				<th>农产品价格</th>
				<th>操作</th>
			</tr>

			<!-- On cells (`td` or `th`) -->

			<c:forEach items="${produces}" var="produce">
				<tr>
					<td class="active">${produce.producename}</td>
					<td class="success">${produce.produceaddr}</td>
					<td class="warning">${produce.produceprice}</td>
					<td class="danger">
						<a class="btn" href="${pageContext.request.contextPath}/baseinfo/produce/add.jsp">增加</a>
						<a class="btn" href="${pageContext.request.contextPath}/baseinfo/produce?cmd=update&id=${produce.produceid}">修改</a>
						<a class="btn" href="${pageContext.request.contextPath}/baseinfo/produce?cmd=delete&id=${produce.produceid}">删除</a>
					</td>
				</tr>
			</c:forEach>

		</table>
	</div>


</body>
</html>