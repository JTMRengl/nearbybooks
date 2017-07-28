<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE =edge,chrome =1" />
<meta name="renderer" content="webkit">
<title>购物车</title>

  <link rel="stylesheet" href="../static/js/semantic/semantic.min.css">
  <link rel="stylesheet" href="../static/js/layui/css/layui.css">
  <link rel="stylesheet" href="../static/css/common.css">
  
  <script src="../static/js/jquery-1.7.2.js"></script>
  <script src="../static/js/layui/layui.js"></script>
  <script src="../static/js/semantic/semantic.min.js"></script>
  <script src="../static/js/tools.js"></script>
  <script src="../static/js/event.js"></script>
  
  <%@include file="/static/components/head_tpl.jsp"%>
  <%@include file="/static/components/table-tpl.jsp"%>

</head>
<body>

	<div class="vi contents">
        <!-- <div id="userInfo" class="vi item"></div><br> -->
        <div class="vi item">
            <div class="ui small secondary vertical pointing menu left">
                <a href="../personal/user" class="item">个人信息 </a>
                <a href="../personal/address" class="item">地址管理 </a>
                <a href="../personal/mybook" class="item">我的书架 </a>
                <a href="../personal/shopping" class="item active">购物车 </a>
                <a class="item">我的订单</a>
            </div>
            <div id="main" class="shadow left"
                style="padding: 20px;margin-left:10px;width: calc(100% - 13rem - 10px);height:auto;">
                <div id="shopTable"></div>
            </div>
        </div>
    </div>
    <div class="vi item actions"><button class="ui black right labeled icon button"><i class="right arrow icon"></i>￥ <span>50</span>&nbsp;&nbsp;&nbsp;去支付 </button></div>

  <script src="../static/components/head.js"></script>
  <script src="../static/components/table.js"></script>
  <script src="../static/js/pages/shopping.js"></script>
  
</body>
</html>