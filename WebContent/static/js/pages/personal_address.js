
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

$(function () {
  
  tools.viewComplete();
  tools.addEvent('complete', function (e) {
    start();
  });
});

function start () {
  
  $('#addBtn').click(function () {
	  
	 //判断当前地址数与最大允许地址数
	 var sum = $("#addAddressSum").val();;
	 var max = 5;
	 if(sum >= 5){
		 tools.msg('抱歉,地址信息最多可创建5条'); 
		 return;
	 }
	  
    $('.vi.addAddress #id').val(0);
    $('.vi.addAddress').modal({
        closable  : false,
        onApprove : function() {
          var longitude = $('#jing').val();
            var latitude = $('#wei').val();
            $("#addAddress").submit();
          return true;  
        }
      }).modal('show');
    M_init();
  });
  
  $('.vi.address-list #update').click(function () {
    var id = $(this.parentNode.parentNode).attr('name');
    $.ajax({
		type : 'GET',
		url : '../address/getUserAddressById?id=' + id,
		cache : false,
		async : false,
		dataType : "json",
		success : function(data) {
			if (data.msg == "SUCCESS") {
				var result = data.result;
				console.log($('.vi.addAddress #suggestId'));
				console.log(result.location);
				$('.vi.addAddress').modal({
					closable  : false,
					onApprove : function() {
						$("#addAddress").submit();
						return true;  
					}
				}).modal('show');			    
				
				setTimeout(function () {
					$('.vi.addAddress #id').val(result.id);
				    $('.vi.addAddress #suggestId').val(result.location);
				    $('.vi.addAddress #contacts').val(result.contacts);
				    $('.vi.addAddress #mobile_phone').val(result.mobile_phone);
				    $('.vi.addAddress #jing').val(result.coordinate_x);
				    $('.vi.addAddress #wei').val(result.coordinate_y);
				},500);
			    
			    var J = result.coordinate_x; // 查询到的经度
			    var W = result.coordinate_y; // 查询到的纬度
			    M_init(J, W);
			} else {
				alert("查询用户地址失败！");
			}
		}
	});    
  });
  
  $('.vi.address-list #delete').click(function () {
	  var id = $(this.parentNode).attr('name');
	  var self = this;
	  $('#configModal').config({
			no  :function() {
				return true;  
			},
			yes : function() {
				//异步删除
				 $.ajax({
						type : 'GET',
						url : '../address/deleteUserAddressById?id=' + id,
						cache : false,
						async : false,
						dataType : "json",
						success : function(data) {
							if (data.msg == "SUCCESS") {
								alert("用户地址删除成功!");
								self.parentNode.remove();
								//重新查询用户地址列表
							} else {
								alert("用户地址删除失败！");
							}
						}
					});  				
				return true;  
			}
		});
  });
  
}

