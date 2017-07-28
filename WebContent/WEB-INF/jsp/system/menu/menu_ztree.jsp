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
<html lang="en">
<head>
<base href="<%=basePath%>">
<link rel="stylesheet" href="plugins/zTree/2.6/zTreeStyle.css"/>
<%@ include file="/static/html/top.jsp"%>
</head>
<body>
<div class="main-container">
	<div class="main-content">
		<div class="main-content-inner">
		    <div style="width: 100%;margin-top:5px;">
		       <div style="width:15%;background-color:#F9F9F9;float: left;margin-right: 10px;">
				 <ul id="zTree" class="tree"></ul>
			   </div>
			   <div id="pageData" style="width:80%;float: left;"></div> 
		    </div>
		</div><!-- main-content-inner -->
	</div><!-- main-content -->
 </div><!-- main-container -->
</body>
<script type="text/javascript" src="static/js/head.js" ></script>
<script type="text/javascript" src="static/js/jquery-1.7.2.js"></script>
<script type="text/javascript" src="plugins/zTree/2.6/jquery.ztree-2.6.min.js"></script>
<script type="text/javascript">
   //加载zTree数据
   $(document).ready(function(){
		var setting = {
		    showLine: true,//父节点连接线
		    isSimpleData : true,  //是否采用简单 Array 格式,true表示采用 
		    treeNodeKey : "id",    
	        treeNodeParentKey : "pId",//如果为true必须声明父子关系 
	        callback : {
	        	click : TreeOnClick
			}
		};
		var zTreeNodes = eval('${zTreeNodes}');
		zTree = $("#zTree").zTree(setting, zTreeNodes);
		//设置高度
		iframTreeHeight();
		//查询当前节点下菜单集合
		findListMenuByPId('${MENU_ID}');
	});
   
    //点击事件
   function TreeOnClick(event, treeId, treeNode) {
	  findListMenuById("menu/toEdit.do",treeNode.id);
   }
   //查询当前节点菜单信息
   function findListMenuById(MSG,MENU_ID){
		top.showLoading();
   	    $.ajax({  
           type:"POST",  
           url:"<%=basePath%>"+MSG,  
           data:{MENU_ID:MENU_ID},  
           dataType: "html",   //返回值类型       
           success:function(data){ 
       		   top.hideLoading();
               $('#pageData').html(data);  
           }
       });  	
   } 
   //查询当前节点下菜单集合
   function findListMenuByPId(MENU_ID){
		top.showLoading();
   	    $.ajax({  
           type:"POST",  
           url:"<%=basePath%>menu/list.do",  
           data:{MENU_ID:MENU_ID},  
           dataType: "html",   //返回值类型       
           success:function(data){ 
       		   top.hideLoading();
               $('#pageData').html(data);  
           }
       });  	
   }
   //设置高度
   function iframTreeHeight(){
		var _this = document.getElementById("zTree");
		var height = document.documentElement.clientHeight;
		_this .style.width = '100%';
		_this .style.height = (height  - 26) + 'px';
   }
</script>
</html>