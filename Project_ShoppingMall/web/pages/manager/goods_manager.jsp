<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>商品管理</title>
	<%--静态包含base标签、css样式、jQuery文件--%>
	<%@include file="/pages/common/head.jsp"%>
	<script type="text/javascript">
		$(function(){
			/**
			 * confirm是确认提示框函数
			 * 参数是它的提示内容
			 * 他有两个按钮，一个确认，一个取消
			 * 返回true表示点击了确认，返回false表示点击取消
			 */
			$("a.deleteClass").click(function () {
				/*在事件的function函数中，有一个this对象，这个对象是当前正在响应事件的dom对象*/
				return confirm("你确定要删除【"+ $(this).parent().parent().find("td:first").text() +"】吗？");
			});

		});
	</script>
</head>
<body>

<div id="header">
	<img class="logo_img" alt="" src="static/img/logo.gif" >
	<span class="wel_word">管理员后台</span>
	<%--静态包含 manager 管理模块的菜单--%>
	<%@include file="/pages/common/manager_menu.jsp"%>
</div>

<div id="main">
	<table>
		<tr>
			<td  style="border-radius: 50px;background: #ffe57d">名称</td>
			<td  style="border-radius: 50px;background: #ffe57d">价格</td>
			<td  style="border-radius: 50px;background: #ffe57d">厂家</td>
			<td  style="border-radius: 50px;background: #ffe57d">销量</td>
			<td  style="border-radius: 50px;background: #ffe57d">库存</td>
			<td colspan="2"  style="border-radius: 50px;background: #ffe57d">操作</td>
		</tr>

		<c:forEach items="${requestScope.page.items}" var="Goods">
			<tr>
				<td>${Goods.name}</td>
				<td>${Goods.price}</td>
				<td>${Goods.author}</td>
				<td>${Goods.sales}</td>
				<td>${Goods.stock}</td>
				<td >
					<a style="border-radius: 50px;background: #ffe57d"
					   href="goodsUpdateServlet?id=${Goods.id}&pageNo=${requestScope.page.pageNo}">&nbsp;修改&nbsp;</a>
				</td>
				<td >
					<a style="border-radius: 50px;background: #ffe57d"
					   class="deleteClass"
					   href="manager/GoodsServlet?action=delete&id=${Goods.id}&pageNo=${requestScope.page.pageNo}">&nbsp;删除&nbsp;</a>
				</td>
			</tr>
		</c:forEach>

		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td>
				<a style="border-radius: 50px;background: #39987c" href="pages/goods/goods_edit.jsp">&nbsp;添加商品&nbsp;</a>
			</td>
		</tr>
	</table>

	<%--		&lt;%&ndash;分页条开始&ndash;%&gt;--%>
	<%--		<div id="page_nav">--%>
	<%--			&lt;%&ndash;页码大于首页才显示&ndash;%&gt;--%>
	<%--			<c:if test="${requestScope.page.pageNo > 1}">--%>
	<%--				<a href="${requestScope.page.url}&pageNo=1">首页</a>--%>
	<%--				<a href="${requestScope.page.url}&pageNo=${requestScope.page.pageNo-1}">上一页</a>--%>
	<%--				<a href="${requestScope.page.url}&pageNo=${requestScope.page.pageNo-1}">${requestScope.page.pageNo-1}</a>--%>
	<%--			</c:if>--%>
	<%--			【${requestScope.page.pageNo}】--%>
	<%--				<c:if test="${requestScope.page.pageNo < requestScope.page.pageTotal}">--%>
	<%--					<a href="${requestScope.page.url}&pageNo=${requestScope.page.pageNo+1}">${requestScope.page.pageNo+1}</a>--%>
	<%--					<a href="${requestScope.page.url}&pageNo=${requestScope.page.pageNo+1}">下一页</a>--%>
	<%--					<a href="${requestScope.page.url}&pageNo=${requestScope.page.pageTotal}">末页</a>--%>
	<%--				</c:if>--%>
	<%--			共${requestScope.page.pageTotal}页，${requestScope.page.pageTotalCount}条记录--%>
	<%--			到第<input value="${param.pageNo}" name="pn" id="pn_input"/>页--%>
	<%--			<input id="searchPageBtn" type="button" value="确定">--%>

	<%--			<script type="text/javascript">--%>
	<%--				$(function(){--%>
	<%--					//跳到指定的页码--%>
	<%--					$("#searchPageBtn").click(function(){--%>
	<%--						var pageNo = $("#pn_input").val();--%>
	<%--						var pageTotal = ${requestScope.page.pageTotal};--%>
	<%--						//javascript语言中提供了一个location地址栏对象--%>
	<%--						//它有一个属性叫href，它可以获取浏览器地址栏中的地址--%>
	<%--						//href属性可读，可写--%>
	<%--						if (pageNo >0 && pageNo < pageTotal+1){--%>
	<%--							location.href= "${pageScope.basePath}${requestScope.page.url}&pageNo=" + pageNo;--%>
	<%--						}else if (pageNo < 1){--%>
	<%--							location.href= "${pageScope.basePath}${requestScope.page.url}&pageNo=1";--%>
	<%--						}else if (pageNo > pageTotal){--%>
	<%--							location.href= "${pageScope.basePath}${requestScope.page.url}&pageNo=" + pageTotal;--%>
	<%--						}--%>

	<%--					});--%>
	<%--				});--%>

	<%--			</script>--%>

	<%--		</div>--%>
	<%--		&lt;%&ndash;分页条结束&ndash;%&gt;--%>

	<%--静态包含分页条--%>
	<%@include file="/pages/common/page_nav.jsp"%>



</div>

<%--静态包含页脚内容--%>
<%@include file="/pages/common/footer.jsp"%>
<%--小萝莉妹子--%>
<%@include file="/pages/common/little_girl.jsp"%>
</body>
</html>