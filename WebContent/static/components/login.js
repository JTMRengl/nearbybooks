
var Login = function () {
	
	E.call(this);
	
	this.vo = $('.vi.login');
	Login.self = this;
	
	document.onkeydown = Login.prototype.keydown;
}

Login.prototype.show = function () {
	this.vo.modal({
		closable  : false,
		onHide    : function() {
		},
		onApprove : function() {
			Login.prototype.submit();
			return false;
		}
	}).modal('show');
}

Login.prototype.hide = function () {
	this.vo.modal('hide');
}

Login.prototype.submit = function () {
	Login.self.fireEvent({
		type         : "submit",
		account      : $('.vi.login .account').val(),
		password     : $('.vi.login .password').val(),
	});
}

Login.prototype.keydown = function (e) {
	  
	console.log("aaaaaa:" + e.keyCode);
	switch (e.keyCode) {
	  case 13:
	    
	    if ($('.password').is(':focus') || $('.account').is(':focus')) Login.prototype.submit();
	    break;
	  }
	}
