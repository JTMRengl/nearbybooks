
var tools = new Tools();
var head = new Head({
	logo            : 'static/images/LOGOS.png',
	menu            : [ { title: '首页', url: '/nearbybooks' } ],
	component       : '#head-tpl',
	container       : 'body'
});
var carousel = new Carousel([
  {url : 'static/images/b_01.jpg'},
  {url : 'static/images/b_02.jpg'},
  {url : 'static/images/b_03.jpg'},
  {url : 'static/images/b_04.jpg'},
  {url : 'static/images/b_05.jpg'},
  {url : 'static/images/b_06.jpg'}
]);

$(function () {
	
	tools.viewComplete();
	tools.addEvent('complete', function (e) {
		start();
	});
});

function start () {
	
	$.ajax({
		type: "POST",
		url: project+'login_user',
		data: "",
		dataType:'json',
		success: function(data){
			if(data.msg == "false"){
				head.login('');
			}else{
				head.login(data.user.name);
			}
		}
	});
	
	// 搜索
	head.addEvent('search', function (e) {
		console.log(e.value);
	});
	
	// 点击退出
	head.addEvent('logout', function (e) {
		window.location.href="logout";
	});
	
//	newBookList();
}

function newBookList () {
	
	var newBookList = new Array();
	
	for (var i = 0; i < 8; i++) {
		var book = new Object();
		book.name = '三毛流浪记_';
		book.author = '老舍';
		book.introduction = '这是一本.....................';
		book.img = 'static/images/01.jpg';
		newBookList.push(book);
	}
	
	var data = new Object();
	
	data.pid = '#newBook';
	data.data = newBookList;
	
	var flip1 = new Flip(data);
	
	var data1 = new Object();
	
	data1.pid = '#hotBook';
	data1.data = newBookList;
	
	var flip2 = new Flip(data1);
	
	var data2 = new Object();
	
	data2.pid = '#goodBook';
	data2.data = newBookList;
	
	var flip3 = new Flip(data2);
	
	window.onresize = function(){
		flip1.load();
		flip2.load();
		flip3.load();
	};
}

