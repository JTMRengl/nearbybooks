
var E = function () {
	
	this.handlers = new Object();
	
	this.addEvent = function (type, handler) {
		// 判断事件处理数组是否有该类型事件
		if(this.handlers[type] == undefined) this.handlers[type] = [];
		// 将处理事件push到事件处理数组里面
		this.handlers[type].push(handler);
	}
	
	this.fireEvent = function (event) {
	
		//判断是否存在该事件类型
		if(this.handlers[event.type] instanceof Array){
			
			var _handler = this.handlers[event.type];
			
			//在同一个事件类型下的可能存在多种处理事件，找出本次需要处理的事件
			for(var i = 0; i < _handler.length; i++)
				_handler[i](event); //执行触发
		}
	}
	
	this.removeEvent = function (type, handler) {
		
		if(this.handlers[type] instanceof Array){
			
			var _handler = this.handlers[type];
			
			//在同一个事件类型下的可能存在多种处理事件，找出本次需要处理的事件
			for(var i = 0; i < _handler.length; i++)
				if(_handler[i] == handler) break;//找出本次需要处理的事件下标
			
			_handler.splice(i, 1); //删除处理事件
		}
	}
}