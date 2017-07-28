<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<%@include file="/static/components/bookList_tpl.jsp"%>

</head>
<body>

	<jsp:include page="/static/components/addBook.jsp"></jsp:include>

	<div class="vi contents">
		<!-- <div id="userInfo" class="vi item"></div><br> -->
		<div class="vi item">
			<div class="ui small secondary vertical pointing menu left">
				<a href="../personal/user" class="item">个人信息 </a>
                <a href="../personal/address" class="item">地址管理 </a>
                <a href="../personal/mybook" class="item active">我的书架 </a> 
                <a href="../personal/shopping" class="item">购物车 </a> 
                <a class="item">我的订单</a>
			</div>
			<div id="main" class="shadow left"
				style="padding: 20px; margin-left: 10px; width: calc(100% - 13rem - 10px); min-height: 30px;">
				<div id="my">
					<div class="ui secondary menu">
						<button id="addbook" class="ui small button"
							style="height: 35px; margin-top: 4px; margin-left: 4px;">新增
						</button>
						<div class="right menu">
							<div class="item">
								<div class="ui icon input">
									<input placeholder="搜索..." type="text"> <i
										class="search link icon"></i>
								</div>
							</div>
						</div>
					</div>
					<table class="ui black table">
						<thead>
							<tr>
								<th>书名</th>
								<th>ISBN</th>
								<th>租售价格</th>
								<th>出售价格</th>
								<th>状态</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${bookList}" var="myBook" varStatus="vs">
								<tr>
									<td>${myBook.book_name }</td>
									<td>${myBook.isbn }</td>
									<td>${myBook.price_hire }/周</td>
									<td>${myBook.price_sell }￥</td>
									<td>
										<c:if test="${myBook.type_zu_shou == 0}">
											待售
										</c:if>
										<c:if test="${myBook.type_zu_shou == 1}">
											已售
										</c:if>
									</td>
									<td>
										<a class="updateBook" name="${myBook.id }">编辑</a> 
										<a id="delete" name="${myBook.id }">下架</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

	<script src="../static/components/head.js"></script>
	<script src="../static/components/addBook.js"></script>
	<script src="../static/js/pages/personal_mybook.js"></script>

</body>
</html>