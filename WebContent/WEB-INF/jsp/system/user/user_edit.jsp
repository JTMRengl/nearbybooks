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
<!-- 下拉框 -->
<link rel="stylesheet" href="static/css/chosen.css" />
<%@ include file="/static/html/top.jsp"%>
</head>
<body>
	<div class="main-container">
		<div class="col-xs-12">
			<div class="page-header">
				<h1>
					<small> <i class="ace-icon fa fa-angle-double-right"></i> <c:if
							test="${msg=='add'}">新增用户</c:if> <c:if test="${msg=='edit'}">编辑用户</c:if>
					</small>
				</h1>
			</div>
			<form action="user/${msg}.do" name="userForm" id="userForm"
				method="post" enctype="multipart/form-data" class="form-horizontal"
				style="width: 100%;">
				<input type="hidden" name="USER_ID" id="USER_ID"
					value="${pd.USER_ID }" /> <input type="hidden" name="DEPT_ID"
					id="DEPT_ID" value="${pd.DEPT_ID }" /> <input type="hidden"
					name="TYPE" id="TYPE"
					value="<c:if test="${pd.TYPE==null }">0</c:if><c:if test="${pd.TYPE!=null }">${pd.TYPE}</c:if>" />
				<input type="hidden" name="SEX" id="SEX"
					value='<c:if test="${pd.SEX==null }">0</c:if><c:if test="${pd.SEX!=null }">${pd.SEX}</c:if>' />
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right"
						for="form-field-1">登录帐号 :</label>
					<div class="col-sm-9">
						<input type="text" name="USERNAME" id="USERNAME"
							value="${pd.USERNAME }" autocomplete="off" placeholder="这里输入登录帐号"
							class="col-xs-10 col-sm-5" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right"
						for="form-field-1">姓名 :</label>
					<div class="col-sm-9">
						<input type="text" name="NAME" id="NAME" value="${pd.NAME }"
							autocomplete="off" placeholder="这里输入姓名"
							class="col-xs-10 col-sm-5" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right"
						for="form-field-1">性别 :</label>
					<div class="col-sm-9">
						<label style="float: left; padding-left: 8px; padding-top: 7px;">
							<input name="SEX_VAL" type="radio" class="ace" value="0"
							onclick="setRadioVal('SEX');"
							<c:if test="${pd.SEX == '0'||pd.SEX == null}">checked="checked"</c:if> />
							<span class="lbl"> 男</span>
						</label> <label style="float: left; padding-left: 5px; padding-top: 7px;">
							<input name="SEX_VAL" type="radio" class="ace" value="1"
							onclick="setRadioVal('SEX');"
							<c:if test="${pd.SEX == '1' }">checked="checked"</c:if> /> <span
							class="lbl"> 女</span>
						</label>
					</div>
				</div>

				<%-- <div class="form-group">
		<label class="col-sm-3 control-label no-padding-right" for="form-field-1">组织机构 :</label>
		<div class="col-sm-9">
			<input type="text" name="DEPTNAME" id="deptName" value="${pd.DEPTNAME }" autocomplete="off" placeholder="这里输入组织机构" class="col-xs-10 col-sm-5" />
		</div>
	  </div>	 --%>

				<div class="form-group" style="display: none;">
					<label class="col-sm-3 control-label no-padding-right"
						for="form-field-1">用户类型 :</label>
					<div class="col-sm-9">
						<select id="TYPE_VAL" style="vertical-align: top; width: 420px;">
							<option value="0">教师</option>
							<option value="1">学生</option>
						</select>
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right"
						for="form-field-1">手机号 :</label>
					<div class="col-sm-9">
						<input type="text" name="PHONE" id="PHONE" value="${pd.PHONE }"
							autocomplete="off" placeholder="这里输入手机号"
							class="col-xs-10 col-sm-5" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right"
						for="form-field-1">Email :</label>
					<div class="col-sm-9">
						<input type="text" name="EMAIL" id="EMAIL" value="${pd.EMAIL }"
							autocomplete="off" placeholder="这里输入邮箱"
							class="col-xs-10 col-sm-5" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right"
						for="form-field-1">角色权限 :</label>
					<div class="col-sm-9">
						<table>
							<tr>
								<td style="width: 200px;"><select id="rightSelect"
									name="rightSelect" multiple="multiple" style="width: 170px;">
										<c:forEach items="${userRoleList }" var="role">
											<option value="${role.ROLE_ID }">${role.ROLE_NAME }</option>
										</c:forEach>
								</select></td>
								<td style="width: 100px;"><input id="rightMove"
									class="s_btn mb10" type="button"
									style="border: 0 none; color: #147dc5;" value=">>"> <input
									id="leftMove" class="s_btn" type="button"
									style="border: 0 none; color: #147dc5;" value="<<"></td>
								<td style="width: 250px;"><select id="leftSelect"
									multiple="multiple" style="width: 170px;">
										<c:forEach items="${roleList }" var="role">
											<option value="${role.ROLE_ID }">${role.ROLE_NAME }</option>
										</c:forEach>
								</select></td>
							</tr>
						</table>
					</div>
					<input type="text" name="numVal" id="numVal" style="display: none;">
				</div>

				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right"
						for="form-field-1">介绍 :</label>
					<div class="col-sm-9">
						<textarea name="DESCRIPTION" id="DESCRIPTION" rows="5"
							style="width: 50%;">${pd.DESCRIPTION }</textarea>
					</div>
				</div>
				<div class="clearfix form-group">
					<div class="col-md-offset-3 col-md-9">
						<a class="btn btn-mini btn-primary" onclick="save();">保存</a> <a
							class="btn btn-mini btn-danger" href="user/list.do">取消</a>
					</div>
				</div>

			</form>
		</div>
	</div>
	<!-- main-container -->
</body>
<!-- 下拉框 -->
<script src="static/js/chosen.jquery.js"></script>
<script type="text/javascript">

    $(function(){
    	$("#TYPE_VAL").chosen({
    		disable_search:true //隐藏搜索
    	});
    });
    //保存
    function save(){
	   if($("#USERNAME").val()==""){
			$("#USERNAME").tips({
				side:3,
	            msg:'请输入登录账号',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#USERNAME").focus();
			return false;
	   }
	   if(!isRightful($("#USERNAME").val())){
			$("#USERNAME").tips({
				side:3,
	            msg:'登录账号只能是字母，下划线，数字',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#USERNAME").focus();
			return false;
	   }
	   if($("#NAME").val()==""){
			$("#NAME").tips({
				side:3,
	            msg:'请输入姓名',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#NAME").focus();
			return false;
	   }
	   if(!isChinese($("#NAME").val())){
			$("#NAME").tips({
				side:3,
	            msg:'姓名只能是中文',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#NAME").focus();
			return false;
	   }
	   /* if($("#deptName").val()==""){
			$("#deptName").tips({
				side:3,
	            msg:'请选择用户所属组织机构',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#deptName").focus();
			return false;
	   } */
	   if($("#PHONE").val()!=''&&!isPhone($("#PHONE").val())){
			$("#PHONE").tips({
				side:3,
	            msg:'手机号格式不正确',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#PHONE").focus();
			return false;
	   }
	   if($("#EMAIL").val()!=''&&!isEmail($("#EMAIL").val())){
			$("#EMAIL").tips({
				side:3,
	            msg:'邮箱格式不正确',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#EMAIL").focus();
			return false;
	   }
	   
	   if(document.getElementById("rightSelect").options.length == 0){
		   alert("角色权限不能为空");
	   	   return false;
	   }else{
		   var numVal = "";
		   for (var i = 0; i < document.getElementById("rightSelect").options.length; i++) {
				if (i == 0) {
					numVal += document.getElementById("rightSelect").options[i].value;	
				}else{
					numVal += ","+document.getElementById("rightSelect").options[i].value;
				}
			}
		   $("#numVal").val(numVal);
	   }
	   
       $("#userForm").submit();
    }
	//设置性别值
	function setRadioVal(data){
	  $("#"+data).val($('input[name="'+data+'_VAL"]:checked').val());
	}
	
	 $('#leftMove').on('click', function(){
		var value = $('#leftSelect option:selected').val();
		var text = $('#leftSelect option:selected').text();
		
		if (value != undefined) {
			if (getSelect(value,'rightSelect')) {
				$("#rightSelect").append("<option value='"+value+"'>"+text+"</option>");
			}else{
				alert("已分配该角色!");
			}
		}else{
			alert("请选择分配角色!");
		}
	 })
	 
	 $('#rightMove').on('click', function(){
		 $('#rightSelect option:selected').remove();
	 })
	
	 //遍历Select
	 function getSelect(val,id){
		 var count = 0;
		 for (var i = 0; i < document.getElementById(id).options.length; i++) {
			if (document.getElementById(id).options[i].value == val) {
					return false;
			}	
		}
		return true;
	 }
	
	 
	
    //选择组织机构触发事件
	<%-- $('#deptName').on('click', function(){
		 var diag = new top.Dialog();
		 diag.Drag = true;
		 diag.Title = "组织机构";
		 diag.URL = '<%=basePath%>department/listAllzTree.do';
		 diag.Width = 320;
		 diag.Height = 450;
		 diag.CancelEvent = function(){ //关闭事件
			 var deptId=diag.innerFrame.contentWindow.document.getElementById('deptId').value;
			 var deptName=diag.innerFrame.contentWindow.document.getElementById('deptName').value;
			 if(deptId!=0){
				 $("#DEPT_ID").val(deptId);
				 $("#deptName").val(deptName);
			 }
			 diag.close(); 
		 };
	     diag.show();
	}); --%>
</script>
</html>