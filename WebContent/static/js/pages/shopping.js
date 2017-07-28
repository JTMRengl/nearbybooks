
var tools = new Tools();
var head = new Head({
	logo: '../static/images/LOGOS.png',
	menu: [
	    { title: '首页', url: '/nearbybooks' }
	],
	userMenu: [
	    { i: 'user', url: '' },
	    { i: 'shop', url: 'static/pages/shopping.jsp' },
	],
	component : '#head-tpl',
	container : 'body'
});
var table = new Table({
	container : '#shopTable',
	component : '#table-tpl',
	thead : [
	  {title : '预览图', width : '0.1'},
	  {title : '商品名称', width : '0.3'},
	  {title : '价格', width : '0.1'},
	  {title : '选购方式', width : '0.2'},
	  {title : '借阅时长', width : '0.2'},
	  {title : '个数', width : '0.1'},
	],
	data : [
	    { img : '../static/images/01.jpg', title : 'what are you doing?', introduction : '这是商品的简介/备注', price : '35', type : '购买', long : '7天', num : 1},
	    { img : '../static/images/01.jpg', title : 'I don’t know?', introduction : '这是商品的简介/备注', price : '15', type : '借阅', long : '7天', num : 1},
	]
});

$(function () {
	
	tools.viewComplete();
	tools.addEvent('complete', function (e) {
		start();
	});
});

function start () {
	
	// 搜索
	head.addEvent('search', function (e) {
		console.log(e.value);
	});
	
	// 点击退出
	head.addEvent('logout', function (e) {
	});
}