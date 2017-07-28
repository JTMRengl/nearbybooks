
var Tools = function () {
	E.call(this);
	Tools.self = this;
}

Tools.prototype.msg = function (content) {
	layui.use(['layer'], function(){
		layer.msg(content);
	});
}

Tools.prototype.tpls = function (result, component, container) {
	layui.use('laytpl', function(laytpl){
		var tpl = layui.laytpl($(component).html());
		tpl.render(result, function(result){
        	$(container).html(result);
		});
	});
}

Tools.prototype.tplsAppend = function (result, component, container) {
	layui.use('laytpl', function(laytpl){
		var tpl = layui.laytpl($(component).html());
		tpl.render(result, function(result){
			$(container).append(result);
		});
	});
}

/** 获取当前浏览器宽 */
Tools.prototype.getChromeWidth = function () {
	return document.documentElement.clientWidth;
}

/** 获取当前浏览器高 */
Tools.prototype.getChromeHeight = function () {
	return document.documentElement.clientHeight;
}

Tools.prototype.viewComplete = function () {
	if(document.readyState != 'complete') setTimeout('Tools.prototype.viewComplete()', 500);
	else {
		Tools.self.fireEvent({
			type : "complete",
		}); 
	};
}

/** 从 file 域获取 本地图片 url */
Tools.prototype.getFileUrl = function (file) {
	var url;
	if (navigator.userAgent.indexOf("MSIE") >= 1) { // IE
		url = file.value;
	} else if(navigator.userAgent.indexOf("Firefox") > 0) { // Firefox
		url = window.URL.createObjectURL(file);
	} else if(navigator.userAgent.indexOf("Chrome") > 0) { // Chrome
		url = window.URL.createObjectURL(file);
	}
	return url;
}

/** 生成一个随机字符串 */
Tools.prototype.randomString = function (len) {
	
	len = len || 32;
	var $chars = 'ABCDEFGHJKMNPQRSTWXYZabcdefhijkmnprstwxyz2345678'; // 默认去掉了容易混淆的字符oOLl,9gq,Vv,Uu,I1
	var maxPos = $chars.length;
	var pwd = '';
	for (i = 0; i < len; i++) {
		pwd += $chars.charAt(Math.floor(Math.random() * maxPos));
	}
	return pwd;
}

Tools.prototype.ISBN = function (str) {
	var pattren = /\d{1,5}([-]?)\d{2,5}\1\d{1,6}\1[\d|X]/g;
	return pattren.test(str);
}

