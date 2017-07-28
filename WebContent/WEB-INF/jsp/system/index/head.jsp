<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<div  class="navbar navbar-default">
  <div class="navbar-container" id="navbar-container">
	<div class="navbar-header pull-left">
	    <!-- <img class="background" src="static/images/adminlogo.png"  height=43> -->
	    <img class="background" src="static/login/logo.png"  height=43>
	</div>
	<div class="navbar-buttons navbar-header pull-right">
	  <ul class="nav ace-nav">
	  	  <!-- <li class="grey">
			<a data-toggle="dropdown" class="dropdown-toggle" href="#">
				<i class="ace-icon fa fa-tasks"></i>
				<span class="badge badge-grey"></span>
			</a>
			<ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
				<li class="dropdown-header">
					<i class="ace-icon fa fa-check"></i>
					预留功能,待开发
				</li>
			</ul>
		</li>
		
		<li title="即时聊天" class="purple" >
			<a data-toggle="dropdown" class="dropdown-toggle" href="#">
				<i class="ace-icon fa fa-bell icon-animated-bell"></i>
				<span class="badge badge-important"></span>
			</a>
			<ul class="dropdown-menu-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
				<li class="dropdown-header">
					<i class="ace-icon fa fa-bell-o"></i>
					  即时通讯
				</li>
			</ul>
		</li>
		
		<li title="站内信" class="green">
			<a data-toggle="dropdown" class="dropdown-toggle" href="#">
				<i class="ace-icon fa fa-envelope icon-animated-vertical"></i>
				<span class="badge badge-success" id="fhsmsCount"></span>
			</a>
		</li>  -->
		
		<li class="light-blue">
			<a data-toggle="dropdown"  class="dropdown-toggle" href="#">
			    <img class="nav-user-photo" id="userImage" src="" /> 
				<span class="user-info" id="user_info"></span>
				<i class="ace-icon fa fa-caret-down"></i>
			</a>
                       
			<ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
				<li>
					<a  style="cursor:pointer;" target="mainFrame" onclick="setMenu('tab_index',this,'系统用户','user/toEdit.do?USER_ID=${user.USER_ID}')">
					<i class="ace-icon fa fa-cog"></i>修改资料</a>
				</li>
				<li id="system">
					<a  style="cursor:pointer;">
					<i class="ace-icon fa fa-user"></i>系统设置</a>
				</li>
				<li class="divider"></li>
				<li>
					<a href="logout"><i class="ace-icon fa fa-power-off"></i>退出登录 </a>
				</li>
			</ul>
		</li>
	  </ul>
	</div>
  </div>
</div>