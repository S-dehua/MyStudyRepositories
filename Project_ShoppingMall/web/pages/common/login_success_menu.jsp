<%--
  Created by IntelliJ IDEA.
  User: coffee
  Date: 2021/2/28
  Time: 14:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>
<div>
    <span>欢迎<span class="um_span">${sessionScope.user.username}</span>光临sdehua购物网</span>
<%--    <a href="pages/order/order.jsp">我的订单</a>--%>
    <a href="orderServlet?action=showMyOrders" style="border-radius: 50px;background: #ffe57d">&nbsp;我的订单&nbsp;</a>
    <a href="userServlet?action=logOut" style="border-radius: 50px;background: #ffe57d">&nbsp;注销&nbsp;</a>
    <a href="index.jsp" style="border-radius: 50px;background: #ffe57d">&nbsp;返回&nbsp;</a>
</div>
<%--</body>--%>
<%--</html>--%>
