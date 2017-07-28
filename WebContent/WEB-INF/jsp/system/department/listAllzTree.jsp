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
<%@ include file="/static/html/top.jsp"%>
</head>
<body>
<div class="main-container">
	<div class="main-content">
	    <div style="width: 100%;margin-top:5px;">
	       <input type="hidden" id="deptId" value=""/>
		   <input type="hidden" id="deptName" value=""/>
	       <div style="overflow: scroll; scrolling: yes;height:415px;width: 309px;">
			 <ul id="zTree" class="ztree"></ul>
		   </div>
		   <div style="width: 100%;" class="center">
		    <a class="btn btn-mini btn-primary" onclick="save();">保存</a>
		    <a class="btn btn-mini btn-danger" onclick="top.Dialog.close();">取消</a>
		  </div>
	    </div>
	</div><!-- main-content -->
 </div><!-- main-container -->  
</body>
<link rel="stylesheet" href="plugins/zTree/3.5/css/zTreeStyle/zTreeStyle.css"/>
<script type="text/javascript" src="plugins/zTree/3.5/js/jquery.ztree.core-3.5.js"></script>
<script type="text/javascript" src="plugins/zTree/3.5/js/jquery.ztree.excheck-3.5.js"></script>
<script type="text/javascript" src="plugins/zTree/3.5/js/jquery.ztree.exedit-3.5.js"></script>
<script type="text/javascript">
   var deptId;
   //加载zTree数据
   $(document).ready(function(){
		var setting = {
		   data: {
			    simpleData: {//简单数据模式
					enable:true, //数据是否采用简单 Array 格式，默认false 
					idKey: "id",
				    pIdKey: "pId"
				}
			},
         	callback : {
				onClick   : TreeOnClick
		    }
		};
		var zTreeNodes = eval('${zTreeNodes}');
		$.fn.zTree.init($("#zTree"), setting, zTreeNodes);
	});
    //点击事件
    function TreeOnClick(event, treeId, treeNode) {
    	 $("#deptId").val(treeNode.id);
		 $("#deptName").val(treeNode.name);
    }
	//保存
	function save(){
	   if(!$("#deptId").val()){
		  alert("请选择用户组织机构"); 
		  return;
	   }
	   top.Dialog.close();
	}
</script>
</html>