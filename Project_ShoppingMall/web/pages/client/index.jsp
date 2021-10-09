<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <title>sdehua购物网首页</title>
    <%--静态包含base标签、css样式、jQuery文件--%>
    <%@include file="/pages/common/head.jsp" %>

    <script type="text/javascript">
        $(function () {
            //给加入购物车按钮绑定单击事件
            $("button.addToCart").click(function () {
                var bookId = $(this).attr("bookId");
                location.href = "${basePath}cartServlet?action=addItem&id=" + bookId;

            });
        });

    </script>

</head>
<body>

<div id="header">
    <img class="logo_img" alt="" src="static/img/logo.gif">
    <span class="wel_word">&nbsp;sdehua购物网&nbsp;</span>
    <div>
        <%--如果用户还没有登录，显示【登录、注册菜单】--%>
        <c:if test="${empty sessionScope.user}">
            <a href="pages/user/login.jsp" style="border-radius: 50px;background: darkorange">&nbsp;登录&nbsp;</a> |
            <a href="pages/user/regist.jsp"
               style="border-radius: 50px;background: darkorange">&nbsp;注册&nbsp;</a> &nbsp;&nbsp;
        </c:if>
        <%--如果已经登录则显示登录成功之后的用户信息--%>
        <c:if test="${ not empty sessionScope.user}">
            <span>欢迎<span class="um_span">${sessionScope.user.username}</span>光临sdehua购物网</span>
            <a href="orderServlet?action=showMyOrders" style="border-radius: 50px;background: darkorange">&nbsp;我的订单&nbsp;</a>
            <a href="userServlet?action=logOut" style="border-radius: 50px;background: darkorange">&nbsp;注销&nbsp;</a>
        </c:if>

        <a href="pages/cart/cart.jsp" style="border-radius: 50px;background: darkorange;">&nbsp;购物车&nbsp;</a>
        <a href="pages/manager/goods_manager.jsp"
           style="border-radius: 50px;background: darkorange">&nbsp;后台管理&nbsp;</a>
    </div>
</div>

<%--<div class="home-banner">--%>
<%--    <img src="static/img/banner1235.jpg">--%>
<%--    <img src="static/img/banner1234.jpg">--%>
<%--</div>--%>

<%----%>
<div class="swiper-container">
    <div class="swiper-wrapper">
        <div class="swiper-slide">
            <img alt="" src="static/img/banner1234.jpg">
        </div>
        <div class="swiper-slide">
            <img alt="" src="static/img/banner1235.jpg">
        </div>
        <div class="swiper-slide">
            <img alt="" src="static/img/banner1236.jpg">
        </div>
        <div class="swiper-slide">
            <img alt="" src="static/img/banner1237.jpg">
        </div>
    </div>
    <!-- Add Pagination -->
    <div class="swiper-pagination"></div>
</div>

<!-- Swiper JS -->
<script src="../package/swiper-bundle.min.js"></script>

<!-- Initialize Swiper -->
<script>
    var swiper = new Swiper('.swiper-container', {
        slidesPerView: 'auto',
        spaceBetween: 30,
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        },
    });
</script>
<%----%>

<div class="slide" style="background: darkorange;height: 10px;width: 100%"></div>


<div id="main">
    <div id="book">
        <div class="book_cond">
            <form action="client/GoodsServlet?action=pageByPrice" method="get">
                <input type="hidden" name="action" value="pageByPrice"/>
                价格：<input id="min" type="text" name="min" value="${param.min}"> 元 -
                <input id="max" type="text" name="max" value="${param.max}"> 元
                <input class="iconfont icon-zhinenghuaxuanpinicon5" type="submit"
                       style="border-radius: 100px;background: #fff6d2" value="查询"/>
            </form>
            <%----%>
            <form action="client/GoodsServlet?action=pageByName" method="get">
                <input type="hidden" name="action" value="pageByName"/>
                商品名：<input
                    style="width: 150px"
                    id="query"
                    type="text"
                    name="goodsName">
                <input class="iconfont icon-zhinenghuaxuanpinicon5" type="submit"
                       style="border-radius: 100px;background: #fff6d2"
                       value="查询"/>
            </form>
        </div>
        <div style="text-align: center">
            <c:if test="${empty sessionScope.cart.items}">
                <%--购物车为空的输出--%>
                <span></span>
                <div>
                    <span style="color: red">购物车暂无商品~</span>
                </div>
            </c:if>
            <c:if test="${not empty sessionScope.cart.items}">
                <%--购物车非空的输出--%>
                <span>您的购物车中有${sessionScope.cart.totalCount}件商品</span>
                <div>
                    您刚刚将<span style="color: red">${sessionScope.lastName}</span>加入到了购物车中
                </div>
            </c:if>

        </div>

        <c:forEach items="${requestScope.page.items}" var="goods">
            <div class="b_list">
                <div class="img_div">
                    <img class="book_img" alt="" src="${goods.imgPath}"/>
                </div>
                <div class="book_info">
                    <div class="book_name">
                        <span class="sp1">商品名:</span>
                        <span class="sp2">${goods.name}</span>
                    </div>
                    <div class="book_price">
                        <span class="sp1">价格:</span>
                        <span class="sp2">${goods.price}</span>
                    </div>
                    <div class="book_sales">
                        <span class="sp1">销量:</span>
                        <span class="sp2">${goods.sales}</span>
                    </div>
                    <div class="book_amount">
                        <span class="sp1">库存:</span>
                        <span class="sp2">${goods.stock}</span>
                    </div>
                    <div class="book_add">
                        <button bookId="${goods.id}" class="addToCart" style="border-radius: 100px;background: #fff6d2">
                            加入购物车
                        </button>
                    </div>
                </div>
            </div>
        </c:forEach>

    </div>


    <%--    &lt;%&ndash;分页条开始&ndash;%&gt;--%>
    <%--    <div id="page_nav">--%>
    <%--        &lt;%&ndash;页码大于首页才显示&ndash;%&gt;--%>
    <%--        <c:if test="${requestScope.page.pageNo > 1}">--%>
    <%--            <a href="${requestScope.page.url}&pageNo=1">首页</a>--%>
    <%--            <a href="${requestScope.page.url}&pageNo=${requestScope.page.pageNo-1}">上一页</a>--%>
    <%--            <a href="${requestScope.page.url}&pageNo=${requestScope.page.pageNo-1}">${requestScope.page.pageNo-1}</a>--%>
    <%--        </c:if>--%>
    <%--        【${requestScope.page.pageNo}】--%>
    <%--        <c:if test="${requestScope.page.pageNo < requestScope.page.pageTotal}">--%>
    <%--            <a href="${requestScope.page.url}&pageNo=${requestScope.page.pageNo+1}">${requestScope.page.pageNo+1}</a>--%>
    <%--            <a href="${requestScope.page.url}&pageNo=${requestScope.page.pageNo+1}">下一页</a>--%>
    <%--            <a href="${requestScope.page.url}&pageNo=${requestScope.page.pageTotal}">末页</a>--%>
    <%--        </c:if>--%>
    <%--        共${requestScope.page.pageTotal}页，${requestScope.page.pageTotalCount}条记录--%>
    <%--        到第<input value="${param.pageNo}" name="pn" id="pn_input"/>页--%>
    <%--        <input id="searchPageBtn" type="button" value="确定">--%>

    <%--        <script type="text/javascript">--%>
    <%--            $(function(){--%>
    <%--                //跳到指定的页码--%>
    <%--                $("#searchPageBtn").click(function(){--%>
    <%--                    var pageNo = $("#pn_input").val();--%>
    <%--                    var pageTotal = ${requestScope.page.pageTotal};--%>
    <%--                    //javascript语言中提供了一个location地址栏对象--%>
    <%--                    //它有一个属性叫href，它可以获取浏览器地址栏中的地址--%>
    <%--                    //href属性可读，可写--%>
    <%--                    if (pageNo >0 && pageNo < pageTotal+1){--%>
    <%--                        location.href= "${pageScope.basePath}${requestScope.page.url}&pageNo=" + pageNo;--%>
    <%--                    }else if (pageNo < 1){--%>
    <%--                        location.href= "${pageScope.basePath}${requestScope.page.url}&pageNo=1";--%>
    <%--                    }else if (pageNo > pageTotal){--%>
    <%--                        location.href= "${pageScope.basePath}${requestScope.page.url}&pageNo=" + pageTotal;--%>
    <%--                    }--%>

    <%--                });--%>
    <%--            });--%>

    <%--        </script>--%>

    <%--    </div>--%>
    <%--    &lt;%&ndash;分页条结束&ndash;%&gt;--%>

    <%--静态包含分页条--%>
    <%@include file="/pages/common/page_nav.jsp" %>


</div>

<div class="slide" style="background: darkorange;height: 10px;width: 100%"></div>


<%--静态包含页脚内容--%>
<%@include file="/pages/common/footer.jsp" %>

<%--小萝莉妹子--%>
<%@include file="/pages/common/little_girl.jsp" %>
</body>
</html>