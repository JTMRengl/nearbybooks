<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="sidebar responsive">
 <div class="sidebar-shortcuts">
<!--    <div class="sidebar-shortcuts-large">
  	  <button class="btn btn-info" title="系统设置" onclick="setMianMenu('1');">设置</button>
  	  <button class="btn btn-success" title="基础数据" onclick="setMianMenu('2');">数据</button>
	  <button class="btn btn-warning" title="用户管理" onclick="setMianMenu('3');">用户</button>
	  <button class="btn btn-danger" title="内容管理" onclick="setMianMenu('4');">内容</button>
	  <button class="btn btn-info" title="内容管理" onclick="setMianMenu('1');">SMS</button>
	  <button class="btn btn-success" title="内容管理" onclick="setMianMenu('1');">通告</button>
	  <button class="btn btn-warning" title="内容管理" onclick="setMianMenu('1');">开发文档</button>
	  <button class="btn btn-danger" title="内容管理" onclick="setMianMenu('1');">SMS</button>
   </div> -->
  </div>
   <div id="mainMenu">
	  <ul class="nav nav-list" id="mainMenu1">
<!-- 		<li class="">
			<a href="main/index">
				<i class="menu-icon fa fa-tachometer"></i>
				<span class="menu-text">系统设置</span>
			</a>
			<b class="arrow"></b>
		</li> -->
<!-- 		<li class=""> -->
<!-- 			<a href="course/toAdd" target="mainFrame">  -->
<!-- 				<i class="menu-icon fa fa-tachometer"></i> -->
<!-- 				<span class="menu-text">课程添加</span> -->
<!-- 			</a> -->
<!-- 			<b class="arrow"></b> -->
<!-- 		</li> -->
<!-- 		<li class=""> -->
<!-- 			<a href="course/list"> -->
<!-- 				<i class="menu-icon fa fa-tachometer"></i> -->
<!-- 				<span class="menu-text">课程列表</span> -->
<!-- 			</a> -->
<!-- 			<b class="arrow"></b> -->
<!-- 		</li> -->
		
		<c:forEach items="${menuList}" var="var" >
		  <c:if test="${var.MENU_TYPE == '1'}">
		    <c:if test="${var.hasMenu && '1' == var.MENU_STATE}">
		    	<li class="">
				  <a style="cursor:pointer;" class="dropdown-toggle">
				  	<i class="${var.MENU_ICON == null ? 'menu-icon fa fa-leaf black' : var.MENU_ICON}"></i>
					<span class="menu-text">
						${var.MENU_NAME }
					</span>
					<c:if test="${'[]' != var.subMenu}">
					  <b class="arrow fa fa-angle-down"></b>
				    </c:if>
				  </a>
				  <c:if test="${'[]' != var.subMenu}">
				     <ul class="submenu" style="display: block;">
					  <c:forEach items="${var.subMenu}" var="var1">
					    <li class="">
					     <c:if test="${var1.hasMenu && '1' == var1.MENU_STATE}">
					       <a style="cursor:pointer;" <c:if test="${not empty var1.MENU_URL && '#' != var1.MENU_URL}"> target="mainFrame" onclick="setMenu('tab_index${var1.MENU_ID}',this,'${var1.MENU_NAME }','${var1.MENU_URL }')"</c:if><c:if test="${'[]' != var1.subMenu}"> class="dropdown-toggle"</c:if>>
			         		<i class="${var1.MENU_ICON == null ? 'menu-icon fa fa-leaf black' : var1.MENU_ICON}"></i>
							${var1.MENU_NAME }
							<c:if test="${'[]' != var1.subMenu}"><b class="arrow fa fa-angle-down"></b></c:if>
					       </a>
					       <b class="arrow"></b>
						   <c:if test="${'[]' != var1.subMenu}">
						     <ul class="submenu">
							   <c:forEach items="${var1.subMenu}" var="var2">
								<c:if test="${var1.hasMenu && '1' == var1.MENU_STATE}">
								  	<li class="">
									<a style="cursor:pointer;" <c:if test="${not empty var2.MENU_URL && '#' != var2.MENU_URL}">target="mainFrame" onclick="setMenu('tab_index${var2.MENU_ID}',this,'${var2.MENU_NAME }','${var2.MENU_URL }')"</c:if><c:if test="${'[]' != var2.subMenu}"> class="dropdown-toggle"</c:if>>
									<i class="${var2.MENU_ICON == null ? 'menu-icon fa fa-leaf black' : var2.MENU_ICON}"></i>
									${var2.MENU_NAME }
									<c:if test="${'[]' != var2.subMenu}"><b class="arrow fa fa-angle-down"></b></c:if>
									</a>
									<b class="arrow"></b>
									<c:if test="${'[]' != var2.subMenu}">
									  <ul class="submenu">
										<c:forEach items="${var2.subMenu}" var="var3">
										 <c:if test="${var3.hasMenu && '1' == var3.MENU_STATE}">
										   <li class="">
											<c:if test="${'[]' != var3.subMenu}">
											<a style="cursor:pointer;" target="mainFrame" onclick="setMenu('tab_index${var3.MENU_ID }',this,'${var3.MENU_NAME }','menu/otherlistMenu.do?MENU_ID=${var3.MENU_ID }')"></a>
											</c:if>
											<i class="${var3.MENU_ICON == null ? 'menu-icon fa fa-leaf black' : var3.MENU_ICON}"></i>
											${var3.MENU_NAME }
											<b class="arrow"></b>
										  </li>
										 </c:if>
										</c:forEach>
									   </ul>
									</c:if>
								</c:if>
							   </c:forEach>
							  </ul>  
						   </c:if>
					     </c:if>
					    </li> 
					  </c:forEach>
					 </ul>
				  </c:if>
				</li>
		    </c:if>
		  </c:if>
		</c:forEach>
	  </ul>
	  
	  <ul class="nav nav-list" style="display: none;" id="mainMenu2">
		<li class="">
			<a href="main/index">
				<i class="menu-icon fa fa-tachometer"></i>
				<span class="menu-text">基础数据</span>
			</a>
			<b class="arrow"></b>
		</li>
	    <c:forEach items="${menuList}" var="var" >
		  <c:if test="${var.MENU_TYPE == '2'}">
		    <c:if test="${var.hasMenu && '1' == var.MENU_STATE}">
		    	<li class="">
				  <a style="cursor:pointer;" class="dropdown-toggle">
				  	<i class="${var.MENU_ICON == null ? 'menu-icon fa fa-leaf black' : var.MENU_ICON}"></i>
					<span class="menu-text">
						${var.MENU_NAME }
					</span>
					<c:if test="${'[]' != var.subMenu}">
					  <b class="arrow fa fa-angle-down"></b>
				    </c:if>
				  </a>
				  <c:if test="${'[]' != var.subMenu}">
				     <ul class="submenu">
					  <c:forEach items="${var.subMenu}" var="var1">
					    <li class="">
					     <c:if test="${var1.hasMenu && '1' == var1.MENU_STATE}">
					       <a style="cursor:pointer;" <c:if test="${not empty var1.MENU_URL && '#' != var1.MENU_URL}">target="mainFrame" onclick="setMenu('tab_index${var1.MENU_ID}',this,'${var1.MENU_NAME }','${var1.MENU_URL }')"</c:if><c:if test="${'[]' != var1.subMenu}"> class="dropdown-toggle"</c:if>>
			         		<i class="${var1.MENU_ICON == null ? 'menu-icon fa fa-leaf black' : var1.MENU_ICON}"></i>
							${var1.MENU_NAME }
							<c:if test="${'[]' != var1.subMenu}"><b class="arrow fa fa-angle-down"></b></c:if>
					       </a>
					       <b class="arrow"></b>
						   <c:if test="${'[]' != var1.subMenu}">
						     <ul class="submenu" style="display: block;">
							   <c:forEach items="${var1.subMenu}" var="var2">
								<c:if test="${var1.hasMenu && '1' == var1.MENU_STATE}">
								  	<li class="">
									<a style="cursor:pointer;" <c:if test="${not empty var2.MENU_URL && '#' != var2.MENU_URL}">target="mainFrame" onclick="setMenu('tab_index${var2.MENU_ID}',this,${var2.MENU_NAME }','${var2.MENU_URL }')"</c:if><c:if test="${'[]' != var2.subMenu}"> class="dropdown-toggle"</c:if>>
										<i class="${var2.MENU_ICON == null ? 'menu-icon fa fa-leaf black' : menu3.MENU_ICON}"></i>
										${var2.MENU_NAME }
										<c:if test="${'[]' != var2.subMenu}"><b class="arrow fa fa-angle-down"></b></c:if>
									</a>
									<b class="arrow"></b>
									<c:if test="${'[]' != var2.subMenu}">
									  <ul class="submenu" style="display: block;">
										<c:forEach items="${var2.subMenu}" var="var3">
										 <c:if test="${var3.hasMenu && '1' == var3.MENU_STATE}">
										 <li class="">
											<c:if test="${'[]' != var3.subMenu}">
											<a style="cursor:pointer;" target="mainFrame" onclick="setMenu('tab_index${var3.MENU_ID}',this,'${var3.MENU_NAME }','menu/otherlistMenu.do?MENU_ID=${var3.MENU_ID }')"></a>
											</c:if>
											<i class="${var3.MENU_ICON == null ? 'menu-icon fa fa-leaf black' : var3.MENU_ICON}"></i>
											${var3.MENU_NAME }
											<b class="arrow"></b>
										  </li>
										 </c:if>
										</c:forEach>
									   </ul>
									</c:if>
								</c:if>
							   </c:forEach>
							  </ul>  
						   </c:if>
					     </c:if>
					    </li> 
					  </c:forEach>
					 </ul>
				  </c:if>
				</li>
		    </c:if>
		  </c:if>
		</c:forEach>
	  </ul>	
	  
<%-- 	  
	<c:if test="${empty menuList}">无用户权限</c:if>	  
	<c:if test="${not empty menuList}">有用户权限</c:if> --%>
	  
	  <ul class="nav nav-list" style="display: none;" id="mainMenu3">
<!-- 	<ul class="nav nav-list" id="mainMenu3"> -->
		<li class="">
			<a href="main/index">
				<i class="menu-icon fa fa-tachometer"></i>
				<span class="menu-text">用户管理</span>
			</a>
			<b class="arrow"></b>
		</li>
        <c:forEach items="${menuList}" var="var" >
		  <c:if test="${var.MENU_TYPE == '3'}">
		    <c:if test="${var.hasMenu && '1' == var.MENU_STATE}">
		    	<li class="">
				  <a style="cursor:pointer;" class="dropdown-toggle">
				  	<i class="${var.MENU_ICON == null ? 'menu-icon fa fa-leaf black' : var.MENU_ICON}"></i>
					<span class="menu-text">
						${var.MENU_NAME }
					</span>
					<c:if test="${'[]' != var.subMenu}">
					  <b class="arrow fa fa-angle-down"></b>
				    </c:if>
				  </a>
				  <c:if test="${'[]' != var.subMenu}">
				     <ul class="submenu" style="display: block;">
					  <c:forEach items="${var.subMenu}" var="var1">
					    <li class="">
					     <c:if test="${var1.hasMenu && '1' == var1.MENU_STATE}">
					       <a style="cursor:pointer;" <c:if test="${not empty var1.MENU_URL && '#' != var1.MENU_URL}"> target="mainFrame" onclick="setMenu('tab_index${var1.MENU_ID}',this,'${var1.MENU_NAME }','${var1.MENU_URL }')"</c:if><c:if test="${'[]' != var1.subMenu}"> class="dropdown-toggle"</c:if>>
			         		<i class="${var1.MENU_ICON == null ? 'menu-icon fa fa-leaf black' : var1.MENU_ICON}"></i>
							${var1.MENU_NAME }
							<c:if test="${'[]' != var1.subMenu}"><b class="arrow fa fa-angle-down"></b></c:if>
					       </a>
					       <b class="arrow"></b>
						   <c:if test="${'[]' != var1.subMenu}">
						     <ul class="submenu" style="display: block;">
							   <c:forEach items="${var1.subMenu}" var="var2">
								<c:if test="${var1.hasMenu && '1' == var1.MENU_STATE}">
								  	<li class="">
									<a style="cursor:pointer;" <c:if test="${not empty var2.MENU_URL && '#' != var2.MENU_URL}"> target="mainFrame" onclick="setMenu('tab_index${var2.MENU_ID}',this,'${var2.MENU_NAME }','${var2.MENU_URL }')"</c:if><c:if test="${'[]' != var2.subMenu}"> class="dropdown-toggle"</c:if>>
										<i class="${var2.MENU_ICON == null ? 'menu-icon fa fa-leaf black' : menu3.MENU_ICON}"></i>
										${var2.MENU_NAME }
										<c:if test="${'[]' != var2.subMenu}"><b class="arrow fa fa-angle-down"></b></c:if>
									</a>
									<b class="arrow"></b>
									<c:if test="${'[]' != var2.subMenu}">
									  <ul class="submenu" style="display: block;">
										<c:forEach items="${var2.subMenu}" var="var3">
										 <c:if test="${var3.hasMenu && '1' == var3.MENU_STATE}">
										 <li class="">
											<c:if test="${'[]' != var3.subMenu}">
											<a style="cursor:pointer;"  target="mainFrame" onclick="setMenu('tab_index${var3.MENU_ID}',this,'${var3.MENU_NAME }','menu/otherlistMenu.do?MENU_ID=${var3.MENU_ID }')"></a>
											</c:if>
											<i class="${var3.MENU_ICON == null ? 'menu-icon fa fa-leaf black' : var3.MENU_ICON}"></i>
											${var3.MENU_NAME }
											<b class="arrow"></b>
										  </li>
										 </c:if>
										</c:forEach>
									   </ul>
									</c:if>
								</c:if>
							   </c:forEach>
							  </ul>  
						   </c:if>
					     </c:if>
					    </li> 
					  </c:forEach>
					 </ul>
				  </c:if>
				</li>
		    </c:if>
		  </c:if>
		</c:forEach>
		
	  </ul>
	  
	  <ul class="nav nav-list" style="display: none;" id="mainMenu4">
		<li class="">
			<a href="main/index">
				<i class="menu-icon fa fa-tachometer"></i>
				<span class="menu-text">内容管理</span>
			</a>
			<b class="arrow"></b>
		</li>
	    <c:forEach items="${menuList}" var="var" >
		  <c:if test="${var.MENU_TYPE == '4'}">
		    <c:if test="${var.hasMenu && '1' == var.MENU_STATE}">
		    	<li class="">
				  <a style="cursor:pointer;" class="dropdown-toggle">
				  	<i class="${var.MENU_ICON == null ? 'menu-icon fa fa-leaf black' : var.MENU_ICON}"></i>
					<span class="menu-text">
						${var.MENU_NAME }
					</span>
					<c:if test="${'[]' != var.subMenu}">
					  <b class="arrow fa fa-angle-down"></b>
				    </c:if>
				  </a>
				  <c:if test="${'[]' != var.subMenu}">
				     <ul class="submenu" style="display: block;">
					  <c:forEach items="${var.subMenu}" var="var1">
					    <li class="">
					     <c:if test="${var1.hasMenu && '1' == var1.MENU_STATE}">
					       <a style="cursor:pointer;" <c:if test="${not empty var1.MENU_URL && '#' != var1.MENU_URL}">target="mainFrame" onclick="setMenu('tab_index${var1.MENU_ID}',this,'${var1.MENU_NAME }','${var1.MENU_URL }')"</c:if><c:if test="${'[]' != var1.subMenu}"> class="dropdown-toggle"</c:if>>
			         		<i class="${var1.MENU_ICON == null ? 'menu-icon fa fa-leaf black' : var1.MENU_ICON}"></i>
							${var1.MENU_NAME }
							<c:if test="${'[]' != var1.subMenu}"><b class="arrow fa fa-angle-down"></b></c:if>
					       </a>
					       <b class="arrow"></b>
						   <c:if test="${'[]' != var1.subMenu}">
						     <ul class="submenu" style="display: block;">
							   <c:forEach items="${var1.subMenu}" var="var2">
								<c:if test="${var1.hasMenu && '1' == var1.MENU_STATE}">
								  	<li class="">
									<a style="cursor:pointer;" <c:if test="${not empty var2.MENU_URL && '#' != var2.MENU_URL}">target="mainFrame" onclick="setMenu('tab_index${var2.MENU_ID}',this,'${var2.MENU_NAME }','${var2.MENU_URL }')"</c:if><c:if test="${'[]' != var2.subMenu}"> class="dropdown-toggle"</c:if>>
										<i class="${var2.MENU_ICON == null ? 'menu-icon fa fa-leaf black' : menu3.MENU_ICON}"></i>
										${var2.MENU_NAME }
										<c:if test="${'[]' != var2.subMenu}"><b class="arrow fa fa-angle-down"></b></c:if>
									</a>
									<b class="arrow"></b>
									<c:if test="${'[]' != var2.subMenu}">
									  <ul class="submenu" style="display: block;">
										<c:forEach items="${var2.subMenu}" var="var3">
										 <c:if test="${var3.hasMenu && '1' == var3.MENU_STATE}">
										 <li class="">
											<c:if test="${'[]' != var3.subMenu}">
											<a style="cursor:pointer;" target="mainFrame" onclick="setMenu('tab_index${var2.MENU_ID}',this,'${var3.MENU_NAME }','menu/otherlistMenu.do?MENU_ID=${var3.MENU_ID }')"></a>
											</c:if>
											<i class="${var3.MENU_ICON == null ? 'menu-icon fa fa-leaf black' : var3.MENU_ICON}"></i>
											${var3.MENU_NAME }
											<b class="arrow"></b>
										  </li>
										 </c:if>
										</c:forEach>
									   </ul>
									</c:if>
								</c:if>
							   </c:forEach>
							  </ul>  
						   </c:if>
					     </c:if>
					    </li> 
					  </c:forEach>
					 </ul>
				  </c:if>
				</li>
		    </c:if>
		  </c:if>
		</c:forEach>
	 </ul>
 </div>
</div>    
