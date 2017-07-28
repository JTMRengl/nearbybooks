
var Head = function (d) {
  
  tools.tplsAppend(d, d.component, d.container);
  
  E.call(this);
  Head.self = this;
  
  setTimeout(Head.prototype.init, 1000)
}

Head.prototype.init = function () {
	
  Head.self.vo = $('.vi.head');
  Head.self.children = new Object();
  
  document.onkeydown = Head.prototype.keydown;
  
  $('.logout').click(function () {
    Head.self.fireEvent({
      type : "logout"
    }); 
  });
//  $('a:.login').click(function () {
//    Head.self.fireEvent({
//      type : "login"
//    });
//  });
//  $('.register').click(function () {
//    Head.self.fireEvent({
//      type : "register"
//    }); 
//  });
}

Head.prototype.login = function (name) {
  
  if (name == '') {
	  this.loginOut();
	  return;
  }
	
  $('.vi.head .login').hide();
  $('.vi.head .loging > .uname').html(name);
  $('.vi.head .loging').show();
}

Head.prototype.loginOut = function () {
	$('.vi.head .login').show();
	$('.vi.head .loging').hide();
}

Head.prototype.strSearch = function () {
  var str = $('.searchI').val();
  if (str == '') return;
  Head.self.fireEvent({
    type          : "search",
    value         : str
  }); 
}

Head.prototype.keydown = function (e) {
  
  switch (e.keyCode) {
  case 13:
    
    if ($('.searchI').is(':focus')) Head.prototype.strSearch();
    break;
  }
}


