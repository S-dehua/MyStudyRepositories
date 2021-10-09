<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>农户收入信息管理</title>
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
		<li><a href="${pageContext.request.contextPath}">农户收入信息管理</a> <span class="divider">/</span></li>
		<li class="active">农户收入信息展示</li>
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
				<th>农户姓名</th>
				<th>收入种类</th>
				<th>收入金额</th>
				<th>操作</th>
			</tr>

			<!-- On cells (`td` or `th`) -->

			<c:forEach items="${incomes}" var="income">
				<tr>
					<td class="active">${income.peasantname}</td>
					<td class="success">${income.typename}</td>
					<td class="warning">${income.salary}</td>
					<td class="danger">
						<a class="btn" href="${pageContext.request.contextPath}/baseinfo/income/add.jsp">增加</a>
						<a class="btn" href="${pageContext.request.contextPath}/baseinfo/income?cmd=delete&id=${income.peasantid}">删除</a>
					</td>
				</tr>
			</c:forEach>

		</table>
	</div>


</body>
</html>