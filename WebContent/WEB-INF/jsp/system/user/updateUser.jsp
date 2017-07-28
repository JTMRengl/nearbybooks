<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改密码</title>
<base href="<%=basePath%>">
<%@ include file="/static/html/head.jsp"%>

</head>
<body>
<div class="addForm">
	<form action="course/toAdd" name="courseForm" id="courseForm"
		method="post" class="form-horizontal" style="width: 100%;">
		<table align="center">
			<tr>
				<td>
					<dl>
						<label>密码：</label><input id="user_id" name="user_id" type="hidden" value="${user_id }" />
						<input  type="password" id="password" name="password" value="${password }" style="width:216px;"/>
					</dl>
				</td>
			</tr>
			<tr>
				<td>
					<dl style="margin-left: 50px;">
						<dt></dt>
						<dd class="tx">
							<a class="btn btn-mini btn-primary" href="javascript:void(0)" onclick="save();">提交</a>
							<a class="btn btn-mini btn-danger" href="user/toUpdatePassword">取消</a>
						</dd>
					</dl>
				</td>
			</tr>
			
		</table>
	</form>
	</div>
	<script type="text/javascript">
		//保存
		function save() {
			if(!checked()){
				return;
			}
			layer.msg('努力中...', {icon: 16,shade: [0.5, '#4D4D4D'],scrollbar: false,offset: '0px', time:100000}) ;
			//$("#courseForm").submit();
			$.ajax({
				type : 'POST',
				url : 'user/updatePassword',
				cache : false,
				async : false,
				dataType : "json",
				data : $("#courseForm").serialize(),
				success : function(data) {
					if (data.msg == "success") {
						layer.msg("密码修改成功",{time:1500},function(){window.location.reload();});
					} else {
						layer.msg("密码修改失败",{time:1500},function(){});
					}
				}
			});
		}
		
		function checked(){
			var yg=true;
			var password=$.trim($("#password").val());
			if(password==null||password.length==0){
				layer.alert("密码不能为空");
				yg=false;
			}
			return yg;
		}
	</script>
</body>
</html>