<%--
  Created by IntelliJ IDEA.
  User: coffee
  Date: 2021/2/28
  Time: 19:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        #live2dcanvas {
            border: none !important;
        }
    </style>
</head>
<body>
<script type="text/javascript" charset="utf-8" async=""
        src="https://cdn.jsdelivr.net/npm/live2d-widget@3.0.4/lib/L2Dwidget.min.js">
</script>
<!-- 左下角live2d效果 -->
<script type="text/javascript">
    setTimeout(() => {
        L2Dwidget.init({
            "model": {
                "scale": 0.5
            },
            "display": {
                "position": "left",
                "width": 120,
                "height": 260,
                "hOffset": 0,
                "vOffset": -20
            },
            "mobile": {
                "show": true,
                "scale": 0.5
            },
            "react": {
                "opacityDefault": 0.7,
                "opacityOnHover": 0.2
            }
        });
    }, 1000)
</script>

<!-- 鼠标点击效果 -->
<%--失效了--%>
</body>
</html>
