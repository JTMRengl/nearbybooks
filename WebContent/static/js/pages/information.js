
var tools = new Tools();
var head = new Head({
  logo: '../static/images/LOGOS.png',
  menu: [
      { title: '首页', url: '/nearbybooks' }
  ],
  userMenu: [
      { i: 'user', url: '' },
      { i: 'shop', url: 'shopping.jsp' },
  ],
  component : '#head-tpl',
  container : 'body'
});

$(function () {
  
  tools.viewComplete();
  tools.addEvent('complete', function (e) {
    start();
  });
});

function start () {
	
	let str = '<form id="replyForm" class="ui reply form">' +
				'<div class="field">' +
					'<textarea style="height:100px;" id="bookCommentComment"></textarea>' +
				'</div>' +
				'<div id="replySubmit" class="ui blue labeled submit icon button">' +
					'<i class="icon edit"></i> 回复' +
				'</div>' +
			'</form>';
	
	$('.replys').click(function () {
		var book_comment_id = $(this).attr('id');
		var array = book_comment_id.split(",");
		let father = $(this).parent().parent();
		$('#replyForm').remove();
		// 移除输入框
		father.find("form").remove();
		father.append(str);
		
		$('#replySubmit').click(function () {
			
			var bookCommentComment = $('#bookCommentComment').val();
			//异步保存
			   $.ajax({
					type: 'GET',
					url : '../bookCommentComment/add?book_comment_id=' + array[0] + '&content=' + bookCommentComment+ '&user_id=' + array[1],
					async: false,
					dataType: "json",
					success:function(data){
					  
					},
					error:function(error){
						alert("错误！评论失败");
					}
				});			
			
			replyStr = '<div class="comments">' +
			'<div class="comment">' +
			'<a class="avatar"> <img src="../static/images/img-3.jpg">' +
			'</a>' +
			'<div class="content">' +
			'<a class="author">周杰伦</a>' +
			'<div class="metadata">' +
			'<span class="date">刚刚</span>' +
			'</div>' +
			'<div class="text">' + bookCommentComment + '</div>' +
			'</div>' +
			'</div>' +
			'</div>';
			
			father.parent().append(replyStr);
			// 移除输入框
			father.find("form").remove();
		});
	});
	
	$('#submit').click(function () {
		
		//异步保存
		   $.ajax({
				type: 'GET',
				url : '../bookComment/add?book_id=' + $("#bookId").val() + '&content=' + $("#bookComment").val(),
				async: false,
				dataType: "json",
				success:function(data){
				  
				},
				error:function(error){
					alert("错误！评论失败");
				}
			});		
 		   
		
		let str = '<div class="comment">' +
						'<a class="avatar"> <img src="../static/images/img-1.jpg">' +
						'</a>' +
						'<div class="content">' +
							'<a class="author">李四</a>' +
							'<div class="metadata">' +
								'<span class="date">刚刚 </span>' +
							'</div>' +
							'<div class="text">' + $("#bookComment").val() + '</div>' +
							'<div class="actions">' +
								'<a class="reply">回复</a>' +
							'</div>' +
						'</div>' +
					'</div>';
		
		$(this).parent().before(str);
	});
}