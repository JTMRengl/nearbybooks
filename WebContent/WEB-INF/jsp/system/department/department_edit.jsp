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
<body>
</head>
<body>
<div class="main-container">
	<div class="main-content">
	  <form action="department/${msg }.do" name="deptForm" id="deptForm" method="post">
	  	<input type="hidden" name="DEPARTMENT_ID" id="DEPARTMENT_ID" value="${pd.DEPARTMENT_ID}"/>
		<input type="hidden" name="PARENT_ID" id="PARENT_ID" value="${null == pd.PARENT_ID ? DEPARTMENT_ID:pd.PARENT_ID}"/>
	    <table id="table_report" class="table table-striped table-bordered table-hover">
			<tr>
				<td style="width:79px;text-align: right;padding-top: 13px;">上级:</td>
				<td>
					<div class="col-xs-4 label label-lg label-light arrowed-in arrowed-right">
						<b>${null == fd.NAME ?'(无) 此部门为顶级':fd.NAME}</b>
					</div>
				</td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">名称:</td>
				<td><input type="text" name="NAME" id="NAME" value="${pd.NAME}" maxlength="50" autocomplete="off" placeholder="这里输入名称" title="名称" style="width:98%;"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">负责人:</td>
				<td><input type="text" name="CHIEFNAME" id="CHIEFNAME" value="${pd.CHIEFNAME}" maxlength="32" autocomplete="off" placeholder="这里输入负责人" title="负责人" style="width:66%;"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">手机号:</td>
				<td><input type="text" name="CHIEFPHONE" id="CHIEFPHONE" value="${pd.CHIEFPHONE}" maxlength="11" autocomplete="off" placeholder="这里输入电话" title="电话" style="width:66%;"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">地址:</td>
				<td><input type="text" name="ADDRESS" id="ADDRESS" value="${pd.ADDRESS}" maxlength="32" autocomplete="off" placeholder="这里输入地址" title="地址" style="width:98%;"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">备注:</td>
				<td>
					<textarea rows="3" cols="46" name="REMARK" id="REMARK" placeholder="这里输入备注" title="备注"  style="width:98%;">${pd.REMARK}</textarea>
				</td>
			</tr>
			<tr>
				<td class="center" colspan="10">
					<a class="btn btn-mini btn-primary" onclick="save();">保存</a>
					<a class="btn btn-mini btn-danger" onclick="top.Dialog.close();">取消</a>
				</td>
			</tr>
		</table>
	  </form>
	</div><!-- main-content -->
</div><!-- main-container -->
</body>
<script type="text/javascript">
	//保存
	function save(){
		if($("#NAME").val()==""){
			$("#NAME").tips({
				side:3,
	            msg:'请输入菜单名称',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#NAME").focus();
			return false;
	   }	
	   if($("#NAME").val().length>12){
			$("#NAME").tips({
				side:3,
	            msg:'名称不能大于12',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#NAME").focus();
		 return false;
	   }
	   if($("#CHIEFPHONE").val()&&isPhone($("#CHIEFPHONE").val())){
			$("#CHIEFPHONE").tips({
				side:3,
	            msg:'手机号码格式不正确',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#CHIEFPHONE").focus();
		 return false;
	   }
	   $("#deptForm").submit();
	}
</script>
</html>