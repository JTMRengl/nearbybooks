
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
	
}

