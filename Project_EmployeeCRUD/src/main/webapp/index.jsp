<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>员工列表</title>
 
<!-- web路径：
不以/开始的相对路径，找资源，以当前资源的路径为基准，经常容易出问题。
以/开始的相对路径，找资源，以服务器的路径为标准(http://localhost:3306)；需要加上项目名
		http://localhost:3306/crud ->${pageContext.request.contextPath}
 -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/js/jquery-1.12.4.min.js"></script>
<link
	href="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- 员工修改模态框 -->
	<div class="modal fade" id="empEditModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">修改员工信息</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal">
						<div class="form-group">
							<label class="col-sm-2 control-label">员工名</label>
							<div class="col-sm-6">
								<p class="form-control-static" id="empName_update_static"></p>
							</div>
							<div id="empName_error_msg2" class="col-sm-4"
								style="color: #A94442;"></div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">邮 箱</label>
							<div class="col-sm-6">
								<input type="email" name=email class="form-control"
									id="email_update_input" placeholder="请输入邮箱">
							</div>
							<div id="email_error_msg2" class="col-sm-4"
								style="color: #A94442;"></div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">性 别</label>
							<div class="col-sm-8">
								<label class="radio-inline"> <input type="radio"
									name="gender" id="gender1_update_input" value="男"> 男
								</label> <label class="radio-inline"> <input type="radio"
									name="gender" id="gender2_update_input" value="女"> 女
								</label>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">部门名</label>
							<div class="col-sm-4">
								<!-- 部门提交部门Id即可 -->
								<select class="form-control" name="dId" id="dept_upadte_select">

								</select>
							</div>
						</div>

					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="emp_update_btn">更新</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 员工添加模态框 -->
	<div class="modal fade" id="empAddModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">添加员工信息</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal">
						<div class="form-group">
							<label class="col-sm-2 control-label">员工名</label>
							<div class="col-sm-6">
								<input type="text" name="empName" class="form-control"
									id="empName_add_input" placeholder="请输入员工姓名">
							</div>
							<div id="empName_error_msg" class="col-sm-4"
								style="color: #A94442;"></div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">邮 箱</label>
							<div class="col-sm-6">
								<input type="email" name=email class="form-control"
									id="email_add_input" placeholder="请输入邮箱">
							</div>
							<div id="email_error_msg" class="col-sm-4"
								style="color: #A94442;"></div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">性 别</label>
							<div class="col-sm-8">
								<label class="radio-inline"> <input type="radio"
									name="gender" id="gender1_add_input" value="男"> 男
								</label> <label class="radio-inline"> <input type="radio"
									name="gender" id="gender2_add_input" value="女"> 女
								</label>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">部门名</label>
							<div class="col-sm-4">
								<!-- 部门提交部门Id即可 -->
								<select class="form-control" name="dId" id="dept_add_select">

								</select>
							</div>
						</div>

					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="emp_save_btn">保存</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 搭建显示页面 -->
	<div class="container">
		<!-- 标题 -->
		<div class="row">
			<div class="col-md-12">
				<h1>sdehua-员工列表</h1>
			</div>
		</div>
		<!-- 按钮 -->
		<div class="row">
			<div class="col-md-4 col-md-offset-8">
				<button class="btn btn-success" id="emp_add_modal_btn">
					<span class="glyphicon glyphicon glyphicon-plus" aria-hidden="true"></span>
					新增
				</button>
				<button class="btn btn-danger" id="emp_delete_all_btn">
					<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
					删除
				</button>
			</div>
		</div>
		<!-- 显示表格数据 -->
		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover" id="emps_table">
					<thead>
						<tr>
							<th>
								<input type="checkbox" id="check_all"/>
							</th>
							<th>#</th>
							<th>员工名</th>
							<th>性别</th>
							<th>邮箱</th>
							<th>部门名</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>

					</tbody>
				</table>
			</div>
		</div>

		<!-- 显示分页信息 -->
		<div class="row">
			<!--分页文字信息  -->
			<div class="col-md-4" id="page_info_area"></div>
			<!-- 分页条信息 -->
			<div class="col-md-8" id="page_nav_area"></div>
		</div>

	</div>

	<script type="text/javascript">
		var totalRecord, currentPage;

		//1.页面加载完成之后，直接去发送一个ajax请求，拿到分页数据
		$(function() {
			to_page(1);
		});

		function to_page(pn) {
			$.ajax({
				url : "${pageContext.request.contextPath}/emps",
				data : "pn=" + pn,
				type : "get",
				success : function(result) {
					//修复全选按钮在页面跳转后仍存在的bug
					$("#check_all").prop("checked",false);
					//console.log(result);
					//1.解析并显示员工数据
					build_emps_table(result);
					//2.解析并显示分页信息
					build_page_info(result);
					//3.解析并显示分页条
					build_page_nav(result);
				}
			});
		};

		//------------------------------------
		function build_emps_table(result) {
			//清空table表格
			$("#emps_table tbody").empty();

			var emps = result.extend.pageInfo.list;

			$.each(emps, function(index, item) {
				var checkBox_td = $("<td><input type='checkbox' class='check_item'/></td>")
				//alert(item.empName)
				var empId_td = $("<td></td>").append(item.empId);
				var empName_td = $("<td></td>").append(item.empName);
				//处理gender
				var gender_td = $("<td></td>").append(
						item.gender);
				var email_td = $("<td></td>").append(item.email);
				var deptName_td = $("<td></td>").append(
						item.department.deptName);
				/**
				<button class="btn btn-primary btn-sm">
					<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
					编辑
				</button>
				<button class="btn btn-danger btn-sm">
				<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
					删除
				</button>
				 */
				var edit_btn = $("<button></button>").addClass(
						"btn btn-primary btn-sm edit_btn").append(
						$("<span></span>").addClass(
								"glyphicon glyphicon-pencil")).append("编辑");
				//为编辑按钮添加一个自定义的属性，来表示当前员工的id
				edit_btn.attr("edit-id",item.empId);
								
				var delete_btn = $("<button></button>").addClass(
						"btn btn-danger btn-sm delete_btn").append(
						$("<span></span>")
								.addClass("glyphicon glyphicon-trash")).append(
						"删除");
						
				//为删除按钮添加一个自定义的属性，来表示当前员工的id
				delete_btn.attr("delete-id",item.empId);
				
				
				var btn_td = $("<td></td>").append(edit_btn).append(" ")
						.append(delete_btn);

				$("<tr></tr>").append(checkBox_td).append(empId_td).append(empName_td).append(
						gender_td).append(email_td).append(deptName_td).append(
						btn_td).appendTo("#emps_table tbody");
			});
		};

		//-----------------------------------
		function build_page_info(result) {
			$("#page_info_area").empty();
			$("#page_info_area").append(
					"当前第" + result.extend.pageInfo.pageNum + "页,总"
							+ result.extend.pageInfo.pages + "页,总"
							+ result.extend.pageInfo.total + "条记录");

			totalRecord = result.extend.pageInfo.total;
			currentPage = result.extend.pageInfo.pageNum;
		};

		//-----------------------------------
		function build_page_nav(result) {
			//page_nav_area
			$("#page_nav_area").empty();
			var ul = $("<ul></ul>").addClass("pagination");

			//构建元素
			var firstPageLi = $("<li></li>").append(
					$("<a></a>").append("首页").attr("href", "#"));
			var prePageLi = $("<li></li>").append(
					$("<a></a>").append("&laquo;"));
			if (result.extend.pageInfo.hasPreviousPage == false) {
				firstPageLi.addClass("disabled");
				prePageLi.addClass("disabled");
			} else {
				//为元素添加点击翻页的事件
				firstPageLi.click(function() {
					to_page(1);
				});
				prePageLi.click(function() {
					to_page(result.extend.pageInfo.pageNum - 1);
				});
			}

			var nextPageLi = $("<li></li>").append(
					$("<a></a>").append("&raquo;"));
			var lastPageLi = $("<li></li>").append(
					$("<a></a>").append("末页").attr("href", "#"));
			if (result.extend.pageInfo.hasNextPage == false) {
				nextPageLi.addClass("disabled");
				lastPageLi.addClass("disabled");
			} else {
				nextPageLi.click(function() {
					to_page(result.extend.pageInfo.pageNum + 1);
				});
				lastPageLi.click(function() {
					to_page(result.extend.pageInfo.pages);
				});
			}

			//添加首页和前一页 的提示
			ul.append(firstPageLi).append(prePageLi);
			//1,2，3遍历给ul中添加页码提示
			$.each(result.extend.pageInfo.navigatepageNums, function(index,
					item) {

				var numLi = $("<li></li>").append($("<a></a>").append(item));
				if (result.extend.pageInfo.pageNum == item) {
					numLi.addClass("active");
				}
				numLi.click(function() {
					to_page(item);
				});
				ul.append(numLi);
			});
			//添加下一页和末页 的提示
			ul.append(nextPageLi).append(lastPageLi);

			//把ul加入到nav
			var navEle = $("<nav></nav>").append(ul);
			navEle.appendTo("#page_nav_area");
		};

		//员工添加模态框事件绑定
		$("#emp_add_modal_btn").click(
				function() {
					//清除表单数据--表单重置
					$("#empAddModal form")[0].reset();
					//$("#empName_add_input").val('');
					$("#empName_add_input").parent().removeClass(
							"has-success has-error");
					$("#email_error_msg").empty();
					//$("#email_add_input").val('');
					$("#email_add_input").parent().removeClass(
							"has-success has-error");
					$("#empName_error_msg").empty();
					//发送AJAX请求，查出部门信息。显示在下拉列表
					getDepts("#dept_add_select");
					//弹出模态框
					$('#empAddModal').modal(function() {
						backdrop: "static";
					});
				});

		//查出所有部门信息并显示在下拉列表中
		function getDepts(ele) {
			$.ajax({
				url : "${pageContext.request.contextPath}/depts",
				type : "get",
				success : function(result) {
					$(ele).empty();
					//console.log(result)
					//显示部门信息在下拉列表中
					$.each(result.extend.depts, function() {
						var optionEle = $("<option></option>").append(
								this.deptName).attr("value", this.deptId);
						optionEle.appendTo(ele);
					});
				}
			});
		}

		//校验表单数据参数
		//开始默认有错，无错误变成true：即是否有错
		var validate_empName = true;
		var validate_email = true;

		/* function validate_add_form(){
			//1 拿到要校验的数据，使用正则表达式
			var empName = $("#empName_add_input").val();
			var regName = /^[a-zA-Z0-9\u2E80-\u9FFF_-]{2,16}$/;
			if(!regName.test(empName)){
				$("#empName_error_msg").empty();
				$("#empName_error_msg").append("必须2-16位中/英文用户名");
				return false;
			}else{
				$("#empName_error_msg").empty();
			}
			
			var email = $("#email_add_input").val();
			var regEmail = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;;
			if(!regEmail.test(email)){
				$("#email_error_msg").empty();
				$("#email_error_msg").append("邮箱格式有误，请检查");
				return false;
			}else{
				$("#email_error_msg").empty();
			}
		}*/
		$("#empName_add_input").blur(
				function() {
					var empName = $("#empName_add_input").val();
					var regName = /^[a-zA-Z0-9\u2E80-\u9FFF_-]{2,16}$/;
					if (!regName.test(empName)) {
						$("#empName_error_msg").empty();
						$("#empName_error_msg").append("必须2-16位中/英文用户名");
						$("#empName_add_input").parent().removeClass(
								"has-success has-error").addClass("has-error");
						validate_empName = true;
						return false;
					} else {
						$("#empName_error_msg").empty();
						$("#empName_add_input").parent().removeClass(
								"has-success has-error")
								.addClass("has-success");
						validate_empName = false;
					}
				});

		$("#email_add_input")
				.blur(
						function() {
							var email = $("#email_add_input").val();
							var regEmail = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
							if (!regEmail.test(email)) {
								$("#email_error_msg").empty();
								$("#email_error_msg").append("邮箱格式有误，请检查");
								$("#email_add_input").parent().removeClass(
										"has-success has-error").addClass(
										"has-error");
								validate_email = true;
								return false;
							} else {
								$("#email_error_msg").empty();
								$("#email_add_input").parent().removeClass(
										"has-success has-error").addClass(
										"has-success");
								validate_email = false;
							}

							//发送Ajax请求校验邮箱是否重复
							$
									.ajax({
										url : "${pageContext.request.contextPath}/checkEmail",
										type : "POST",
										data : "email=" + this.value,
										success : function(result) {
											if (result.code == 100) {
												$("#email_error_msg").empty();
												$("#email_add_input")
														.parent()
														.removeClass(
																"has-success has-error")
														.addClass("has-success");
											} else {
												$("#email_error_msg").empty();
												$("#email_error_msg").append(
														"该邮箱有人使用哦");
												$("#email_add_input")
														.parent()
														.removeClass(
																"has-success has-error")
														.addClass("has-error");
											}
										}
									})
						})

		//文本内容改变就触发
		//$("#empName_add_input").change(function(){})

		$("#emp_save_btn")
				.click(
						function() {
							//模态框中填写的表单数据提交给服务器进行保存
							//1 先对要提交给服务器的数据进行校验
							if (validate_empName || validate_email) {
								return false;
							}
							var empName_val = $("#empName_add_input").val();
							var eamil_val = $("#email_add_input").val();
							if (jQuery.isEmptyObject(empName_val)
									|| jQuery.isEmptyObject(eamil_val)) {
								return false;
							}
							//2 发送Ajax请求保存员工
							$
									.ajax({
										url : "${pageContext.request.contextPath}/emp",
										type : "POST",
										data : $("#empAddModal form")
												.serialize(),
										success : function(result) {
											if (result.code == 100) {
												//alert(result.msg);
												//员工保存成功：
												//1 关闭模态框
												$("#empAddModal").modal('hide');
												//2 来到最后一页，显示刚才保存的数据
												to_page(totalRecord + 1);
											} else {
												//console.log(result);	
												if (undefined != result.extend.errorFields.email) {
													//显示邮箱error
													$("#email_error_msg")
															.empty();
													$("#email_error_msg")
															.append(
																	result.extend.errorFields.email);
													$("#email_add_input")
															.parent()
															.removeClass(
																	"has-success has-error")
															.addClass(
																	"has-error");
												}
												if (undefined != result.extend.errorFields.empName) {
													//显示员工名error
													$("#empName_error_msg")
															.empty();
													$("#empName_error_msg")
															.append(
																	result.extend.errorFields.empName);
													$("#empName_add_input")
															.parent()
															.removeClass(
																	"has-success has-error")
															.addClass(
																	"has-error");
												}
											}
										}
									});
						});
						
		//我们是按钮创建之前就绑定了click，所以绑定不上
		//1 可以在创建按钮时绑定 ； 2 绑定点击.live
		//jquery新版没有live，使用on进行替代
		$(document).on("click", ".edit_btn", function() {
			//alert("绑定成功")	
			// 查出部门信息，并显示部门列表
			//async_getDepts("#empEditModal select");
			getDepts("#empEditModal select");
			//getEmp($(this).attr("edit-id"));
			// 查出员工信息，显示员工信息
			
			//法二：解决部门显示不同步问题
			setTimeout(()=>{
				//console.log("定时器开始执行");
				getEmp($(this).attr("edit-id"));
			},1);
			
			//把员工的id传递给模态框的更新按钮
			$("#emp_update_btn").attr("edit-id",$(this).attr("edit-id"));
			//弹出模态框
			$('#empEditModal').modal(function() {
				backdrop: "static";
			});
		});
			
			//async function async_getDepts(ele){
				//await getDepts(ele);
			//}
		
			function getEmp(id){
				$.ajax({
					url:"${pageContext.request.contextPath}/emp/"+id,
					type:"GET",
					success:function(result){
						//console.log(result)
						var empData  = result.extend.emp;
						$("#empName_update_static").text(empData.empName);
						$("#email_update_input").val(empData.email);
						$("#empEditModal input[name=gender]").val([empData.gender]);
						$("#empEditModal select").val([empData.dId]);
					}
				});
			}
			
			 //点击更新员工信息
			$("#emp_update_btn").click(function(){
				var email = $("#email_update_input").val();
				var regEmail = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
				if (!regEmail.test(email)) {
					$("#email_error_msg2").empty();
					$("#email_error_msg2").append("邮箱格式有误，请检查");
					$("#email_update_input").parent().removeClass(
						"has-success has-error").addClass(
						"has-error");
						return false;
					} else {
						$("#email_error_msg2").empty();
						$("#email_update_input").parent().removeClass(
							"has-success has-error").addClass(
							"has-success");
					} 
					
					//法二：发送put请求，配置HttpPutFormContentFilter
					$.ajax({
						url:"${pageContext.request.contextPath}/emp/"+$(this).attr("edit-id"),
						type:"PUT",
						data:$("#empEditModal form").serialize(),
						success:function(result){
							//alert(result.msg)
							//1 关闭模态框
							$("#empEditModal").modal("hide");
							//2 回到本页面
							to_page(currentPage);
						}
					})
					//法一：发送put请求
/* 					$.ajax({
						url:"${pageContext.request.contextPath}/emp/"+$(this).attr("edit-id"),
						type:"POST",
						data:$("#empEditModal form").serialize()+"&_method=PUT",
						success:function(result){
							alert(result.msg)
						}
					}) */
					
			}); 
			
			//单个删除操作	
			$(document).on("click",".delete_btn",function(){
				//console.log("删除")
				// 1 弹出是否确认删除对话框
				var empName = $(this).parents("tr").find("td:eq(2)").text();
				var empId = $(this).attr("delete-id");
				if(confirm("确认删除员工【"+empName+"】吗？")){
					//确认-发送ajax请求删除即可
					$.ajax({
						url:"${pageContext.request.contextPath}/emp/"+empId,
						type:"Delete",
						//发送delete请求，法二：
						//type="POST",
						//data:"_method=delete",
						success:function(result){
							//alert(result.msg)
							//回到本页面
							to_page(currentPage);
						}
					})
				}
			});
			
			//完成全选/全部不选功能
			$("#check_all").click(function(){
				//attr获取checked是undefined
				//我们这些原生的dom属性用prop；attr用来获取自定义类型的值
				$(".check_item").prop("checked",$(this).prop("checked"));
			
			});
			
			//check_item
			$(document).on("click",".check_item",function(){
				//判断当前选中的元素是否符合数量
				var flag = $(".check_item:checked").length == $(".check_item").length;
				$("#check_all").prop("checked",flag);
			});
			
			
			//点击全部删除，就批量删除
			$("#emp_delete_all_btn").click(function(){
				
				var empNames = "";
				var del_idstr = "";
			
				$.each($(".check_item:checked"),function(){
					empNames += $(this).parents("tr").find("td:eq(2)").text() +"、";
					//组装员工id字符串
					del_idstr += $(this).parents("tr").find("td:eq(1)").text() +"-";
					
				});
				
				//去除empNames多余的逗号
				empNames = empNames.substring(0,empNames.length-1);
				//去除del_idstr多余的"-"
				del_idstr = del_idstr.substring(0,del_idstr.length-1);
				if(confirm("确认删除这些员工【"+empNames+"】吗？")){
					$.ajax({
						url:"${pageContext.request.contextPath}/emp/"+del_idstr,
						type:"Delete",
						success:function(result){
							to_page(currentPage);
						}
					});
				}
			});
			
			
	</script>

</body>
</html>