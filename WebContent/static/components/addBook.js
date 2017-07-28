
var AddBook = function () {
  
  E.call(this);
  
  this.vo = $('.vi.addbook');
  this.imgList = new Object();
  this.damage = 0;
  AddBook.self = this;
  
  $('#ab-upload').click(function () {
    
    $("#ab-img").off("change");
    $("#ab-img").click();
    $("#ab-img").change(function() {
      
      // 添加标签
      var index = tools.randomString(32);
      var img = document.getElementById("ab-img").files[0];
      var url = tools.getFileUrl(img);
      AddBook.self.addImg(img.name, url, index);
      AddBook.self.imgList[index] = img;
      
      // 监听删除标签 （新添加标签后需重新监听点击事件）
      $(".delete.icon").off("change");
      $('.delete.icon').click(function () {
        delete AddBook.self.imgList[$(this).attr("name")];
        this.parentNode.remove();
      });
    }); 
  });
  
  $('.ui.radio.checkbox').checkbox({
    onChecked: function() {
      AddBook.self.damage = this.value;
    },
    onUnchecked: function() {
    }
  });
  
  $('#ab-lease-false').click(function () {
    if($('#ab-lease').is('.disabled')) $('#ab-lease').removeClass("disabled");
    else $('#ab-lease').addClass("disabled");
  });
  
  $('#ab-sell-false').click(function () {
    if($('#ab-sell').is('.disabled')) $('#ab-sell').removeClass("disabled");
      else $('#ab-sell').addClass("disabled");
  });
}

AddBook.prototype.show = function () {
	$('#title').text("添加");
	$('#bookForm').attr("action","../book/toAddBook");
	$('#ab-ISBN').val('');
	$('#ab-lease').val('');
	$('#ab-sell').val('');
	
  this.vo.modal({
    closable  : false,
    onHide    : function() {
    },
    onApprove : function() {
      
      var ISBN = $('.vi.addbook #ab-ISBN').val();
      console.log(ISBN);
      console.log(tools.ISBN(ISBN));
      if (!tools.ISBN(ISBN)) {
    	  tools.msg('ISBN码格式错误！');
    	  return false;
      }
      
      var lease = 0;
      if (!$('#ab-lease').is('.disabled')) lease = $('.vi.addbook #ab-lease').val();
      var sell = 0;
      if (!$('#ab-sell').is('.disabled')) sell = $('.vi.addbook #ab-sell').val();
      AddBook.self.fireEvent({
        type         : "submit",
        ISBN         : $('.vi.addbook #ab-ISBN').val(),
        lease        : lease,
        sell         : sell,
        damage       : AddBook.self.damage
//        introduction : $('.vi.addbook #ab-introduction').val(),
//        files        : AddBook.self.imgList
      }); 
      return false;
    }
  }).modal('show');
}

AddBook.prototype.hide = function () {
  this.vo.modal('hide');
}

AddBook.prototype.addImg = function (name, url, index) {
  
  var str = '<div class="ui image label" style="margin-top:5px;"><img src=\"' + url + '\"> ' + name + ' <i class="delete icon" name=\"' + index + '\"></i></div>';
  $('#ab-imgList').append(str);
}

AddBook.prototype.update = function(date) {
	$('#title').text("修改");
	$('#bookForm').attr("action","../book/updateBook");
	$('#ab-ID').val(date.id);
	$('#ab-ISBN').val(date.isbn);
	$('#ab-lease').val(date.price_hire);
	$('#ab-sell').val(date.price_sell);
}

