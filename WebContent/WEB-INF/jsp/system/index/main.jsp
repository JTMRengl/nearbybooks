<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
    String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="<%=basePath %>" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<%@ include file="/static/html/top.jsp"%>
<meta charset="utf-8" />
<link rel="stylesheet" href="static/css/base.css" />
<link rel="stylesheet" href="plugins/websocket/ext4/resources/css/ext-all.css">
<link rel="stylesheet" href="plugins/websocket/css/websocket.css" />
<!-- 即时通讯 -->
<script type="text/javascript" src="plugins/websocket/ext4/ext-all-debug.js"></script>
<script type="text/javascript" src="plugins/websocket/websocket.js"></script>

<title>第十届全国中小学创新课堂教学实践观摩活动</title>
</head>
<body class="no-skin">
  <jsp:include page="head.jsp" />
  <div class="main-container" id="main-container">
   <jsp:include page="left.jsp" />
    <div class="main-content"> 
      <div class="main-content-inner">
         <div class="page-content">
           <div class="row">	
             <div id="spm" style="display:none; width:100%; position:fixed; z-index:99999999;">
               <div class="shade" id="shade"></div>
               <div style="padding-left: 70%;padding-top: 1px;">
			     <div style="float: left;margin-top: 3px;"><img src="static/images/loadingi.gif" /> </div>
			     <div style="margin-top: 6px;"><h4 class="lighter block red">&nbsp;加载中 ...</h4></div>
			  </div>
             </div>
             <div>
			   <iframe id="mainFrame"  name="mainFrame" src="tab.do" style="margin:0 auto;width:100%;height:100%;border: 0px;"></iframe>
			</div>
           </div>
         </div>
      </div>
   </div>	
  </div>
<script type="text/javascript" src="static/js/index.js" ></script>
<!-- ace scripts -->
<script type="text/javascript" src="static/js/ace/ace.js"></script>
<script type="text/javascript" src="static/js/ace/ace.sidebar.js" ></script>
<!--引入弹窗组件start-->
<script type="text/javascript" src="plugins/zDialog/zDrag.js"></script>
<script type="text/javascript" src="plugins/zDialog/zDialog.js"></script>
<script type="text/javascript">
  var project='<%=basePath %>';
  $(function(){
	  //加载头部信息
	  initHeader();
	 
   });
 /* var websocket = null;
//判断当前浏览器是否支持WebSocket
if('WebSocket' in window){
    websocket = new WebSocket("ws://${serverIP}/nmic/websocket");
}
else{
    alert('Not support websocket')
}
 
//连接发生错误的回调方法
websocket.onerror = function(){
    setMessageInnerHTML("error");
};
 
//连接成功建立的回调方法
websocket.onopen = function(event){
    setMessageInnerHTML("open");
}
 
//接收到消息的回调方法
websocket.onmessage = function(){
    setMessageInnerHTML(event.data);
}
 
//连接关闭的回调方法
websocket.onclose = function(){
    setMessageInnerHTML("close");
}
 
//监听窗口关闭事件，当窗口关闭时，主动去关闭websocket连接，防止连接还没断开就关闭窗口，server端会抛异常。
window.onbeforeunload = function(){
    websocket.close();
}
 
//将消息显示在网页上
function setMessageInnerHTML(innerHTML){
    //document.getElementById('message').innerHTML += innerHTML + '<br/>';
}
 
//关闭连接
function closeWebSocket(){
    websocket.close();
}
 
//发送消息
function send(){
    websocket.send(uinfo);
} */

</script>
</html>