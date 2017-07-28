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
	<div class="main-container" >
	  <div class="main-content">
	   <div class="col-xs-12">
	   <!-- 角色列表-->
	   <table class="table table-striped table-bordered table-hover" style="margin-top:7px;">
  			 <thead>
			<tr>
				<th class="center" style="width: 50px;">序号</th>
				<th class='center'>角色</th>
				<c:if test="${QX.edit == 1 }">
					<th class="center">增</th>
					<th class="center">删</th>
					<th class="center">改</th>
					<th class="center">查</th>
				</c:if>
				<th style="width:155px;"  class="center">操作</th>
			</tr>
		 </thead>
         <c:choose>
		  <c:when test="${not empty roleList}">
			<c:if test="${QX.cha == 1 }">
			 <c:forEach items="${roleList}" var="role" varStatus="vs">
			  <tr>
			   <td class='center' style="width:30px;">${vs.index+1}</td>
			   <td id="ROLE_${role.ROLE_ID }">${role.ROLE_NAME }</td>
			   <c:if test="${QX.edit == 1 }">
			    <td style="width:30px;">
			     <a onclick="menuRights('${role.ROLE_ID }','add_qx');" class="btn btn-warning btn-mini" title="分配新增权限">
			      <i class="ace-icon fa fa-wrench bigger-110 icon-only"></i>
			     </a>
			    </td>
			    <td style="width:30px;">
			     <a onclick="menuRights('${role.ROLE_ID }','del_qx');" class="btn btn-warning btn-mini" title="分配删除权限">
			      <i class="ace-icon fa fa-wrench bigger-110 icon-only"></i>
			     </a>
			    </td>
			    <td style="width:30px;">
			     <a onclick="menuRights('${role.ROLE_ID }','edit_qx');" class="btn btn-warning btn-mini" title="分配修改权限">
			      <i class="ace-icon fa fa-wrench bigger-110 icon-only"></i>
			     </a>
			    </td>
			    <td style="width:30px;">
			     <a onclick="menuRights('${role.ROLE_ID }','cha_qx');" class="btn btn-warning btn-mini" title="分配查看权限">
			      <i class="ace-icon fa fa-wrench bigger-110 icon-only"></i>
			     </a>
			   </td>
			  </c:if>
			  <td style="width:155px;">
			   <c:if test="${QX.edit != 1 && QX.del != 1 }">
			    <div style="width:100%;" class="center">
			     <span class="label label-large label-grey arrowed-in-right arrowed-in">
			      <i class="ace-icon fa fa-lock" title="无权限"></i>
			     </span>
			   </div>
			  </c:if>
			  <c:if test="${QX.edit == 1 }">
			   <a class="btn btn-mini btn-purple" onclick="menuRights('${role.ROLE_ID }','rights');">
			    <i class="icon-pencil"></i>菜单权限
			   </a>
			   <a class='btn btn-mini btn-info' title="编辑" onclick="editRole('${role.ROLE_ID }');">
			    <i class='ace-icon fa fa-pencil-square-o bigger-130'></i>
			   </a>
			 </c:if>
			 <c:choose> 
				<c:when test="${role.ROLE_ID == '2' or role.ROLE_ID == '1'}">
				</c:when>
				<c:otherwise>
				 <c:if test="${QX.del == 1 }">
				  <a class='btn btn-mini btn-danger' title="删除" onclick="deleteRole('${role.ROLE_ID }',1,'${role.ROLE_NAME }');">
				   <i class='ace-icon fa fa-trash-o bigger-130'></i>
				  </a>
				 </c:if>
				</c:otherwise>
			 </c:choose>
			 </td>
			</tr>
			</c:forEach>
		    </c:if>
			<c:if test="${QX.cha == 0 }">
				<tr>
					<td colspan="100" class="center">您无权查看</td>
				</tr>
			</c:if>
		   </c:when>
		   <c:otherwise>
			<tr>
			 <td colspan="100" class="center" >没有相关数据</td>
			</tr>
		  </c:otherwise>
	     </c:choose> 
	    </table> 
	   </div> 		
	   <c:if test="${QX.add == 1 }">
		&nbsp;&nbsp;<a class="btn btn-sm btn-success" onclick="addRole('${role.ROLE_ID}');">新增角色</a>
	  </c:if>			
	</div><!--  main-content -->
   </div><!--  main-container -->					
</body>
<!-- 删除时确认窗口 -->
<script type="text/javascript" src="static/js/bootbox.js"></script>
<script type="text/javascript">

	//新增组
	function addRole(ROLE_ID){
		 var diag = new top.Dialog();
		 diag.Drag=true;
		 diag.Title ="新增";
		 diag.URL = '<%=basePath%>role/toAdd.do?ROLE_ID='+ROLE_ID;
		 diag.Width = 222;
		 diag.Height = 100;
		 diag.CancelEvent = function(){ //关闭事件
			setTimeout("self.location.reload()",100);
			diag.close();
		 };
		 diag.show();
	}
	//修改组
	function editRole(ROLE_ID){
		 var diag = new top.Dialog();
		 diag.Drag=true;
		 diag.Title ="新增";
		 diag.URL = '<%=basePath%>role/toEdit.do?ROLE_ID='+ROLE_ID;
		 diag.Width = 222;
		 diag.Height = 100;
		 diag.CancelEvent = function(){ //关闭事件
			setTimeout("self.location.reload()",100);
			diag.close();
		 };
		 diag.show();
	}
	
	//删除
	function deleteRole(ROLE_ID,TYPE,ROLE_NAME){
		bootbox.confirm("确定要删除["+ROLE_NAME+"]吗?", function(result) {
			if(result) {
				var url = "<%=basePath%>role/deleteRole.do?ROLE_ID="+ROLE_ID;
				top.showLoading();
				$.get(url,function(data){
					if("success" == data.result){
						if(TYPE==1){
							top.showLoading();
							document.location.reload();
						}else{
							top.showLoading();
							window.location.href="role.do";
						}	
					}else{
					   if("fail" == data.result){
						 top.hideLoading();
						 bootbox.dialog({
							message: "<span class='bigger-110'>删除失败，请先删除下级角色!</span>",
							buttons: 			
							{
								"button" :
								{
									"label" : "确定",
									"className" : "btn-sm btn-success"
								}
							}
						 });   
					   }else{
						   top.hideLoading();
						   bootbox.dialog({
								message: "<span class='bigger-110'>删除失败，此角色已被使用!</span>",
								buttons: 			
								{
									"button" :
									{
										"label" : "确定",
										"className" : "btn-sm btn-success"
									}
								}
						  }); 
					   }
					}
				});
			}
		});
	}
	//按钮权限(增删改查)
	function menuRights(ROLE_ID,MSG){
		var Title="";
		if(MSG == 'add_qx'){
			 Title = "授权新增权限(此角色下打勾的菜单拥有新增权限)";
		}else if(MSG == 'del_qx'){
			Title = "授权删除权限(此角色下打勾的菜单拥有删除权限)";
		}else if(MSG == 'edit_qx'){
			Title = "授权修改权限(此角色下打勾的菜单拥有修改权限)";
		}else if(MSG == 'cha_qx'){
			Title = "授权查看权限(此角色下打勾的菜单拥有查看权限)";
		}else if(MSG=='rights'){
			Title = "授权查看权限(此角色下打勾的菜单拥有查看权限)";
		}
		 var diag = new top.Dialog();
		 diag.Drag = true;
		 diag.Title = Title;
		 diag.URL = '<%=basePath%>role/menuRights.do?ROLE_ID='+ROLE_ID+'&MSG='+MSG;
		 diag.Width = 330;
		 diag.Height = 450;
		 diag.CancelEvent = function(){ //关闭事件
			diag.close();
		 };
		 diag.show();
	}
</script>
</html>