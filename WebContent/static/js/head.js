/**
 * 入口
 */
$(function(){
	//隐藏遮罩层
	$(top.hideLoading());
});

/**
 * 菜单切换
 * @param _this
 * @param MENU_NAME
 * @param MENU_URL
 */
function setMenu(tabteId,_this,MENU_NAME,MENU_URL){
	$("#mainMenu li").removeClass("active");
	$(_this).parent().attr("class","active");
	tabteId=$.trim(MENU_NAME)=="系统用户"?"tab_index":tabteId;
	top.mainFrame.tabAddHandler(tabteId,MENU_NAME,MENU_URL);
	if(MENU_URL){
		//遮罩层
		showLoading();
	}
}

/**
 * 初始头部页面信息
 */
function initHeader(){
	$.ajax({
		type: "POST",
		url: project+'head/getList.do?datetime='+new Date().getTime(),
    	data: "",
		dataType:'json',
		success: function(data){
			$("#user_info").html('<small>Welcome</small> '+data.user.name+'');//登陆者资料
			if(data.user!='admin'){
			   $("#system").hide();	//隐藏系统设置
			}
			if(data.user.path){
				$("#userImage").attr("src",project+"uploadFiles/uploadImgs/"+data.user.path);
			}else{
			   $("#userImage").attr("src",project+"uploadFiles/uploadImgs/photo.png");
			}
		}
	});
}

/**
 * 清除加载进度
 */
function hideLoading(){
  $("#spm").hide();
}

/**
 * 显示加载进度
 */
function showLoading(){
  $("#spm").show();
}