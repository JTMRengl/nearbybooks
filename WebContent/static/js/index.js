/**
 * 入口
 */
$(function(){
	//默认菜单
	setMianMenu(1);
	//遮罩层
	showLoading();
});


/**
 * 窗口或框架大小
 */
window.onresize=function(){  
	iframeHeight();
};

/**
 * 菜单切换
 * @param index
 */  
function setMianMenu(index){
  /*var _this= document.getElementById("mainMenu"); 
  var items=_this.getElementsByTagName("ul");
  for(var i=0;i<items.length;i++){
    items[i].style.display='none'; 
  }
  document.getElementById("mainMenu"+index).style.display='';*/
 }

/**
 * iframe页面高度
 */
function iframeHeight(){
	var _this = document.getElementById("mainFrame");
	var height = document.documentElement.clientHeight;
	_this .style.width = '100%';
	_this .style.height = (height  - 49) + 'px';
	var shade = document.getElementById("shade");
	shade.style.height = (height  - 40) + 'px';
}