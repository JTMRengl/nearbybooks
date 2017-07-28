<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath %>" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE =edge,chrome =1" />
<meta name="renderer" content="webkit">
<title>登录</title>

  <link rel="stylesheet" href="static/js/semantic/semantic.min.css">
  <link rel="stylesheet" href="static/js/layui/css/layui.css">
  <link rel="stylesheet" href="static/css/common.css">
  
  <script src="static/js/jquery-1.7.2.js"></script>
  <script src="static/js/layui/layui.js"></script>
  <script src="static/js/semantic/semantic.min.js"></script>
  <script src="static/js/tools.js"></script>
  
</head>
<body>
  
  <div class="login-head">
    <div class="menu">关于我们</div>
    <a href="register/jsp" style="color: white;"><span class="menu">注册</span></a>
    <a href="/nearbybooks" style="color: white;"><span class="menu">首页</span></a>
  </div>
  <div class="login-form">
      <label class="title">登录</label>
      <div class="ui left icon input">
        <input placeholder="手机号" name="username" id="username" type="text">
        <i class="user icon"></i>
      </div>
      <div class="ui left icon input">
        <input placeholder="密码."  name="password" id="password" type="password">
        <i class="lock icon"></i>
      </div>
      <a class="right">忘记密码？</a>
      <button class="ui black button login" onclick="start();">登录</button>
  </div>
  <jsp:include page="/static/components/dynamic_bg.jsp"></jsp:include>
  
</body>
<script type="text/javascript">
$(function() {
  $("#password").val("");
  $("#username").val("");
});

function start(){
  if ($("#password").val() != '' && $("#username").val() != '') {
    var code = $("#username").val() + "," + $("#password").val();
    $.ajax({
      type : "POST",
      url : 'login',
      data : {
        KEYDATA : code,
        datetime : new Date().getTime()
      },
      dataType : 'json',
      cache : false,
      success : function(data) {
        if ("success" == data.result) {
          window.location.href="";
        }else{
          alert("账号或密码错误!");
        }
      }
    });
  }
}

$(document).keyup(function(v){
  if(v.keyCode ==13){
    start();
  }
});
</script>
</html>