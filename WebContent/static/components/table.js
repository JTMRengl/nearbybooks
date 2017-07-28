
var Table = function (d) {
	
	tools.tpls(d, d.component, d.container);
	
	E.call(this);
	this.vo = $(d.pid + ' .vi.table');
	this.pid = d.container;
	this.data = d;
	
	this.init();
	
	setTimeout(Table.prototype.init, 1000);
}

Table.prototype.init = function () {
	
	$('.content .ui.checkbox').checkbox('attach events', '.thead .ui.checkbox');
	$('.ui.checkbox').checkbox({
	    // check all children
	    onChecked: function() {
	    	User.selectedList.push(this.value);
	    },
	    onUnchecked: function() {
	    	User.selectedList.splice(User.selectedList.indexOf(this.value), 1);
	    }
	});
}

/**
 * 更新列表
 * @param d : 数据
 * @param cover : 是否覆盖原有数据
 */
Table.prototype.setData = function (d, cover) {
	
	tools.tpls(d, d.component, d.pid);
}