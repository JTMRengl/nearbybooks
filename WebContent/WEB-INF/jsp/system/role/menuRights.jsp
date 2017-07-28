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
<base href="<%=basePath%>">
<%@ include file="/static/html/top.jsp"%>
<link type="text/css" rel="stylesheet" href="plugins/zTree/2.6/zTreeStyle.css"/>
<body>
</head>
<body>
<div class="main-container">
	<div class="main-content">
	  <div class="col-xs-12">
      	<div style="overflow: scroll; scrolling: yes;height:415px;width: 309px;">
		   <ul id="zTree" class="tree" style="overflow:auto;"></ul>
		</div>
	  </div> 
	</div><!-- main-content -->
</div><!-- main-container -->
<div style="width: 100%;padding-top: 5px;" class="center">
	<a class="btn btn-mini btn-primary" onclick="save();">保存</a>
	<a class="btn btn-mini btn-danger" onclick="top.Dialog.close();">取消</a>
</div>
</body>
<script type="text/javascript" src="plugins/zTree/2.6/jquery.ztree-2.6.min.js"></script>
<script type="text/javascript">
	var zTree;
	$(document).ready(function(){
		var setting = {
		    showLine: true,
		    checkable: true
		};
		zTree = $("#zTree").zTree(setting, eval('${zTreeNodes}'));
	});
	//保存
	function save(){
		var nodes = zTree.getCheckedNodes();
		var tmpNode;
		var ids = "";
		for(var i=0; i<nodes.length; i++){
			tmpNode = nodes[i];
			if(i!=nodes.length-1){
				ids += tmpNode.id+",";
			}else{
				ids += tmpNode.id;
			}
		}
		var ROLE_ID = "${ROLE_ID}";
		var url = "<%=basePath%>role/updateMenuRights.do";
		var data = {"ROLE_ID":ROLE_ID,"menuIds":ids,MSG:'${msg}'};
		$.post(url,data,function(data){
			top.Dialog.close();
		});
	}
</script>
</html>