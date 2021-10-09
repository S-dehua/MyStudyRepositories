<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" language="java"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="UTF-8">
<%@include file="/WEB-INF/include-head.jsp"%>
<link rel="stylesheet" href="css/pagination.css" />
<script type="text/javascript" src="jquery/jquery.pagination.js"></script>
<script type="text/javascript">
	$(function() {
		//调用后面声明的函数，对页码导航条进行初始化操作
		initPagination();
	});

	//生成页码导航条
	function initPagination() {
		// 获取总记录数
		var totalRecoed = ${requestScope.pageInfo.total};
		//每页显示pageSize项数据
		var pageSize = ${requestScope.pageInfo.pageSize};
		//当前页数pageNum从0开始
		var pageNum = ${requestScope.pageInfo.pageNum - 1}
		;
		// 声明一个JSON对象存储Pagination要设置的属性
		var properties = {
			num_edge_entries : 2, //边缘页数
			num_display_entries : 5, //主体页数
			callback : pageSelectCallBack,
			items_per_page : pageSize,
			current_page : pageNum,
			prex_text : "上一页",
			next_text : "下一页"
		}
		// 生成页码导航条
		$("#Pagination").pagination(totalRecoed, properties);
	}

	// 用户点击“1、2、3”这样的页码时调用这个函数实现页面跳转
	function pageSelectCallBack(pageIndex, jQuery) {
		//根据pageIndex计算得到pageNum
		var pageNum = pageIndex + 1;
		//跳转页面
		window.location.href = "admin/get/page.html?pageNum=" + pageNum
				+ "&keyword=${param.keyword}";
		//由于每一个页码按钮都是超链接，所以我们要在这里取消超链接的默认行为
		return false;
	}
</script>

<body>

	<%@include file="/WEB-INF/include-nav.jsp"%>

	<div class="container-fluid">
		<div class="row">
			<%@include file="/WEB-INF/include-sidebar.jsp"%>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">
							<i class="glyphicon glyphicon-th"></i> 数据列表
							
						</h3>
					</div>
					<div class="panel-body">
						<form action="admin/get/page.html" class="form-inline" role="form"
							style="float: left;">
							<div class="form-group has-feedback">
								<div class="input-group">
									<div class="input-group-addon">查询条件</div>
									<input name="keyword" class="form-control has-success"
										type="text" placeholder="请输入查询条件">
								</div>
							</div>
							<button type="submit" class="btn btn-warning">
								<i class="glyphicon glyphicon-search"></i> 查询
							</button>
						</form>
						<button type="button" class="btn btn-danger"
							style="float: right; margin-left: 10px;">
							<i class=" glyphicon glyphicon-remove"></i> 删除
						</button>
						<a style="float: right;" href="admin/to/add/page.html"
							class="btn btn-primary"><i class="glyphicon glyphicon-plus"></i>
							新增 </a> <br>
						<hr style="clear: both;">
						<div class="table-responsive">
							<table class="table  table-bordered">
								<thead>
									<tr>
										<th width="30">#</th>
										<th width="30"><input type="checkbox"></th>
										<th>账号</th>
										<th>昵称</th>
										<th>邮箱</th>
										<th>创建时间</th>
										<th width="100">操作</th>
									</tr>
								</thead>
								<tbody>
									<c:if test="${empty requestScope.pageInfo.list }">
										<td colspan="6" align="center">抱歉！没有查询到您要的数据！</td>
									</c:if>
									<c:if test="${!empty requestScope.pageInfo.list }">
										<c:forEach items="${requestScope.pageInfo.list }" var="admin"
											varStatus="myStatus">
											<tr>
												<td>${myStatus.count }</td>
												<td><input type="checkbox"></td>
												<td>${admin.loginAcct }</td>
												<td>${admin.userName }</td>
												<td>${admin.email }</td>
												<td>${admin.createTime }</td>
												<td>
												<a href="assign/to/assign/role/page.html?adminId=${admin.id }&pageNum=${requestScope.pageInfo.pageNum }&keyword=${param.keyword }"
												class="btn btn-success btn-xs"><i class="glyphicon glyphicon-check"></i></a> 
												
												<a href="admin/to/edit/page.html?adminId=${admin.id }&pageNum=${requestScope.pageInfo.pageNum }&keyword=${param.keyword }"
													class="btn btn-primary btn-xs"><i class=" glyphicon glyphicon-pencil"></i></a> 
														<%-- <a id="delete_admin_once"
													href="admin/remove/${admin.id }/${requestScope.pageInfo.pageNum}/${param.keyword}.html"
													class="btn btn-danger btn-xs"><i
														class=" glyphicon glyphicon-remove"></i></a> --%>
														
												<button admin-delete admin-id="${admin.id}" page-num="${requestScope.pageInfo.pageNum}" keyword="${param.keyword}" user-name="${admin.userName }"
												id="delete_admin_once" class="btn btn-danger btn-xs"><i class=" glyphicon glyphicon-remove"></i>
												</button>
												</td>
											</tr>
										</c:forEach>
									</c:if>
								</tbody>
								<tfoot>
									<tr>
										<td colspan="6" align="center">
											<div id="Pagination" class="pagination">
												<!-- 这里显示分页 -->
											</div>
										</td>
									</tr>
								</tfoot>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	<script type="text/javascript">
		$("button[admin-delete]").click(function() {
			var adminId = $(this).attr("admin-id");
			var pageNum = $(this).attr("page-num");
			var keyword = $(this).attr("keyword");
			var userName = $(this).attr("user-name");
			
			var userId = $("#userId_li").text();
			var adminId_str = " ID:"+adminId;
			//console.log(userId==adminId_str)

			//console.log(adminId+"、"+pageNum+"、"+keyword);
			
			layer.confirm('确认要删除用户 [ '+userName+' ] 吗？', {
				  btn: ['确认','取消'] //按钮
			}, function(){
				
				 $.ajax({
					"url":"admin/remove/"+adminId+"/"+pageNum+"/"+keyword+".html",
					"type":"get",
					"async":true,
					"success":function(response){
					    
					    if(response=="{\"result\":\"FAILED\",\"message\":\"不允许访问\"}"){
					        layer.msg('无权限删除该资源');
					        return null;
					    }
						
					    if(userId==adminId_str){
							layer.msg('系统错误: 该账户正在试图删除自己');
						}else{
							layer.msg('删除成功, 请刷新', {icon: 1});
						}
						//window.location.reload()  //刷新页面
					
					},
					error:function(){
						layer.msg('删除失败');
					}
				});
				 
				 

				//window.location.href="admin/remove/"+adminId+"/"+pageNum+"/"+keyword+".html";
			  
			}, function(){
			  layer.msg('已取消该操作', {
			    time: 2000, //2s后自动关闭
			  });
			});
			
		});
		
	</script>

</body>
</html>

