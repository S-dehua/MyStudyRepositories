<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:forward page="/admin/to/login/page.html"/>
<%-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test</tit.ple>
<base href="http://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/ "/>
<script type="text/javascript" src="jquery/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="layer/layer.js"></script>
<script>
	$(function(){
		
		$("#btn3").click(function(){
			var student = {
				"stuId":5,
				"stuName":"Tom",
				"address":{
					"province":"湖南",
					"city":"长沙",
					"street":"国瓷街道"
				},
				"subjectList":[
					{
						"subjectName":"JavaSE",
						"subjectScore":100
					},
					{
						"sunjectName":"SSM",
						"subjectScore":99
					}
				],
				"map":{
					"k1":"v1",
					"k2":"v2"
				}
			};
			
			var responseBody = JSON.stringify(student);
			
			$.ajax({
				"url":"send/compose/object.json",
				"type":"POST",
				"data":responseBody,
				"contentType":"application/json;charset=UTF-8",
				"dataType":"json",
				"success":function(response){
					console.log(response);
				},
				"error":function(response){
					console.log(response);
				}
			});
			
		});
		
		
		//===============================
		$("#btn2").click(function(){
			
			//准备好要发送到服务器端的数组
			var array = [5,8,12];
			
			//将Json数组转换为Json字符串
		var requestBody = JSON.stringify(array);
		
		$.ajax({
			"url":"send/array/two.html",
			"type":"post",
			"data":requestBody,
			"contentType":"application/json;charset=UTF-8",
			"dataType":"text",
			"success":function(response){
				alert(response);
			},
			"error":function(response){
				alert(response);
			}
		});
			
	});
		//==============================
		$("#btn1").click(function(){
			
			$.ajax({
				"url":"send/array/one.html",
				"type":"post",
				"data":{
					"array":[5,8,12]
				},
				"dataType":"text",
				"success":function(response){
					alert(response);
				},
				"error":function(response){
					alert(response);
				}
			});
			
		});
		
		$("#btn4").click(function(){
			layer.msg("Layer的弹框");
		});
	});
</script>
</head>
<body>

	<a href="test/ssm.html">测试SSM整合的环境</a>
	<br>
	<button id="btn1">Send [5,8,12] --One</button><br/>
	<button id="btn2">Send [5,8,12] --Two</button><br/>
	<button id="btn3">Send Compose Object</button><br/>
	
	<button id="btn4">点我弹框</button><br/>
	
	
	<a href="admin/to/login/page.html">进入后台主页</a>

</body>
</html> --%>