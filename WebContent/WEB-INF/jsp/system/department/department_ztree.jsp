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
		<div class="main-content-inner">
		    <div style="width: 100%;margin-top:5px;">
		       <div style="width:15%;background-color:#F9F9F9;float: left;margin-right: 10px;">
				 <ul id="zTree" class="ztree"></ul>
			   </div>
			   <div id="pageData" style="width:80%;float: left;"></div> 
		    </div>
		</div><!-- main-content-inner -->
	</div><!-- main-content -->
 </div><!-- main-container -->  
</body>
<link rel="stylesheet" href="plugins/zTree/3.5/css/zTreeStyle/zTreeStyle.css"/>
<script type="text/javascript" src="plugins/zTree/3.5/js/jquery.ztree.core-3.5.js"></script>
<script type="text/javascript" src="plugins/zTree/3.5/js/jquery.ztree.excheck-3.5.js"></script>
<script type="text/javascript" src="plugins/zTree/3.5/js/jquery.ztree.exedit-3.5.js"></script>
<script type="text/javascript">
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
		//设置高度
		iframTreeHeight();
		//查询当前节点下组织机构集合
		findListDeptByPId('${DEPARTMENT_ID}');
	});
    //点击事件
    function TreeOnClick(event, treeId, treeNode) {
    	findListDeptByPId(treeNode.id);
    }
    //查询当前节点下组织机构集合
    function findListDeptByPId(DEPARTMENT_ID){
		top.showLoading();
    	$.ajax({  
            type:"POST",  
            url:"<%=basePath%>department/list.do",  
            data:{DEPARTMENT_ID:DEPARTMENT_ID},  
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
		_this.style.height = (height  - 26) + 'px';
    }
    
</script>
</html>