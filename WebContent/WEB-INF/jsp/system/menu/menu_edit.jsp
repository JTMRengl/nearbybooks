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
<body>
<div class="page-content">
	<div class="page-header">
		<h1>
			<small>
				<i class="ace-icon fa fa-angle-double-right"></i>
				<c:if test="${MSG=='add'}">新增菜单</c:if>
				<c:if test="${MSG=='edit'}">编辑菜单</c:if>
			</small>
		</h1>
	</div>
	<form  action="menu/${MSG}.do" name="menuForm" id="menuForm" method="post" class="form-horizontal">
	  <input type="hidden" name="MENU_ID" id="MENU_ID" value="${pd.MENU_ID }"/>
	  <input type="hidden" name="PARENT_ID" id="PARENT_ID" value="${fd.MENU_ID}"/>
	  <input type="hidden" name="ISQTMENU" id="ISQTMENU" value='${pd.ISQTMENU}'/>
	  <input type="hidden" name="MENU_TYPE" id="MENU_TYPE" value='${pd.MENU_TYPE}'/>
	  <input type="hidden" name="MENU_STATE" id="MENU_STATE" value='${pd.MENU_STATE}'/>
	  <div class="form-group">
		<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 上级 :</label>
		<div class="col-sm-9">
			<div style="padding-top:5px;">
				<div class="col-xs-4 label label-lg label-light arrowed-in arrowed-right">
					<b>${null == fd.MENU_NAME ?'(无) 此项为顶级菜单':fd.MENU_NAME}</b>
				</div>
			</div>
		</div>
	  </div>
	  <div class="form-group">
		<label class="col-sm-3 control-label no-padding-right" for="form-field-1">名称 :</label>
		<div class="col-sm-9">
			<input type="text" name="MENU_NAME" id="menuName" value="${pd.MENU_NAME }" autocomplete="off" placeholder="这里输入菜单名称" class="col-xs-10 col-sm-5" />
		</div>
	  </div>
		
	  <div class="form-group">
		<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 菜单类型 :</label>
		<div class="col-sm-9">
			<label style="float:left;padding-left: 8px;padding-top:7px;">
				<input name="ISQTMENU_VAL" type="radio" value="1" class="ace" onclick="setRadioVal('ISQTMENU');"  <c:if test="${pd.ISQTMENU == '1' }">checked="checked"</c:if> />
				<span class="lbl"> 前端菜单</span>
			</label>
			<label style="float:left;padding-left: 5px;padding-top:7px;">
				<input name="ISQTMENU_VAL" type="radio" value="0" class="ace"  onclick="setRadioVal('ISQTMENU');" <c:if test="${pd.ISQTMENU == '0'||pd.ISQTMENU == null}">checked="checked"</c:if> />
				<span class="lbl"> 后端菜单</span>
			</label> 
		</div>
	 </div>
		
	 <div class="form-group">
		<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 链接  :</label>
		<div class="col-sm-9">
			<c:if test="${null != fd.MENU_NAME}">
			<input type="text" name="MENU_URL" id="menuUrl" value="${pd.MENU_URL }" autocomplete="off" placeholder="这里输入菜单链接" class="col-xs-10 col-sm-5" />
			</c:if>
			<c:if test="${null == fd.MENU_NAME}">
			<input type="text" name="MENU_URL" id="menuUrl" value="" readonly="readonly" placeholder="顶级菜单禁止输入" class="col-xs-10 col-sm-5" />
			</c:if>
		</div>
	 </div>
							
	 <div class="form-group">
		<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 菜单分类 : </label>
		<div class="col-sm-9">
			<label style="float:left;padding-left: 8px;padding-top:7px;">
				<input name="MENU_TYPE_VAL" type="radio" class="ace" value="1"  onclick="setRadioVal('MENU_TYPE');" <c:if test="${pd.MENU_TYPE == '1'||pd.MENU_TYPE==null}">checked="checked"</c:if> />
				<span class="lbl"> 系统设置</span>
			</label>
			<label style="float:left;padding-left: 5px;padding-top:7px;">
				<input name="MENU_TYPE_VAL" type="radio" class="ace" value="2" onclick="setRadioVal('MENU_TYPE');" <c:if test="${pd.MENU_TYPE == '2' }">checked="checked"</c:if> />
				<span class="lbl"> 基础数据</span>
			</label>
			<label style="float:left;padding-left: 5px;padding-top:7px;">
				<input name="MENU_TYPE_VAL" type="radio" class="ace" value="3"  onclick="setRadioVal('MENU_TYPE');" <c:if test="${pd.MENU_TYPE == '3' }">checked="checked"</c:if> />
				<span class="lbl"> 用户管理</span>
			</label>
			
			<label style="float:left;padding-left: 5px;padding-top:7px;">
				<input name="MENU_TYPE_VAL" type="radio" class="ace" value="4"  onclick="setRadioVal('MENU_TYPE');" <c:if test="${pd.MENU_TYPE == '4' }">checked="checked"</c:if> />
				<span class="lbl"> 内容管理</span>
			</label>
			
		</div>
	 </div>
		
		
	<div class="form-group">
		<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 状态 : </label>
		<div class="col-sm-9">
			<label style="float:left;padding-left: 8px;padding-top:7px;">
				<input name="MENU_STATE_VAL"  type="radio" class="ace" value="1" onclick="setRadioVal('MENU_STATE');" <c:if test="${pd.MENU_STATE == 1 }">checked="checked"</c:if> />
				<span class="lbl"> 显示</span>
			</label>
			<label style="float:left;padding-left: 5px;padding-top:7px;">
				<input name="MENU_STATE_VAL" type="radio" class="ace" value="0" onclick="setRadioVal('MENU_STATE');" <c:if test="${pd.MENU_STATE == 0 || pd.MENU_STATE==null}">checked="checked"</c:if> />
				<span class="lbl"> 隐藏</span>
			</label>
		</div>
	</div>
		
	<div class="clearfix form-actions">
		<div class="col-md-offset-3 col-md-9">
			<a class="btn btn-mini btn-primary" onclick="save();">保存</a>
			<a class="btn btn-mini btn-danger" onclick="goback('${MENU_ID}');">取消</a>
		</div>
	</div>
  </form>
</div><!--page-content -->	
</body>
<script type="text/javascript">
	//保存
	function save(){
		if($("#menuName").val()==""){
			$("#menuName").tips({
				side:3,
	            msg:'请输入菜单名称',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#menuName").focus();
			return false;
	   }	
	   if($("#menuUrl").val()==""){
		 $("#menuUrl").val('#');
	   }
		//菜单分类为空默认为业务类型
		if($("#MENU_TYPE").val()==""){
			$("#MENU_TYPE").val('1');
		}
		//状态值为空默认为隐藏
		if($("#MENU_STATE").val()==""){
			$("#MENU_STATE").val(0);
		}
		//菜单类型为空默认为后端菜单
		if($("#ISQTMENU").val()==""){
		   $("#ISQTMENU").val('0');
		}
	   $("#menuForm").submit();
	}
	//设置radio值
	function setRadioVal(data){
	  $("#"+data).val($('input[name="'+data+'_VAL"]:checked').val());
	}
	//返回
	function goback(MENU_ID){
		//查询当前节点下菜单集合
		findListMenuByPId(MENU_ID);
	}
</script>
</html>