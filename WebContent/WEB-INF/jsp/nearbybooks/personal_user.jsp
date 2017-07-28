<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE =edge,chrome =1" />
<meta name="renderer" content="webkit">
<title>个人中心</title>

<link rel="stylesheet" href="../static/js/semantic/semantic.min.css">
<link rel="stylesheet" href="../static/js/layui/css/layui.css">
<link rel="stylesheet" href="../static/css/common.css">

<script src="../static/js/jquery-1.7.2.js"></script>
<script src="../static/js/layui/layui.js"></script>
<script src="../static/js/semantic/semantic.min.js"></script>
<script src="../static/js/tools.js"></script>
<script src="../static/js/event.js"></script>

<%@include file="/static/components/head_tpl.jsp"%>

</head>
<body>

	<div class="vi contents">
		<!-- <div id="userInfo" class="vi item"></div><br> -->
		<div class="vi item">
			<div class="ui small secondary vertical pointing menu left">
				<a href="../personal/user" class="item active">个人信息 </a> <a
					href="../personal/address" class="item">地址管理 </a> <a
					href="../personal/mybook" class="item">我的书架 </a> <a
					href="../personal/shopping" class="item">购物车 </a> <a class="item">我的订单</a>
			</div>
			<div id="main" class="shadow left"
				style="padding: 20px; margin-left: 10px; width: calc(100% - 13rem - 10px); min-height: 30px;">
				<form action="../user/updateUser" id="user" name="user" method="post"
					class="register-form">
					<input id="USER_ID" name="USER_ID" type="hidden" value="${user.USER_ID}">
					<div class="name-list">
						<label>昵称：</label><br> <label>姓名：</label><br> <label>密码：</label><br>
						<label>性别：</label><br>
					</div>
					<div class="ui input item">
						<input id="USERNAME" name="USERNAME"
							placeholder="账号" type="text" value="${user.USERNAME}">
					</div>
					<br>
					<div class="ui input item">
						<input id="NAME" name="NAME"
							placeholder="姓名" type="text" value="${user.NAME}">
					</div>
					<br>
					<div class="ui input item">
						<input id="PASSWORD" name="PASSWORD"
							placeholder="密码" type="text" value="${user.PASSWORD}">
					</div>
					<br>
					<div class="item">
						<div class="ui radio checkbox">
							<input name="SEX" value="1"
								<c:if test="${user.SEX=='1'}">checked="checked"</c:if>
								type="radio"> <label>男</label>
						</div>
						<div class="ui radio checkbox">
							<input name="SEX" value="0"
								<c:if test="${user.SEX=='0'}">checked="checked"</c:if>
								type="radio"> <label>女</label>
						</div>
					</div>
					<div>
						<span onclick="update()" class="ui primary button">提交</span>
					</div>
				</form>
			</div>
		</div>
	</div>

	<script src="../static/components/head.js"></script>
	<script type="text/javascript">
		var tools = new Tools();
		var head = new Head({
			logo : '../static/images/LOGOS.png',
			menu : [ {
				title : '首页',
				url : '/nearbybooks'
			} ],
			userMenu : [ {
				i : 'user',
				url : ''
			}, {
				i : 'shop',
				url : 'static/pages/shopping.jsp'
			}, ],
			component : '#head-tpl',
			container : 'body'
		});
		
		function update(){
			$("#user").submit();
		}
	</script>

</body>
</html>