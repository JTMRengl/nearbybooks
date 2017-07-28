<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<th class="center" style="width: 50px;">序号</th>
		<th class='center'>名称</th>
		<th class='center'>类别</th>
		<th class='center'>资源路径</th>
		<th class='center' style="width: 50px;">状态</th>
		<th class='center' style="width: 120px;">操作</th>
	</tr>
  </thead>
  <tbody>
    <c:choose>
	  <c:when test="${not empty menuList}">
	    <c:forEach items="${menuList}" var="menu">
	      <tr>
	        <td class='center'>${menu.MENU_ORDER }</td>
	        <td class='center'>
	          <i class="${menu.MENU_ICON }">&nbsp;</i>
	          <a href="javascript:toNodeMenu('${menu.MENU_ID }')">${menu.MENU_NAME }</a>&nbsp;
	          <c:if test="${menu.PARENT_ID == '0' }">
	            <c:if test="${menu.MENU_TYPE == '1' }">
	              <span class="label label-success arrowed">系统</span>
	            </c:if>
	            <c:if test="${menu.MENU_TYPE != '1' }">
	             <span class="label label-important arrowed-in">业务</span>
	            </c:if>
	          </c:if>
	        </td>
	        <td class='center'>
	          <c:if test="${menu.ISQTMENU == '1'}"> 前台 </c:if>
			  <c:if test="${menu.ISQTMENU == '0'}"> 后台 </c:if>
	        </td>
	        <td class='center'>${menu.MENU_URL == '#'? '': menu.MENU_URL}</td>
	        <td class='center'>
	          <i class="ace-icon fa ${menu.MENU_STATE == 1? 'fa-eye': 'fa-eye-slash'}"></i>
	        </td>
	        <td class='center'>
	          	<c:if test="${QX.edit != 1 && QX.del != 1 }">
				 <span class="label label-large label-grey arrowed-in-right arrowed-in"><i class="ace-icon fa fa-lock" title="无权限"></i></span>
				</c:if>
				<div class="hidden-sm hidden-xs action-buttons">
				<c:if test="${QX.edit == 1 }">
				<a class="blue" href="javascript:editIcon('${menu.MENU_ID }');"> 
					<i class="ace-icon glyphicon glyphicon-picture bigger-130" title="编辑图标"></i>
				</a> 
				<a class="green" href="javascript:editMenu('${menu.MENU_ID }');">
					<i class="ace-icon fa fa-pencil-square-o bigger-130" title="修改"></i>
				</a>
				</c:if>
				<c:if test="${QX.del == 1 }">
				<a class="red" href="javascript:deleteMenu('${menu.MENU_ID }');">
					<i class="ace-icon fa fa-trash-o bigger-130" title="删除"></i>
				</a>
				</c:if>
			   </div>
	        </td>
	      </tr>
	     </c:forEach>
	   </c:when>
	   <c:otherwise>
	   	<tr>
		 <td colspan="100" class='center'>没有相关数据</td>
		</tr>
	  </c:otherwise>
	</c:choose> 
  </tbody>
</table>	
<c:if test="${QX.add == 1 }"><a class="btn btn-sm btn-success" onclick="addMenu('${MENU_ID}');">新增</a></c:if>
<c:if test="${null != pd.MENU_ID && pd.MENU_ID != '0'}">
	<a class="btn btn-sm btn-success" onclick="toNodeMenu('${pd.PARENT_ID}');">返回</a>
</c:if>
<script type="text/javascript" src="static/js/jquery.js"></script>
<script type="text/javascript" src="static/js/bootstrap/bootstrap.js" ></script>
<!-- 删除时确认窗口 -->
<script type="text/javascript" src="static/js/bootbox.js"></script>
<script type="text/javascript">
    
	//子节点菜单列表
	function toNodeMenu(MENU_ID){
		//查询当前节点下菜单集合
		findListMenuByPId(MENU_ID);
	};
	//新增菜单
	function addMenu(MENU_ID){
		//查询当前节点菜单信息
		findListMenuById("menu/toAdd.do",MENU_ID);
	};
	
	//编辑菜单
	function editMenu(MENU_ID){
		//查询当前节点菜单信息
		findListMenuById("menu/toEdit.do",MENU_ID);
	};
	
	//删除菜单
	function deleteMenu(MENU_ID){
		bootbox.confirm("确定要删除此菜单吗?", function(result) {
			if(result) {
				var url = "<%=basePath%>menu/deleteMenu.do?MENU_ID="+MENU_ID;
				top.showLoading();
				$.get(url,function(data){
					if("success" == data.result){
					   window.location.href="<%=basePath%>menu/listAllMenu.do?MENU_ID="+'${MENU_ID}';
					}else{
						top.hideLoading();
						bootbox.dialog({
							message: "<span class='bigger-110'>删除失败,请先删除子菜单!</span>",
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
	
	//编辑菜单图标
	function editIcon(MENU_ID){
		 top.showLoading();
	   	 var diag = new top.Dialog();
		 diag.Drag=true;
		 diag.Title ="编辑图标";
		 diag.URL = '<%=basePath%>menu/toEditIcon.do?MENU_ID='+MENU_ID;
		 diag.Width = 800;
		 diag.Height = 380;
		 diag.CancelEvent = function(){ //关闭事件
			 diag.close();
		 };
		 diag.show();
	}
</script>
</html>