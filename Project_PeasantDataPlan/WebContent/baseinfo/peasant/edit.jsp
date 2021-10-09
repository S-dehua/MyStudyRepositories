<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>农户信息修改</title>
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
		<li><a href="${pageContext.request.contextPath}/baseinfo/produce?cmd=query">农户基本信息管理</a> <span class="divider">/</span></li>
		<li class="active">农户信息修改</li>
	</ul>
	<div class="alert">
		<button type="button" class="close" data-dismiss="alert">×</button>
		<h4>提示!</h4>
		<strong id="msg">${msg}</strong>
	</div>


	<div class="row-fluid">
		<div class="span12">
			<form class="form-horizontal"
				action="${pageContext.request.contextPath}/baseinfo/peasant?cmd=edit"
				method="post">
				<input type="hidden" name="id" value="${id}"/>
				<div class="control-group">
					<label class="control-label">户主姓名</label>
					<div class="controls">
						<input id="peasantname" type="text" name="peasantname" maxlength="50" placeholder="${peasant.peasantname}"/>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">农户地址</label>
					<div class="controls">
						<input type="text" name="peasantaddr" maxlength="100" placeholder="${peasant.peasantaddr}">
					</div>
				</div>
				
				<div class="control-group">
					<label class="control-label">农户状态</label>
					<div class="controls">
						<select name="peasantstate">
							<option value="1">贫困</option>
							<option value="2">脱贫</option>
							<option value="3">小康</option>
						</select>
					</div>
				</div>
				<div class="control-group">
					<div class="controls">
						<input type="submit" class="btn" value="提交"/>
						<a class="btn" href="javascript:history.back(-1)">返回</a>
					</div>
					
				</div>
			</form>
		</div>
	</div>
</body>
</html>