<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>增加农户</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/stylesheets/theme.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/font-awesome/css/font-awesome.css">
<script src="${pageContext.request.contextPath}/css/jquery-1.8.1.min.js"
	type="text/javascript"></script>
</head>
<body>

	<ul class="breadcrumb">
		<li><a href="#">农户基本信息管理</a> <span class="divider">/</span></li>
		<li class="active">增加农户</li>
	</ul>
	<div class="alert">
		<button type="button" class="close" data-dismiss="alert">×</button>
		<h4>提示!</h4>
		<strong id="msg">${msg}</strong>
	</div>
	<div class="row-fluid">
		<div class="span12">
			<form class="form-horizontal"
				action="${pageContext.request.contextPath}/baseinfo/peasant?cmd=add"
				method="post">
				<div class="control-group">
					<label class="control-label">户主姓名</label>
					<div class="controls">
						<input id="peasantname" type="text" name="peasantname" maxlength="50" />
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">农户地址</label>
					<div class="controls">
						<input type="text" name="peasantaddr" maxlength="100">
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