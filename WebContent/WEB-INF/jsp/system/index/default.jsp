<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="<%=basePath%>">
<%@ include file="/static/html/head.jsp"%>
</head>
<body>
<div class="main-container">

<iframe  src="course/statistics" style="margin:0 auto;width:100%;height:600px;border: 0px;"></iframe>
	<!-- <iframe  src="course/list" style="margin:0 auto;width:100%;height:600px;border: 0px;"></iframe> -->
	<!-- <div class="main-content">
		<div class="main-content-inner">
			<div class="page-content">
				<div class="hr hr-18 dotted hr-double"></div>
				<div class="row">
					<div class="col-xs-12">
	                   <div class="alert alert-block alert-success">
							<button type="button" class="close" data-dismiss="alert">
								<i class="ace-icon fa fa-times"></i>
							</button>
							<i class="ace-icon fa fa-check green"></i>
							内部通知&nbsp;&nbsp;
						</div>
						
					    <table style="border: 0px;width: 100%;">
					       <tr>
					          <td width=45% valign="top">
							    <table class="table table-striped table-bordered table-hover" style="margin-top:5px;">	
							      <thead>
									<tr>
										<th class="center" style="width:35px;">
										  <label class="pos-rel"><input type="checkbox" class="ace" /><span class="lbl"></span></label>
										</th>
										<th class="center" style="width:50px;">序号</th>
										<th class="center" >标题</th>
										<th class="center">发布时间</th>
										<th class="center">发布者</th>
										<th class="center">操作</th>
									</tr>
							      </thead>
							      <tbody>
                                   <tr>
                                      <td>1</td>
                                      <td></td>
                                      <td></td>
                                      <td></td>
                                      <td></td>
                                      <td></td>
                                    </tr>
                                  </tbody>
							    </table>  
						     </td>
						     <td width=5%></td>
						     <td width=45%>
							    <table class="table table-striped table-bordered table-hover" style="margin-top:5px;">	
							      <thead>
									<tr>
										<th class="center" style="width:35px;">
										 <label class="pos-rel"><input type="checkbox" class="ace" /><span class="lbl"></span></label>
										</th>
										<th class="center" style="width:50px;">序号</th>
										<th class="center">标题</th>
										<th class="center">发布时间</th>
										<th class="center">发布者</th>
										<th class="center">操作</th>
									</tr>
							      </thead>
							      <tbody>
                                   <tr>
                                      <td>1</td>
                                      <td></td>
                                      <td></td>
                                      <td></td>
                                      <td></td>
                                      <td></td>
                                    </tr>
                                  </tbody>
							    </table>  
						     </td>
					       </tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div> -->
</div>
</body>
</html>