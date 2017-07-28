
var Flip = function (d) {
	
	this.vo = $(d.pid + ' .vi.flip');
	this.pid = d.pid;
	this.data = d.data;
	this.nowNum = 0;
	this.type = -1; // 0:大屏( >1200 ) 1:中屏( >992 <1200 ) 2:小屏( >768 <992) 3:超小屏( <768 )
	
	Flip.self = this;
	
	this.load();
	
	$(d.pid + ' .vi.flip #left').off("click");
	$(d.pid + ' .vi.flip #left').click(function () {
		console.log(d.pid);
		$(d.pid + ' .vi.flip #list').transition('fly left');
//		Flip.prototype.load();
		setTimeout(function () {
			$(d.pid + ' .vi.flip #list').transition('fly right');
		}, 50);
	});
	
	$(d.pid + ' .vi.flip #right').off("click");
	$(d.pid + ' .vi.flip #right').click(function () {
		console.log(d.pid);
		$(d.pid + ' .vi.flip #list').transition('fly right');
//		Flip.prototype.load();
		setTimeout(function () {
			$(d.pid + ' .vi.flip #list').transition('fly left');
		}, 50);
	});
}

Flip.prototype.load = function () {
	
	var column = 0;
	var width = tools.getChromeWidth();
	if (width < 992 && width > 768 && this.type != 2) {
		this.type = 2;
		column = 2;
	} else if (width > 992 && this.type != 1) {
		this.type = 1;
		column = 4;
	} else if (width < 768 && this.type != 3) {
		this.type = 3;
		column = 1;
	} else return;
	
	var list = new Array();
	for (var i = 0; i < column; i ++) {
		list.push(Flip.self.data[i]);
	}
	var data = new Object();
	data.column = column;
	data.data = list;
	tools.tpls(data, '#bookList-tpl', this.pid + ' .vi.flip #list');
	Flip.self.nowNum += 4;
}