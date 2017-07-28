<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<script type="text/javascript"
	src="http://api.map.baidu.com/api?v=2.0&ak=IfoLxxFKCVMKcIvDqx66vR6CEKAkzrAQ"></script>
<!--加载鼠标绘制工具-->
<script type="text/javascript"
	src="http://api.map.baidu.com/library/DrawingManager/1.4/src/DrawingManager_min.js"></script>
<link rel="stylesheet"
	href="http://api.map.baidu.com/library/DrawingManager/1.4/src/DrawingManager_min.css" />
<!--加载检索信息窗口-->
<script type="text/javascript"
	src="http://api.map.baidu.com/library/SearchInfoWindow/1.4/src/SearchInfoWindow_min.js"></script>
<link rel="stylesheet"
	href="http://api.map.baidu.com/library/SearchInfoWindow/1.4/src/SearchInfoWindow_min.css" />
<script class="resources library" src="../static/js/area.js"
	type="text/javascript"></script>
<script src="../static/js/MapCtrl_info.js"></script>
<link rel="stylesheet" href="../static/css/MapCtrl.css" />
<div class="vi addAddress ui modal">
	<div class="header">新增地址</div>
	<div class="content">
		<form action="../address/addAddress" id="addAddress" method="post"
			class="form-horizontal" style="width: 100%;">
			<input id="id" name="id" type="hidden" value="0">
			<div id='wrap' class="vi adsress">
				<div id="all_dizhi" class="ui form">
					<div id="info" class="inline fields">
						<label>地区：</label> <select id="s_province" name="s_province"></select><span
							class="s_name">&nbsp;&nbsp;</span> <select id="s_city" name="s_city"></select><span
							class="s_name">&nbsp;&nbsp;</span> <select id="s_county"
							name="s_county"></select><span class="s_name">&nbsp;&nbsp;</span>
						<div id="show"></div>
					</div>
					<div id="r-result" class="required field">
						<label>详细地址：</label> <input id="suggestId" name="location" size="20" type="text">
					</div>
					<div class="two fields">
						<div class="required field"><label>收货人姓名：</label> <input id="contacts" name="contacts" type="text"></div>
						<div class="required field"><label>联系电话：</label> <input id="mobile_phone" name="mobile_phone" type="text"></div>
					</div>
				</div>
				<label id="sug_label" for="suggestId"></label> <span id="span_address"></span>

				<div id="searchResultPanel"></div>

				<div id="jingWei" class="hide">
					<input type="text" id="jing" name="coordinate_x" value="" /> <input
						type="text" id="wei" name="coordinate_y" value="" />
				</div>

				<div id="xy"></div>
				<br>
				<div id="allmap">
					<a id="cleanAll" title="清除所有遮盖物"><img
						src="../static/images/dt1.png"></a>
					<div id="map"></div>
				</div>

			</div>
		</form>
	</div>

	<div class="actions">
		<div class="ui cancel black deny button">关闭</div>
		<div class="ui ok positive right labeled icon button">
			保存 <i class="checkmark icon"></i>
		</div>
	</div>

</div>

