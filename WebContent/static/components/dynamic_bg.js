
var Dynamic_bg = function () {
	
	this.vo = $('.vi.dynamic_bg');
	this.img = $('.vi.dynamic_bg img');
	this.mousemove = function () {
		
	}
	
	document.removeEventListener("mousemove", this.mousemove, true);
}