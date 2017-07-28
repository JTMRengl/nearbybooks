
function IntBrowserVer(){
    /*var judgeBE=function(){
        if($.browser.msie){
            var bv=parseInt($.browser.version);
            if(bv==7&&navigator.appVersion.indexOf("Trident\/4.0")>0){bv=8;}
            $("html").data("bv",bv);
			//document.getElementByName("html").data("bv",bv);
            return "IE "+"IE"+bv;
			}
        else if($.browser.safari){return "safari";}
        else if($.browser.opera){return "opera";}
        else if($.browser.mozilla){return "mozilla";}}
    $("html").addClass(judgeBE());*/
	//document.getElementByName("html").judgeBE();
}
IntBrowserVer();


/* 标签页切换 */
$(".qiehTab .qhTit abbr").click( function(){
		var _cbox = $(this).closest(".qiehTab").find(".qhCon .qhBox")
		$(this).addClass("hover").siblings().removeClass("hover");
		_cbox.eq($(this).prevAll().length).show().siblings().hide();
});
function tabs(bnt,cen){
    var Tab=$(bnt);
    var TabBnt=Tab.children("abbr");
    var TabCen=$(cen);
    TabBnt.click(function(){
      $(this).addClass("hover").siblings().removeClass("hover");
      TabCen.hide().eq($(this).index()).show();
    }); 
  }
$(function(){
    tabs(".TabNr ",".qhBox")
  })

/**展开菜单**/
$(".dropdown-menu a").click(function(){
	$(".dropdown-menu").removeClass('open');
});

//点击按钮展开隐藏的下级菜单
var is;  //菜单ID
var ts;  
function openMenu(e, o){
	var o = o ? o : window.event; //兼容性，定义事件
		stopPop(o); //阻止冒泡事件
		closeWindo(); //关闭正在显示的菜单
		
		var sd = e.name;
		is=$("#"+sd);
		is.addClass('open');
		//this.addClass('hover');
		ts=$("#"+e.id);
		ts.addClass('hover');
}
//关闭菜单窗口
function closeWindo(){
	if (is) {
		is.removeClass('open');
		ts.removeClass('hover');
	}
	//alert(is);
}
window.document.onclick = function(){closeWindo();}	 
//阻止父元素冒泡
function stopPop(e)
{
    if (e && e.stopPropagation) { //非IE浏览器 
		e.stopPropagation(); 
    } else {  //IE浏览器 
        window.event.cancelBubble = true; 
    } 
}
//TabNr 

