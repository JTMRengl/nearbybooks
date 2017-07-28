<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
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

    <jsp:include page="/static/components/listAddress.jsp"></jsp:include>
    
    <div id="configModal" class="ui basic modal">
      <div class="config">
      	<h3>确认是否删除？</h3>
      	<div class="yes">是</div>
      	<div class="no">否</div>
      </div>
    </div>
    
    <div class="vi contents">
        <!-- <div id="userInfo" class="vi item"></div><br> -->
        <div class="vi item">
            <div class="ui small secondary vertical pointing menu left">
                <a href="../personal/user" class="item">个人信息 </a>
                <a href="../personal/address" class="item active">地址管理 </a>
                <a href="../personal/mybook" class="item">我的书架 </a> 
                <a href="../personal/shopping" class="item">购物车 </a> 
                <a class="item">我的订单</a>
            </div>
            <div id="main" class="shadow left"
                style="padding: 20px; margin-left: 10px; width: calc(100% - 13rem - 10px); min-height: 30px;">
                <div class="ui secondary menu">
                    <button id="addBtn" class="ui small button"
                        style="height: 35px; margin-top: 4px; margin-left: 4px;">新增
                    </button>
                    <div class="gray" style="margin-top:12px;margin-left:10px;font-size:13px;">
                    	<input id="addAddressSum" name="addAddressSum" type="hidden" value="${fn:length(addressList)}">
                    	您已创建<span class="green"><c:out value="${fn:length(addressList)}"></c:out></span>个收货地址，最多可创建<span class="green">5</span>个
                    </div>
                </div>
                <div class="vi address-list">
                    <c:forEach items="${addressList}" var="userAddress" varStatus="vs">
                        <div class="item" name="${userAddress.id}">
                            <i id="delete" class="close icon"></i>
                            <p>收件人姓名：${userAddress.contacts}</p>
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;联系电话：${userAddress.mobile_phone}</p>
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;详细地址：${userAddress.location}</p>
                            <div class="control">
                                <a id="update">编辑</a>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>

    <script src="../static/components/config.js"></script>
    <script src="../static/components/head.js"></script>
    <script src="../static/js/pages/personal_address.js"></script>
</body>
</html>