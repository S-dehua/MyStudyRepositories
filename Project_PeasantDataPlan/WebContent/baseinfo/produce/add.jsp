<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>增加农产品</title>
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
		<li><a href="${pageContext.request.contextPath}/baseinfo/produce?cmd=query">农产品基本信息管理</a> <span class="divider">/</span></li>
		<li class="active">增加农产品</li>
	</ul>
	<div class="alert">
		<button type="button" class="close" data-dismiss="alert">×</button>
		<h4>提示!</h4>
		<strong id="msg">${msg}</strong>
	</div>
	<div class="row-fluid">
		<div class="span12">
			<form class="form-horizontal"
				action="${pageContext.request.contextPath}/baseinfo/produce?cmd=add"
				method="post">
			<!-- 	<div class="control-group">
					<label class="control-label">农产品id</label>
					<div class="controls">
						<input type="text" name="produceid" maxlength="100">
					</div>
				</div> -->
				<div class="control-group">
					<label class="control-label">农产品名称</label>
					<div class="controls">
						<input id="peasantname" type="text" name="producename" maxlength="50" />
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">农产品价格</label>
					<div class="controls">
						<input type="text" name="produceprice" maxlength="100">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">农产品所在地</label>
					<div class="controls">
						<input type="text" name="produceaddr" maxlength="100">
					</div>
				</div>
			
				
				<div class="control-group">
					<div class="controls">
						<input type="submit" class="btn" value="提交"/>
						<button class="btn btn-primary" type="button"
							onclick="window.location.href='${pageContext.request.contextPath}/';">返回</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>