<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>" />
<meta charset="UTF-8" />
<title>无标题文档</title>
<link type="text/css" href="static/css/jquery.fullPage.css" rel="stylesheet" />
<link rel="stylesheet" href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" type="text/css" />
<link type="text/css" href="static/css/style.css" rel="stylesheet" />
<script type="text/javascript" src="plugins/layui/layui.js"></script>
<script type="text/javascript" src="static/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="static/js/jquery.fullPage.min.js"></script>
<script type="text/javascript" src="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>


<div id="fullpage">
    <div class="section">
    	<div class="content-1">
        	<span>走上程序道路的人</span>
            <span>眼里总有别人看不到的世界</span>
        </div>
    </div>
    <div class="section">
    	<div class="content-2">
        	<div class="con-con">
            	<ul>
                	<li data-container="body" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="顶级品牌LOGO设计，创意与灵感的结合！简洁、简易、简明">
                    	<span><img src="static/images/logo.png" /></span>
                        <span>品牌标识</span>
                    </li>
                    <li data-container="body" data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="顶级品牌LOGO设计，创意与灵感的结合！简洁、简易、简明">
                    	<span><img src="static/images/logo.png" /></span>
                        <span>界面设计</span>
                    </li>
                    <li data-container="body" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="顶级品牌LOGO设计，创意与灵感的结合！简洁、简易、简明">
                    	<span><img src="static/images/logo.png" /></span>
                        <span>平面设计</span>
                    </li>
                    <li data-container="body" data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="顶级品牌LOGO设计，创意与灵感的结合！简洁、简易、简明">
                    	<span><img src="static/images/logo.png" /></span>
                        <span>网页设计</span>
                    </li>
                    <li data-container="body" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="顶级品牌LOGO设计，创意与灵感的结合！简洁、简易、简明">
                    	<span><img src="static/images/logo.png" /></span>
                        <span>UI视觉</span>
                    </li>
                    <li data-container="body" data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="顶级品牌LOGO设计，创意与灵感的结合！简洁、简易、简明">
                    	<span><img src="static/images/logo.png" /></span>
                        <span>3D手绘</span>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="section">
    	<div class="content-3">
        	<ul>
            	<li>
                	<a></a>
                    <a></a>
                    <a href="#">
                    	<img src="static/images/img-1.jpg" />
                    	<p></p>
                    </a>
                </li>
                <li>
                	<a href="#">
                    	<img src="static/images/img-2.jpg" />
                    	<p></p>
                    </a>
                    <a href="#">
                    	<img src="static/images/img-3.jpg" />
                    	<p></p>
                    </a>
                    <a href="#">
                    	<img src="static/images/img-4.jpg" />
                    	<p></p>
                    </a>
                </li>
                <li>
                	<a href="#">
                    	<img src="static/images/img-2.jpg" />
                    	<p></p>
                    </a>
                    <a href="#">
                    	<img src="static/images/img-3.jpg" />
                    	<p></p>
                    </a>
                    <a href="#">
                    	<img src="static/images/img-4.jpg" />
                    	<p></p>
                    </a>
                </li>
                <li>
                	<a href="#">
                    	<img src="static/images/img-2.jpg" />
                    	<p></p>
                    </a>
                    <a href="#">
                    	<img src="static/images/img-3.jpg" />
                    	<p></p>
                    </a>
                    <a href="#">
                    	<img src="static/images/img-4.jpg" />
                    	<p></p>
                    </a>
                </li>
                <li>
                	<a href="#">
                    	<img src="static/images/img-1.jpg" />
                    	<p></p>
                    </a>
                    <a></a>
                    <a></a>
                </li>
            </ul>
        </div>
    </div>
    <div class="section">
    	<div class="contact">
        	<h3 class="me">与我联系</h3>
            <p class="me">123456789</p>
            <p class="me">Contact me</p>
            <a class="ewm"><img src="static/images/ewm.png" /></a>
        </div>
        <div class="line">
        	<div class="share">
            	<a onClick="xinlang('将我的个人主页分享至新浪','index.html','images/ewm.png');" class="xinlang"  data-container="body" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="分享至新浪微博">
                	<img src="static/images/xinlang.png" />
                </a>
                <a href="javascript:;" class="qq" onClick="qqShare();"  data-container="body" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="分享至QQ好友">
                	<img src="static/images/qq.png" />
                </a>
                <a class="jiathis_button_weixin"  data-container="body" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="分享至微信">
                	<img src="static/images/weixin.png" />
                </a>
                <script type="text/javascript" src="http://v3.jiathis.com/code/jia.js?uid=1" charset="utf-8"></script>
            </div>
        </div>
    </div>
</div><br>
<script>
$(function(){
    $('#fullpage').fullpage({
        'verticalCentered': false,
        'css3': true,
        'sectionsColor': ['#825b56', '#343b4e', '#4b6558', '#822c2b'],
        anchors: ['page1', 'page2', 'page3', 'page4'],
        'navigation': true,
        'navigationPosition': 'right',
        'navigationTooltips': ['首页', '关于', '作品', '联系'],
    });
	
	$("[data-toggle='popover']").popover();

})
//分享到新浪
function xinlang(title,url,picurl){
	var sharesinastring='http://v.t.sina.com.cn/share/share.php?title='+title+'&url='+url+'&content=utf-8&sourceUrl='+url+'&pic='+picurl;  
	window.open(sharesinastring,'newwindow','height=400,width=400,top=100,left=100');
}

//分享給QQ好友
function qqShare(){
    var p = {
    url:'http://wwww.baidu.com', /*获取URL，可加上来自分享到QQ标识，方便统计*/
    desc:'发送信息给好友', 
    title:'发送信息给好友', /*分享标题(可选)*/
    summary:'', /*分享摘要(可选)*/
    pics:'', /*分享图片(可选)*/
    flash: '', /*视频地址(可选)*/
    site:'http://wwww.baidu.com', /*分享来源(可选) 如：QQ分享*/
    style:'203',
    width:16,
    height:16
    };
    var s = [];
    for(var i in p){
        s.push(i + '=' + encodeURIComponent(p[i]||''));
    }
    var qhref = "http://connect.qq.com/widget/shareqq/index.html?"+s.join('&');
    $(".qq").attr({href:qhref,target:"_blank"});
};


//分享給微信好友
$(".jiathis_button_weixin").mouseenter(function(){
	$(this).attr("title","");
});

//作品循环
$(".content-3 ul li").each(function (i) {
	$(this).attr("style", "-webkit-transition-delay:" + i * 0.2 + "s;"
			+ "-moz-transition-delay:" + i * 0.2 + "s;"
			+ "-o-transition-delay:" + i * 0.2 + "s;"
			+ "transition-delay:" + i * 0.2 + "s;");
});

</script>
</body>
</html>