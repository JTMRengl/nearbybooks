<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="<%=basePath%>">
<link rel="stylesheet" href="plugins/tab/css/import_basic.css" />
<link rel="stylesheet" href="plugins/tab/skins/sky/import_skin.css" />
</head>
<body>
   <div id="tab_menu" style="height:30px;"></div>
   <div style="width:100%;">
	 <div id="page" style="width:100%;height:1000px;"></div>
   </div>		
</body>
<script type="text/javascript" src="static/js/jquery-1.7.2.js"></script>
<script type="text/javascript" src="plugins/tab/js/framework.js"></script>
<script type="text/javascript" src="plugins/tab/js/tab.js"></script>
<script type="text/javascript">
   var tab;
   $(function(){
	   tab = new TabView( {
			containerId :'tab_menu',
			pageid :'page',
			cid :'tab',
			position :"top"
	   });
	   tab.add( {
			id :'tab_index0',
			title :"主页",
			url :"<%=basePath%>login_default.do",
			isClosed :false
	   });
	   iframeTabHeight();
   });
   
   //设置高度
   function iframeTabHeight(){
		var _this = document.getElementById("page");
		var height = document.documentElement.clientHeight;
		_this.style.width = '100%';
		_this.style.height = (height  - 41) + 'px';
   }
   //添加tab选项卡
   function tabAddHandler(mid,mtitle,murl){
		tab.update({
			id :mid,
			title :mtitle,
			url :murl,
			isClosed :true
		});
		tab.add({
			id :mid,
			title :mtitle,
			url :murl,
			isClosed :true
		});
		tab.activate(mid);
	}
</script>
</html>

