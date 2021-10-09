<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>农产品修改</title>
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
		<li><a href="${pageContext.request.contextPath}/baseinfo/produce?cmd=query">农产品基本信息管理</a> <span class="divider">/</span></li>
		<li class="active">农产品信息修改</li>
	</ul>
	<div class="alert">
		<button type="button" class="close" data-dismiss="alert">×</button>
		<h4>提示!</h4>
		<strong id="msg">${msg}</strong>
	</div>


	<div class="container">
		<form class="form-horizontal"
				action="${pageContext.request.contextPath}/baseinfo/produce?cmd=edit"
				method="post">
				<input type="hidden" name="id" value="${requestScope.id}"/>
			<div class="form-group">
				<label class="col-sm-2 control-label">农产品名称：</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="producename"
						placeholder="${requestScope.produce.producename}">
				</div> <br>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">农产品所在地：</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="produceaddr"
						placeholder="${requestScope.produce.produceaddr}">
				</div> <br>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">农产品价格：</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="produceprice"
						placeholder="${requestScope.produce.produceprice}">
				</div> <br>
			</div>
		<!-- 	<div class="form-group">
				<div class="col-sm-2">
					<div class="checkbox">
						<label> <input type="checkbox" name="sureAgain">防误触</label>
					</div> <br>
				</div>
			</div> -->
			<div class="form-group">
				<div class="col-sm-2 control-label">
					<button type="submit" class="btn btn-default">修改</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>