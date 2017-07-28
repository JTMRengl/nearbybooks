<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<meta charset="utf-8">
<script id="head-tpl" type="text/html">
<div class="vi head">
  <div class="item logo center_ver pointer"><img src="{{d.logo}}"></div>
  <div class="item menu">
    {{#  layui.each(d.menu, function(index, item){ }}
    <a class="item pointer black" href="{{item.url}}"><strong>{{item.title}}</strong></a>
    {{#  }); }}
  </div>
  <div class="item search center_ver">
    <div class="ui icon input">
      <input class="searchI" placeholder="搜索..." type="text">
      <i class="circular search link icon"></i>
    </div>
  </div>
  <!--  href="login_tolog" -->
  <div class="item user center_ver">
  	<div class="login center_ver">
  	  <a class="login black" href="login_tolog">登录</a>
  	  <a class="register black" href="register/jsp">注册</a>
  	</div>
  	<div class="loging center_ver">
  	  <a href="personal/user" class="item uname black"></a>
  	  <a class="item logout black">退出</a>
  	</div>
  </div>
</div>
</script>