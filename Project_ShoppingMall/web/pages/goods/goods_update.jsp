<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>修改商品</title>
    <%--静态包含base标签、css样式、jQuery文件--%>
    <%@include file="/pages/common/head.jsp"%>

    <style type="text/css">
        h1 {
            text-align: center;
            margin-top: 200px;
        }

        h1 a {
            color:red;
        }

        input {
            text-align: center;
        }
    </style>
</head>
<body>
<div id="header">
    <img class="logo_img" alt="" src="static/img/logo.gif" >
    <span class="wel_word">修改商品</span>
    <%--静态包含 manager 管理模块的菜单--%>
    <%@include file="/pages/common/manager_menu.jsp"%>
</div>

<div id="main">
    <form action="goodsUpdateServlet" method="post">
        <input type="hidden" name="pageNo" value="${param.pageNo}"/>
        <input type="hidden" name="action" value="update"/>
        <input type="hidden" name="id" value="${ requestScope.Goods.id}"/>
        <table>
            <tr>
                <td style="border-radius: 50px;background: #ffe57d">名称</td>
                <td style="border-radius: 50px;background: #ffe57d">价格</td>
                <td style="border-radius: 50px;background: #ffe57d">厂家</td>
                <td style="border-radius: 50px;background: #ffe57d">销量</td>
                <td style="border-radius: 50px;background: #ffe57d">库存</td>
                <td style="border-radius: 50px;background: #ffe57d" colspan="2">操作</td>
            </tr>
            <tr>
                <td><input name="name" type="text" value="${requestScope.Goods.name}"/></td>
                <td><input name="price" type="text" value="${requestScope.Goods.price}"/></td>
                <td><input name="author" type="text" value="${requestScope.Goods.author}"/></td>
                <td><input name="sales" type="text" value="${requestScope.Goods.sales}"/></td>
                <td><input name="stock" type="text" value="${requestScope.Goods.stock}"/></td>
                <td>
                    <input style="border-radius: 20%;color: #000;background: #39987c;width: 60px;height: 35px" type="submit" value="修改"/>
                </td>
            </tr>
        </table>
    </form>


</div>

<%--静态包含页脚内容--%>
<%@include file="/pages/common/footer.jsp"%>
<%--小萝莉妹子--%>
<%@include file="/pages/common/little_girl.jsp"%>
</body>
</html>