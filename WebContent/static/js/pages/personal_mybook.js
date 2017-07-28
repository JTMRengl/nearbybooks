
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
var addBook = new AddBook();

$(function () {
	
  tools.viewComplete();
  tools.addEvent('complete', function (e) {
    start();
  });
});

function start () {
  
  $('#addbook').click(function () {
    addBook.show();
    addBook.addEvent('submit', function (e) {
    	console.log(e);
    });
  });
  
  $('.updateBook').click(function() {
		$.ajax({
			type : 'GET',
			url : '../book/getBookById?id=' + $(this).attr('name'),
			cache : false,
			async : false,
			dataType : "json",
			success : function(data) {
				if (data.msg == "true") {
					addBook.show();
					addBook.update(data.result);
				} else {
					alert("查询图书失败！");
				}
			}
		});
  });
  
  $('#delete').click(function() {
		/*$.ajax({
			type : 'GET',
			url : '../book/deleteBook?id=' + $(this).attr('name'),
			cache : false,
			async : false,
			dataType : "json",
			success : function(data) {
				if (data.msg == "true") {
					alert("下架图书成功!");
				} else {
					alert("下架图书失败!");
				}
			}
		});*/
		
		$.ajax({
			type : 'GET',
			url : '../book/getBookList',
			cache : false,
			async : false,
			dataType : "json",
			success : function(data) {
				if (data.msg == "true") {
					alert("下架图书成功!");
				} else {
					alert("下架图书失败!");
				}
			}
		});
});
}
