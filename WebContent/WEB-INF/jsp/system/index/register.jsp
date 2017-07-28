<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE =edge,chrome =1" />
<meta name="renderer" content="webkit">
<title>注册</title>

<link rel="stylesheet" href="static/js/semantic/semantic.min.css">
<link rel="stylesheet" href="static/js/layui/css/layui.css">
<link rel="stylesheet" href="static/css/common.css">

<script src="static/js/jquery-1.7.2.js"></script>
<script src="static/js/layui/layui.js"></script>
<script src="static/js/semantic/semantic.min.js"></script>
<script src="static/js/event.js"></script>
<script src="static/js/tools.js"></script>

</head>
<body>

	<div class="ui small modal">
		<div class="header">用户注册协议</div>
		<div class="content">策划i充沛皮鞋包皮逼迫下倍赔陪小屁我下</div>
		<div class="actions">
			<div class="ui cancel black deny button">返回</div>
			<div class="ui ok positive right labeled icon button">
				同意 <i class="checkmark icon"></i>
			</div>
		</div>
	</div>

	<div class="vi register">
		<div class="title">
			<div class="item logo center_ver pointer">
				<img src="static/images/LOGOS.png">
			</div>
			<div class="item center_ver pointer">
				<h2 class="ui header">欢迎注册</h2>
			</div>
			<div class="item center_ver pointer right">
				已有账号？ <a href="login_tolog">去登陆</a>
			</div>
		</div>
		<form action="user/addCell_phone_number" id="user" name="user" method="post" class="register-form">
			<div class="ui input" style="width: 100%;">
				<input id="cell_phone_number" name="cell_phone_number" placeholder="手机号" type="text">
			</div>
			<div class="ui input" style="width: calc(100% - 108px);">
				<input id="sendCode" name="sendCode" placeholder="验证码" type="text">
			</div>
			<span id="message" class="ui secondary button" style="width: 100px;">发送短信</span>
			<div class="ui checkbox">
				<input id="agreement" tabindex="0" class="hidden" type="checkbox"> <label
					class="left">阅读并同意 </label><a class="left agreement">《用户注册协议》</a>
			</div>
			<div>
				<span onclick="save();" class="fluid ui primary button">注册</span>
			</div>
		</form>
	</div>

	<script type="text/javascript">
	
		function save(){
			if($("#agreement").attr('checked') == "checked"){
				$("#user").submit();
			}else{
				alert("请阅读协议,并勾选");
				return;
			}
			
		}
		
		tools = new Tools();
		$('#message').click(function() {
			
			//判断手机号为空,提示
			var cell_phone_number = $("#cell_phone_number").val();
			if(cell_phone_number == null || cell_phone_number == ''){
				alert("请输入手机号");
				return;
			}
			//异步删除
			$.ajax({
				type : 'GET',
				url : 'register/sendCode?cell_phone_number=' + cell_phone_number,
				cache : false,
				async : false,
				dataType : "json",
				success : function(data) {
					if (data.msg == "SUCCESS") {
						tools.msg('发送成功！');
						$(self).addClass("disabled");
					} else {
						tools.msg('抱歉，发送失败！');
						$(self).html('重新发送');
					}
				}
			});
		});
		$('.ui.checkbox').checkbox({
			// check all children
			onChecked : function() {
				//alert("同意");
			},
			onUnchecked : function() {
				//alert("不同意");
			}
		});
		$('.agreement').click(function() {
			$('.ui.small.modal').modal('show');
		});
	</script>

</body>
</html>