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
</head>
<body>
<div class="main-container">
	<div class="main-content">
	  <div class="col-xs-12">
       <form action="role/${msg}.do" name="roleForm" id="roleForm"  method="post">
	     <input type="hidden" name="ROLE_ID" id="ROLE_ID" value="${role.ROLE_ID}"/> 
	     <div style="padding-top:13px;">
     		 <table class="center" style="width:100%;">
				<tr style="text-align: center;">
					<td>
					<input type="text" name="ROLE_NAME" id="roleName" placeholder="这里输入名称" autocomplete="off" value="${role.ROLE_NAME}"  title="名称" style="width:99%;"/>
					</td>
				</tr>
				<tr>
					<td style="text-align: center;padding-top:5px;">
						<a class="btn btn-mini btn-primary" onclick="save();">保存</a>
						<a class="btn btn-mini btn-danger" onclick="top.Dialog.close();">取消</a>
					</td>
				</tr>
			</table>
		 </div>	
	   </form>
	  </div> 
	</div><!-- main-content -->
</div><!-- main-container -->
</body>
<script type="text/javascript">
	//保存
	function save(){
	   if($("#roleName").val()==""){
			$("#roleName").tips({
				side:3,
	            msg:'请输入',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#roleName").focus();
			return false;
	    }
	   $("#roleForm").submit();
	}
</script>
</html>