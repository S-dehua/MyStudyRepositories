/**
 * sdehua自定义js函数
 */

 // 声明用来分配在Auth的模态框中显示Auth的树形结构数据
 function fillAuthTree() {
	// 1.发送Ajax 请求查询Auth 数据
		var ajaxReturn = $.ajax({
			"url" : "assgin/get/all/auth.json",
			"type" : "post",
			"dataType" : "json",
			"async" : false
		});
		
		if (ajaxReturn.status != 200) {
			layer.msg(" 请求处理出错! 响应状态码:  " + ajaxReturn.status + " 说明: "
					+ ajaxReturn.statusText);
			return;
		}
		
		authList = ajaxReturn.responseJSON.data;
		//console.log(authList);
		
		// 3.准备对zTree 进行设置的JSON 对象
		var setting = {
			"data" : {
				"simpleData" : {
					// 开启简单JSON 功能
					"enable" : true,
					// 使用categoryId 属性关联父节点，不用默认的pId 了
					"pIdKey" : "categoryId"
				},
				"key" : {
					// 使用title 属性显示节点名称，不用默认的name 作为属性名了
					"name" : "title"
				}
			},
			"check" : {
				"enable" : true
			}
		};
		
		// 4.生成树形结构
		// <ul id="authTreeDemo" class="ztree"></ul>
		$.fn.zTree.init($("#authTreeDemo"), setting, authList);

		// 获取zTreeObj 对象
		var zTreeObj = $.fn.zTree.getZTreeObj("authTreeDemo");
		
		// 调用zTreeObj 对象的方法，把节点展开
		zTreeObj.expandAll(true);

		// 5.查询已分配的Auth 的id 组成的数组
		ajaxReturn = $.ajax({
			"url" : "assign/get/assigned/auth/id/by/role/id.json",
			"type" : "post",
			"data" : {
				"roleId" : window.roleId
			},
			"dataType" : "json",
			"async" : false
		});
		if (ajaxReturn.status != 200) {
			layer.msg(" 请求处理出错! 响应状态码:  " + ajaxReturn.status + " 说明: "
					+ ajaxReturn.statusText);
			return;
		}
		// 从响应结果中获取authIdArray
		var authIdArray = ajaxReturn.responseJSON.data;
		
		// 6.根据authIdArray 把树形结构中对应的节点勾选上
		// ①遍历authIdArray
		for (var i = 0; i < authIdArray.length; i++) {
			var authId = authIdArray[i];
			// ②根据id 查询树形结构中对应的节点
			var treeNode = zTreeObj.getNodeByParam("id", authId);
			// ③将treeNode 设置为被勾选
			// checked 设置为true 表示节点勾选
			var checked = true;
			// checkTypeFlag 设置为false，表示不“联动”，不联动是为了避免把不该勾选的勾选上
			var checkTypeFlag = false;
			// 执行
			zTreeObj.checkNode(treeNode, checked, checkTypeFlag);
		}
		
 }

 
 // 声明专门的函数显示确认模态框
 function showDeleteModal(roleArray){
 	
	  // 打开模态框
	  $("#deleteModal").modal("show");
	  
	  // 清除旧数据
	  $("#roleNameSpan").empty();
	  
	  // 声明全局数组
	  window.roleIdArray = [];
	  
	  // 遍历roleArray数组
	  for(var i = 0; i < roleArray.length; i++) {
		  var role = roleArray[i];
		  var roleName = role.roleName;
		  var roleId = role.roleId;
		  
		  $("#roleNameSpan").append("<div style='border:1px solid;width:50%'> "+roleName+" </div>"+"<br>");
		  
		  // 调用数组对象的push()方法存入数据
		  window.roleIdArray.push(roleId);
		  
	  }
		
 	
 }

 
 // 执行分页，生成页面效果
 function generatePage(){
	 
	 // 修复多选按钮翻页仍然存在bug
	 $("#summaryBox").prop("checked",false);
	 
	 // 1.获取分页数据
	 var pageInfo = getPageInfoRemote();
	 
	 // 2.填充表格
	 fillTableBody(pageInfo);
	 
 }
 
 // 远程访问服务器端程序
 function getPageInfoRemote(){
	 
	 var ajaxResult = $.ajax({
		 "url":"role/get/page/info.json",
		 "type":"post",
		 "data":{
			 "pageNum":window.pageNum,
			 "pageSize":window.pageSize,
			 "keyword":window.keyword
		 },
		 "async":false,
		 "dateType":"json"
		
	 });
	 
	 if(!ajaxResult.responseJSON) {
		 layer.msg("权限不足以访问该资源");
		 return null;
	 }
	 
	 // 判断当前响应状态码是否为200
	 var statusCode = ajaxResult.status;
	 var statusText = ajaxResult.statusText;
	 
	 // 如果当前响应码不是200则失败
	 if(statusCode != 200){
		 layer.msg("请求失败, 响应码:"+statusCode+",说明信息:"+statusText);
		 return null;
	 }
	 
	 var resultEntity = ajaxResult.responseJSON;
	 console.log(ajaxResult.responseJSON)
	 // 从resultEntity中获取result属性
	 var result = resultEntity.result;
	 if(result == "FAILED"){
	 	layer.msg(resultEntity.message);
	 	return null;
	 }
	 
	 // 确认result为成功后获取PageInfo
	 var pageInfo = resultEntity.data;
	 
	 // 返回pageInfo
	 return pageInfo;
	 
 }
 
 
 // 填充表格
 function fillTableBody(pageInfo){
	 
	 // 清除以前旧的数据
	 $("#rolePageBody").empty();
	 // 清除数据为空时的分页条
	 $("#Pagination").empty();
	 
	 // 判断pageInfo对象是否有效
	 if(pageInfo == null || pageInfo == undefined || pageInfo.list == null || pageInfo.list.length == 0){
		 $("#rolePageBody").append("<tr><td colspan='4' align='center'>抱歉，没有查询到数据</td></tr>");
		 return;
	 }
	 
	 // 使用pageInfo的list属性填充tbody
	 for(var i = 0; i < pageInfo.list.length; i++) {
		 
		 var role = pageInfo.list[i];
		 
		 var roleId = role.id;
		 
		 var roleName = role.name;
		 
		 var numberTd = "<td>"+(i+1)+"</td>";
		 var checkboxTd = "<td><input type='checkbox' id='"+roleId+"' class='itemBox'/></td>";
		 var roleNameTd = "<td>"+roleName+"</td>";
		 
		 var checkBtn = "<button type='button' id='"+roleId+"' class='btn btn-success btn-xs checkBtn'><i class=' glyphicon glyphicon-check'></i></button>"

         // 铅笔按钮用于修改role信息。用id属性（也可以是其他属性）携带当前的角色的id，class添加一个pencilBtn，方便添加响应函数
         var pencilBtn = "<button type='button' id='"+roleId+"' class='btn btn-primary btn-xs pencilBtn'><i class=' glyphicon glyphicon-pencil'></i></button>"

         var removeBtn = "<button type='button' id='"+roleId+"' class='btn btn-danger btn-xs removeBtn'><i class=' glyphicon glyphicon-remove'></i></button>"

         var buttonTd = "<td>"+checkBtn + " " + pencilBtn + " " + removeBtn + "</td>";
         var tr = "<tr>" + numberTd + checkboxTd + roleNameTd + buttonTd + "</tr>";

         $("#rolePageBody").append(tr);
		  
	 }
	 
	 
	 // 生成分页导航条
	 generateNavigator(pageInfo);
	 
	 
 }
 
 
 // 生成分页页码导航条
 function generateNavigator(pageInfo){
    //获取分页数据中的总记录数
    var totalRecord = pageInfo.total;

    //声明Pagination设置属性的JSON对象
    var properties = {
        "num_edge_entries":3,//边缘页数
        "num_display_entries":5,//主体页数
        "callback":paginationCallBack,//点击各种翻页反扭时触发的回调函数（执行翻页操作）
        "current_page":(pageInfo.pageNum-1),//当前页码
        "items_per_page": pageInfo.pageSize,//每页显示的数量
        "prev_text":"上一页",//在对应上一页操作的按钮上的文本
        "next_text":"下一页" //在对应下一页操作的按钮上的文本
    };

    $("#Pagination").pagination(totalRecord,properties);
 }
 
 
 // 翻页时的回调函数
 function paginationCallBack(pageIndex,jQuery){
	// pageIndex是当前页码的索引，因此比pageNum小1
    window.pageNum = pageIndex+1;

    // 重新执行分页代码
    generatePage();

    // 取消当前超链接的默认行为
    return false;
 }