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
   	 <!-- 检索  -->
	 <form action="user/list.do" method="post" name="userForm" id="userForm">
	   <table style="margin-top:5px;">
	     <tr>
			<td>
			  	<div class="nav-search">
					<span class="input-icon">
						<input id="nameB" class="nav-search-input" type="text" name="keywords" placeholder="这里输入名称" />
						<i class="ace-icon fa fa-search nav-search-icon"></i>
					</span>
			   </div>
			</td>
		    <td style="vertical-align:top;padding-left:2px;">
			   <a class="btn btn-light btn-xs" onclick="searchs();"  title="检索">
			    <i id="nav-search-icon" class="ace-icon fa fa-search bigger-110 nav-search-icon blue"></i>
			   </a>
			</td>
		 </tr>	
	   </table>
	 </form>
	 <table class="table table-striped table-bordered table-hover" style="margin-top:5px;">
		<thead>
			<tr>
				<th class="center" style="width:35px;">
				<label class="pos-rel"><input type="checkbox" class="ace"  /><span class="lbl"></span></label>
				</th>
				<th class="center" style="width:50px;">序号</th>
				<th class="center">用户名</th>
				<th class="center">姓名</th>
				<th class="center">所属机构</th>
				<th class="center">手机号</th>
				<th class="center"><i class="ace-icon fa fa-envelope-o"></i>邮箱</th>
				<th class="center">操作</th>
			</tr>
		</thead>
		
		<!-- 开始循环 -->	
		<c:choose>
		 <c:when test="${not empty userList}">
		   <c:if test="${QX.cha == 1 }">
		       <c:forEach items="${userList}" var="user" varStatus="vs">
		         <tr>
		           	<td class='center' style="width: 30px;">
					  <label><input type='checkbox'  <c:if test="${user.USERNAME == 'admin'}">disabled="disabled"</c:if> value="${user.USER_ID }"  class="ace"/><span class="lbl"></span></label>
					</td>
					<td class='center' style="width: 30px;">${vs.index+1}</td>
					<td class="center"><a onclick="viewUser('${user.USERNAME}')" style="cursor:pointer;">${user.USERNAME }</a></td>
		            <td class="center">${user.NAME }</td>
		            <td class="center">${user.DEPT_NAME }</td>
		            <td class="center">${user.PHONE }</td>
		            <td class="center">
		              <a title="发送电子邮件" <c:if test="${QX.email == 1 }">onclick="sendEmail('${user.EMAIL }');"</c:if>>${user.EMAIL }&nbsp;</a>
		            </td>
		            <td class="center"> 
		              <c:if test="${QX.edit != 1 && QX.del != 1 }">
		                <span class="label label-large label-grey arrowed-in-right arrowed-in"><i class="ace-icon fa fa-lock" title="无权限"></i></span>
		              </c:if>
		              <div class="hidden-sm hidden-xs btn-group">
		              	<c:if test="${QX.edit == 1 }">
						   <a class="btn btn-xs btn-success" title="编辑" onclick="editUser('${user.USER_ID}');">
							 <i class="ace-icon fa fa-pencil-square-o bigger-120" title="编辑"></i>
						   </a>
						</c:if>
						<c:if test="${QX.del == 1 }">
						  <a class="btn btn-xs btn-danger" onclick="deleteUser('${user.USER_ID }','${user.USERNAME }');">
							<i class="ace-icon fa fa-trash-o bigger-120" title="删除"></i>
						  </a>
						</c:if>
		              </div>
		            </td>
		         </tr>
		       </c:forEach>
		   </c:if>
	   	   <c:if test="${QX.cha == 0 }">
			 <tr>
				<td colspan="10" class="center">您无权查看</td>
			 </tr>
		  </c:if>
		 </c:when>
	     <c:otherwise>
			<tr class="main_info">
				<td colspan="10" class="center">没有相关数据</td>
			</tr>
		 </c:otherwise>
		</c:choose>
	 </table>
	 
	 <div class="page-header position-relative">
	   <table style="width:100%;">
	     <tr>
			<td style="vertical-align:top;">
				<c:if test="${QX.add == 1 }">
				  <a class="btn btn-mini btn-success" onclick="addUser();">新增</a>
				</c:if>
				<%-- <c:if test="${QX.FHSMS == 1 }">
				  <a title="批量发送站内信" class="btn btn-mini btn-info" onclick="makeAll('确定要给选中的用户发送站内信吗?');">
				   <i class="ace-icon fa fa-envelope-o bigger-120"></i>
				  </a>
				</c:if>
				<c:if test="${QX.email == 1 }">
				 <a title="批量发送电子邮件" class="btn btn-mini btn-primary" onclick="makeAll('确定要给选中的用户发送邮件吗?');">
				  <i class="ace-icon fa fa-envelope bigger-120"></i>
				 </a>
				</c:if>
				<c:if test="${QX.sms == 1 }">
				  <a title="批量发送短信" class="btn btn-mini btn-warning" onclick="makeAll('确定要给选中的用户发送短信吗?');">
				   <i class="ace-icon fa fa-envelope-o bigger-120"></i>
				  </a>
				</c:if>
				<c:if test="${QX.del == 1 }">
				 <a title="批量删除" class="btn btn-mini btn-danger" onclick="makeAll('确定要删除选中的数据吗?');" >
				  <i class='ace-icon fa fa-trash-o bigger-120'></i>
				 </a>
				</c:if> --%>
			</td>
			<td style="vertical-align:top;">
			  <div class="pagination" style="float: right;padding-top: 0px;margin-top: 0px;">${page.toolsPage}</div>
		   </td>
		</tr>
	   </table>
	 </div>
	</div>  
   </div><!-- main-content -->
</div><!-- main-container -->
</body>
<!-- 删除时确认窗口 -->
<script type="text/javascript" src="static/js/bootbox.js"></script>
<script type="text/javascript">
    
	//检索用户
	function searchs(){
		window.location.href="user/list?name="+$("#nameB").val();
	};
	
	//新增用户
	function addUser(){
		top.showLoading();
		window.location.href="<%=basePath%>user/toAdd.do";
	};
    
	//修改用户
	function editUser(USER_ID){
		top.showLoading();
		window.location.href="<%=basePath%>user/toEdit.do?USER_ID="+USER_ID;
	};
	
	//删除
	function deleteUser(USER_ID,USER_NAME){
		bootbox.confirm("确定要删除["+USER_NAME+"]用户吗?", function(result) {
			$.ajax({
				type:'POST',
				url:'user/deleteUser',
				cache:false,
				async:false,
				dataType:"json",
				data:{"id":USER_ID},
				success:function(data){ 
					if(data.msg=="true"){
						layer.msg('删除成功！', {time:1000},function() {
							window.location.href="user/list";
						});  
					}else{
						layer.msg('删除失败！', {time:1000},function() {
							window.location.href="user/list";
						}); 
					}
				}
			}); 
		});
	}
</script>
</html>