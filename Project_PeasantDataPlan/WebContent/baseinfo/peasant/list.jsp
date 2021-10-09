
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>农户信息</title>
<script src="${pageContext.request.contextPath}/css/jquery-1.8.1.min.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/css/bootstrap/js/bootstrap.min.js"
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
		<li><a href="${pageContext.request.contextPath}">农户信息</a> <span
			class="divider">/</span></li>
		<li class="active">农户信息展示</li>
	</ul>
	<div class="alert">
		<button type="button" class="close" data-dismiss="alert">×</button>
		<h4>提示!</h4>
		<strong id="msg">${msg}</strong>
	</div>

	<div class="container mt-3">
		<form
			action="${pageContext.request.contextPath}/baseinfo/peasant?cmd=query"
			method="post">
			<div class="input-group mb-3">
				<input type="text" class="form-control" placeholder="按姓名查询农户信息"
					name="queryByName"> <input type="submit"
					class="form-control btn btn-primary" value="提交" />
			</div>
		</form>
	</div>

	<div class="container">
		<table class="table table-hover">
			<!-- On rows -->
			<tr class="info">
				<th>户主姓名</th>
				<th>农户地址</th>
				<th>农户状态</th>
				<th>操作</th>
			</tr>

			<!-- On cells (`td` or `th`) -->
		<c:if test="${!empty lists}">
			<c:forEach items="${lists}" var="list">

				
					<tr>
						<td class="active">${list.peasantname}</td>
						<td class="success">${list.peasantaddr}</td>
						<td class="warning">${list.peasantstate == 1?"贫困":list.peasantstate == 2?"脱贫":"小康"}</td>
						<td class="danger"><a class="btn"
							href="${pageContext.request.contextPath}/baseinfo/peasant/add.jsp">增加</a>
							<a class="btn"
							href="${pageContext.request.contextPath}/baseinfo/peasant?cmd=moveEdit&id=${list.getPeasantid()}">修改</a>
						</td>
					</tr>
				
			</c:forEach>
			</c:if>
			
			<c:if test="${empty lists}">
				<tr class="info" align="center">
				抱歉未搜索到用户！
				</tr>
			</c:if>

		</table>
	</div>


</body>
</html>