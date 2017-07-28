<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<title>借阅</title>

<link rel="stylesheet" href="static/js/semantic/semantic.min.css">
<link rel="stylesheet" href="static/js/layui/css/layui.css">
<link rel="stylesheet" href="static/css/common.css">

<script src="static/js/jquery-1.7.2.js"></script>
<script src="static/js/layui/layui.js"></script>
<script src="static/js/semantic/semantic.min.js"></script>
<script src="static/js/tools.js"></script>
<script src="static/js/event.js"></script>

<%@include file="/static/components/head_tpl.jsp"%>

</head>
<body>

  <jsp:include page="/static/components/carousel.jsp"></jsp:include>
  
		<div class="vi title item">
			<div class="ui black ribbon label">附近的书</div>
			<a href="list/jsp">see all</a>
		</div>
		<div class="vi flip">
			<!-- <div id="left" class="vi button tran Block">
				<img src="static/images/left.PNG">
			</div>
			<div id="right" class="vi button tran Block">
				<img src="static/images/right.PNG">
			</div> -->
			<div class="vi item">
				<div id="list">
					<ul class="vi list">
						<li>
							<c:forEach items="${bookList }" var="book" varStatus="vs">
								<div class="item card" style="width: calc(( 100% - 40px)/4);">
									<div class="image">
										<a href="book/getBookById?id=${book.id }"><img src="${book.cover_img }"></a>
									</div>
									<div class="content">
										<div class="header">${book.book_name }</div>
										<div class="meta">
											<span>作者:${book.author }</span>
										</div>
										<div class="description">简介:
											<span title="${book.introducation }">${book.home_img }</span>
										</div>
									</div>
									<div class="ui star rating" data-rating="3"></div>
								</div>
							</c:forEach>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="vi title item">
			<div class="ui black ribbon label">新书推荐</div>
			<a href="list/jsp">see all</a>
		</div>
		<div class="vi flip">
			<!-- <div id="left" class="vi button tran Block">
				<img src="static/images/left.PNG">
			</div>
			<div id="right" class="vi button tran Block">
				<img src="static/images/right.PNG">
			</div> -->
			<div class="vi item">
				<div id="list">
					<ul class="vi list">
						<li>
							<c:forEach items="${bookList }" var="book" varStatus="vs">
								<div class="item card" style="width: calc(( 100% - 40px)/4);">
									<div class="image">
										<a href="information/jsp"><img src="${book.cover_img }"></a>
									</div>
									<div class="content">
										<div class="header">${book.book_name }</div>
										<div class="meta">
											<span>作者:${book.author }</span>
										</div>
										<div class="description">简介:
											<span title="${book.introducation }">${book.home_img }</span>
										</div>
									</div>
									<div class="ui star rating" data-rating="3"></div>
								</div>
							</c:forEach>
						</li>
					</ul>
				</div>
			</div>
		</div>
		
  <jsp:include page="/static/components/foot.jsp"></jsp:include>

	<script src="static/components/head.js"></script>
	<script src="static/components/carousel.js"></script>
	<script src="static/js/pages/index.js"></script>
	<script type="text/javascript">
    var project='<%=basePath %>';
  </script>

</body>
</html>