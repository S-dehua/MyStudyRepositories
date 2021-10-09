<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>购物车</title>
	<style type="text/css">

		a {
			text-decoration:none;
		}

	</style>
	<%--静态包含base标签、css样式、jQuery文件--%>
	<%@include file="/pages/common/head.jsp"%>
<%--<base href="http://localhost:8080/BookStore02/">--%>


</head>
<body>
	
	<div id="header">
			<img class="logo_img" alt="" src="static/img/logo.gif" >
			<span class="wel_word">购物车</span>
		<%--静态包含登录成功之后的菜单--%>
		<%@include file="/pages/common/login_success_menu.jsp"%>

		<script type="text/javascript">
			$(function () {
				$("a.deleteItem").click(function () {
					return confirm("确定要删除《"+ $(this).parent().parent().find("td:first").text() +"》吗？");
				});
				$("#clearCart").click(function () {
					return confirm("确定要清空购物车吗？");
				});
				//给输入框绑定失去焦点事件blur ==== change内容发生改变事件
				$(".updateCount").change(function () {
					//获取商品名称
					var name = $(this).parent().parent().find("td:first").text();
					//获取商品数量
					var count = this.value;
					var id = $(this).attr("bookId");
					if (confirm("确定要将《"+ name +"》的数量修改为："+ count +"吗？")) {
						//发起请求。给服务器保存修改
						location.href = "${basePath}cartServlet?action=updateCount&count="+count+"&id="+id;
					} else{
						//defaultValue属性是表单项Dom对象的属性，它表示默认的value属性值。
						this.value = this.defaultValue;
					}
				});
			});
		</script>
	</div>
	
	<div id="main">
	
		<table>
			<tr style="background: #ffe57d">
				<td style="border-radius: 30px">商品名称</td>
				<td style="border-radius: 30px">数量</td>
				<td style="border-radius: 30px">单价</td>
				<td style="border-radius: 30px">金额</td>
				<td style="border-radius: 30px">操作</td>
			</tr>

			<c:if test="${empty sessionScope.cart.items}">
			<%--如果购物车空的情况--%>
				<tr>
					<td colspan="5">
						<a href="index.jsp" text-decoration:none>抱歉，购物车是空的~</a>
					</td>
				</tr>
<%--				<tr>--%>
<%--					<td colspan="5">--%>
<%--						<a href="index.jsp">Sorry,the shopping cart is empty~</a>--%>
<%--					</td>--%>
<%--				</tr>--%>
			</c:if>
			<c:if test="${not empty sessionScope.cart.items}">
			<%--如果购物车非空的情况--%>
				<c:forEach items="${sessionScope.cart.items}" var="entry">
					<tr>
						<td>${entry.value.name}</td>
						<td>
						<input class="updateCount" type="text"
							   bookId="${entry.value.id}"
							   value="${entry.value.count}" style="width:25px">
						</td>
						<td>${entry.value.price}</td>
						<td>${entry.value.totalPrice}</td>
						<td><a style="border-radius: 30px;background: #bbbbbb" class="deleteItem" href="cartServlet?action=deleteItem&id=${entry.value.id}">&nbsp;删除&nbsp;</a></td>
					</tr>
				</c:forEach>
			</c:if>

		</table>

		<%--如果购物车非空才输出页面的内容--%>
		<c:if test="${not empty sessionScope.cart.items}">
			<div class="cart_info">
				<span class="cart_span">购物车中共有<span class="b_count">${sessionScope.cart.totalCount}</span>件商品</span>
				<span class="cart_span">总金额<span class="b_price">${sessionScope.cart.totalPrice}</span>元</span>
				<span class="cart_span"><a style="border-radius: 30px;background: #bbbbbb" id="clearCart" href="cartServlet?action=clear">&nbsp;清空购物车&nbsp;</a></span>
				<span class="cart_span"><a style="border-radius: 30px;background: #bbbbbb" href="orderServlet?action=createOrder">&nbsp;去结账&nbsp;</a></span>
			</div>
		</c:if>

	
	</div>

	<%--静态包含页脚内容--%>
	<%@include file="/pages/common/footer.jsp"%>
	<%--小萝莉妹子--%>
	<%@include file="/pages/common/little_girl.jsp"%>
</body>
</html>