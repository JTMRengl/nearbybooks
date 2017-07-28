
var Register = function () {
	
	E.call(this);
	
	this.vo = $('.vi.register');
}

Register.prototype.show = function () {
	this.vo.modal({
		closable  : false,
		onHide    : function() {
			console.log("back");
		},
		onApprove : function() {
			console.log('submit');
			this.fireEvent({
				type         : "submit",
				account      : $('.vi.register .phone').val(),
			}); 
			return false;
		}
	}).modal('show');
}