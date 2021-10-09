<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="deleteModal" class="modal fade" tabindex="-1" role="dialog">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title">尚筹网系统弹窗</h4>
			</div>
			<div class="modal-body delete-body" align="center">
				<h4>确定删除以下角色?</h4>
				<span id="roleNameSpan"></span>
			</div>
			<div class="modal-footer">
				<button id="deleteRoleBtn" type="button" class="btn btn-success">
					删除</button>
			</div>
		</div>
	</div>
</div>