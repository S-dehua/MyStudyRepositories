<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>订单管理</title>
	<%--静态包含base标签、css样式、jQuery文件--%>
	<%@include file="/pages/common/head.jsp"%>

</head>
<body>
	
	<div id="header">
			<img class="logo_img" alt="" src="static/img/logo.gif" >
			<span class="wel_word">订单管理后台</span>

		<%--静态包含 manager 管理模块的菜单--%>
		<%@include file="/pages/common/manager_menu.jsp"%>

	</div>
	
	<div id="main">
		<table style="margin-left: 30px">
			<tr>
				<td style="border-radius: 50px;background: #ffe57d">日期</td>
				<td style="border-radius: 50px;background: #ffe57d">金额</td>
				<td style="border-radius: 50px;background: #ffe57d">订单号</td>
				<td style="border-radius: 50px;background: #ffe57d">发货</td>
				<td style="border-radius: 50px;background: #ffe57d">操作</td>

			</tr>

			<c:forEach items="${orders}" var="order">
				<tr>
					<td>${order.createTime}</td>
					<td>${order.price}</td>
					<td>${order.orderId}</td>
						<%--0未发货，1已发货，2已签收--%>
					<c:if test="${order.status==0}">
						<td>未发货</td>
					</c:if>
					<c:if test="${order.status==1}">
						<td>已发货</td>
					</c:if>
					<c:if test="${order.status==2}">
						<td>已签收${doge}</td>
					</c:if>


					<c:if test="${order.status==0}">
						<td><a href="orderHandleServlet?action=sendOutGoods&orderId=${order.orderId}">点击发货</a></td>
					</c:if>
					<c:if test="${order.status==1}">
						<td><a href="orderHandleServlet?action=signGoods&orderId=${order.orderId}" style="color: #39987c">点击签收</a></td>
					</c:if>
					<c:if test="${order.status==2}">
						<td><a href="orderHandleServlet?action=doge&orderId=${order.orderId}" style="color: red">点赞好评</a></td>
					</c:if>

						<%-- <td>${order.status==0?"未发货":order.status==1?"已发货":"已签收"}</td>--%>
				</tr>
			</c:forEach>


<%--			<tr>--%>
<%--				<td>2021.06.30</td>--%>
<%--				<td>90.00</td>--%>
<%--				<td ><a style="border-radius: 50px;background: #39987c" href="#">&nbsp;查看详情&nbsp;</a></td>--%>
<%--				<td ><a style="border-radius: 50px;background: #39987c" href="#">&nbsp;点击发货&nbsp;</a></td>--%>
<%--			</tr>	--%>
<%--			--%>
<%--			<tr>--%>
<%--				<td>2021.06.20</td>--%>
<%--				<td>20.00</td>--%>
<%--				<td><a style="border-radius: 50px;background: #39987c" href="#">&nbsp;查看详情&nbsp;</a></td>--%>
<%--				<td>已发货</td>--%>
<%--			</tr>	--%>
<%--			--%>
<%--			<tr>--%>
<%--				<td>2021.06.23</td>--%>
<%--				<td>190.00</td>--%>
<%--				<td><a style="border-radius: 50px;background: #39987c" href="#">&nbsp;查看详情&nbsp;</a></td>--%>
<%--				<td>等待收货</td>--%>
<%--			</tr>		--%>
		</table>
	</div>


	<%--静态包含页脚内容--%>
	<%@include file="/pages/common/footer.jsp"%>
	<%--小萝莉妹子--%>
	<%@include file="/pages/common/little_girl.jsp"%>
</body>
</html>