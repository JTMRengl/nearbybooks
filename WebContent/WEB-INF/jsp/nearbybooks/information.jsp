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
		<div class="vi item">
			<div class="vi bookinfo">
				<div class="img">
					<img src="${book.cover_img}">
				</div>
				<div class="info">
					<p>
						<strong class="title">书名:${book.book_name}</strong>
					</p>
					<p>
						<span class="gray">作者：</span>${book.author}</p>
					<p>
						<span class="gray">简介：</span>${book.introducation}</p>
					<div class="action">
						<button class="ui primary button">20 ￥ / 周 租</button>
						<button class="ui primary button">60 ￥ 买</button>
					</div>
				</div>
				<div class="master">
					<img class="head" src="../static/images/img-3.jpg"> <span
						class="name">唱山歌</span>
					<p style="clear: left;">
						<span class="gray">推荐理由：</span>${book.reasons}</p>
					<div class="other">
						<div class="item">
							<a> <img class="img" src="../static/images/01.jpg"> <label
								class="title pointer">书滴名字名字</label> <label class="tags pointer">租售中</label>
							</a>
						</div>
						<div class="item">
							<a> <img class="img" src="../static/images/01.jpg"> <label
								class="title pointer">书滴名字名字</label> <label class="tags pointer">租售中</label>
							</a>
						</div>
						<div class="item">
							<a> <img class="img" src="../static/images/01.jpg"> <label
								class="title pointer">书滴名字名字</label> <label class="tags pointer">租售中</label>
							</a>
						</div>
					</div>
				</div>
			</div>

			<div class="detailed">
				<div class="ui secondary pointing menu">
					<a class="item">目录 </a> <a class="active item">评论 </a>
					<div class="right menu"></div>
				</div>
				<div class="catalog"></div>

				<div class="comment">
					<div class="ui threaded comments">
					
					
						<c:forEach items="${bookCommentList}" var="bookComment" varStatus="vs">
							<div class="comment">
								<a class="avatar"> <img src="../static/images/img-1.jpg">
								</a>
								<div class="content">
									<a class="author">李四</a>
									<div class="metadata">
										<span class="date">${bookComment.date_comment} </span>
									</div>
									<div class="text">${bookComment.content}</div>
									<div class="actions">
										<a class="reply replys" id="${bookComment.id},${bookComment.user_id}">回复</a>
									</div>
								</div>
							</div>
							
						</c:forEach>					
						
						<form class="ui reply form">
							<input type="hidden" id="bookId" value="${book.id}"/>
							<div class="field">
								<textarea id="bookComment"></textarea>
							</div>
							<div id="submit" class="ui blue labeled submit icon button">
								<i class="icon edit"></i> 发表评论
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<br>
	</div>

	<script src="../static/components/head.js"></script>
	<script src="../static/js/pages/information.js"></script>

</body>
</html>