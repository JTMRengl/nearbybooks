<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<table class="table table-striped table-bordered table-hover">	
	<thead>
		<tr>
			<th class="center" style="width:50px;">序号</th>
			<th class="center">名称</th>
			<th class="center">负责人</th>
			<th class="center">操作</th>
		</tr>
	</thead>
	<tbody>
	  <c:choose>
		<c:when test="${not empty deptList}">
		  <c:if test="${QX.cha == 1 }">
		     <c:forEach items="${deptList}" var="var" varStatus="vs">
			   <tr>
			     <td class='center' style="width: 30px;">${vs.index+1}</td>
			     <td class='center'>
			       <a href="javascript:toNodeDept('${var.DEPARTMENT_ID }');">
			        <i class="ace-icon fa fa-share bigger-100"></i>&nbsp;${var.NAME}
			       </a>
			     </td>
			     <td class='center'>${var.HEADMAN}</td>
			     <td class="center">
			       <c:if test="${QX.edit != 1 && QX.del != 1 }">
					 <span class="label label-large label-grey arrowed-in-right arrowed-in">
					 <i class="ace-icon fa fa-lock" title="无权限"></i></span>
				   </c:if>
				   <div class="hidden-sm hidden-xs btn-group">
					<c:if test="${QX.edit == 1 }">
					<a class="btn btn-xs btn-success" title="编辑" onclick="editDept('${var.DEPARTMENT_ID}');">
						<i class="ace-icon fa fa-pencil-square-o bigger-120" title="编辑"></i>
					</a>
					</c:if>
					<c:if test="${QX.del == 1 }">
					<a class="btn btn-xs btn-danger" onclick="deleteDept('${var.DEPARTMENT_ID}');">
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
				<td colspan="100" class="center">您无权查看</td>
			</tr>
		   </c:if>
	    </c:when>
	    <c:otherwise>
	      	<tr class="main_info">
				<td colspan="100" class="center" >没有相关数据</td>
			</tr>
	    </c:otherwise>
	  </c:choose>  		
	</tbody>
</table>
<div class="page-header position-relative">
  <table style="width:100%;">
	<tr>
	  <td style="vertical-align:top;">
		<c:if test="${QX.add == 1 }">
		<a class="btn btn-sm btn-success" onclick="addDept('${DEPARTMENT_ID}');">新增</a>
		</c:if>
		<c:if test="${null != pd.DEPARTMENT_ID && pd.DEPARTMENT_ID != ''}">
		<a class="btn btn-sm btn-success" onclick="toNodeDept('${pd.PARENT_ID}');">返回</a>
		</c:if>
	 </td>
	 <td style="vertical-align:top;">
	  <div class="pagination" style="float: right;padding-top: 0px;margin-top: 0px;">${page.pageStr}</div>
	 </td>
	</tr>
 </table>
</div>
<script type="text/javascript" src="static/js/jquery.js"></script>
<script type="text/javascript" src="static/js/bootstrap/bootstrap.js" ></script>
<!-- 删除时确认窗口 -->
<script type="text/javascript" src="static/js/bootbox.js"></script>
<script type="text/javascript">
	//子节点组织机构列表
	function toNodeDept(DEPARTMENT_ID){
		//查询当前节点下组织机构集合
		findListDeptByPId(DEPARTMENT_ID);
	};
	//新增组织机构
	function addDept(DEPARTMENT_ID){
		 top.showLoading();
		 var diag = new top.Dialog();
		 diag.Drag=true;
		 diag.Title ="新增组织机构";
		 diag.URL = '<%=basePath%>department/toAdd.do?DEPARTMENT_ID='+DEPARTMENT_ID;
		 diag.Width = 700;
		 diag.Height = 446;
		 diag.CancelEvent = function(){ //关闭事件
			window.location.href="<%=basePath%>department/listAllDepartment.do?DEPARTMENT_ID=${DEPARTMENT_ID}";
			diag.close();
		 };
		 diag.show();
	};
	
	//编辑组织机构
	function editDept(DEPARTMENT_ID){
		 top.showLoading();
		 var diag = new top.Dialog();
		 diag.Drag=true;
		 diag.Title ="修改组织机构";
		 diag.URL = '<%=basePath%>department/toEdit.do?DEPARTMENT_ID='+DEPARTMENT_ID;
		 diag.Width = 700;
		 diag.Height = 446;
		 diag.CancelEvent = function(){ //关闭事件
			diag.close();
		 };
		 diag.show();
	};
	
	//删除
	function deleteDept(DEPARTMENT_ID){
		bootbox.confirm("确定要删除吗?", function(result) {
			if(result) {
			   top.showLoading();
			   var url = "<%=basePath%>department/deleteDept.do?DEPARTMENT_ID="+DEPARTMENT_ID;
			   $.get(url,function(data){
				   if("success" == data.result){
					   window.location.href="<%=basePath%>department/listAllDepartment.do?DEPARTMENT_ID=${DEPARTMENT_ID}";
				   }else{
					   top.hideLoading();
					   bootbox.dialog({
							message: "<span class='bigger-110'>删除失败！请先删除子级部门.</span>",
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
			   });
			}
		});
	}
</script>