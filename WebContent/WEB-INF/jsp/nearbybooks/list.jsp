<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE =edge,chrome =1" />
<meta name="renderer" content="webkit">
<title>借阅</title>

  <link rel="stylesheet" href="../static/js/semantic/semantic.min.css">
  <link rel="stylesheet" href="../static/js/layui/css/layui.css">
  <link rel="stylesheet" href="../static/css/common.css">
  
  <script src="../static/js/jquery-1.7.2.js"></script>
  <script src="../static/js/layui/layui.js"></script>
  <script src="../static/js/semantic/semantic.min.js"></script>
  <script src="../static/js/tools.js"></script>
  <script src="../static/js/event.js"></script>
  
  <%@include file="/static/components/head_tpl.jsp"%>

</head>
<body>

  <div class="vi contents">
   <div class="vi item">
      <ul class="vi list">
        <li>
          <div class="item card" style="width:calc((100% - 40px) / 4);">
            <div class="image">
              <img src="{{item.img}}">
            </div>
            <div class="content">
              <div class="header">{{item.name}}</div>
              <div class="meta">
                <a>{{item.author}}</a>
              </div>
              <div class="description">{{item.introduction}}</div>
            </div>
            <div class="ui star rating" data-rating="3"></div>
          </div>
          <div class="item card" style="width:calc((100% - 40px) / 4);">
            <div class="image">
              <img src="{{item.img}}">
            </div>
            <div class="content">
              <div class="header">{{item.name}}</div>
              <div class="meta">
                <a>{{item.author}}</a>
              </div>
              <div class="description">{{item.introduction}}</div>
            </div>
            <div class="ui star rating" data-rating="3"></div>
          </div>
          <div class="item card" style="width:calc((100% - 40px) / 4);">
            <div class="image">
              <img src="{{item.img}}">
            </div>
            <div class="content">
              <div class="header">{{item.name}}</div>
              <div class="meta">
                <a>{{item.author}}</a>
              </div>
              <div class="description">{{item.introduction}}</div>
            </div>
            <div class="ui star rating" data-rating="3"></div>
          </div>
          <div class="item card" style="width:calc((100% - 40px) / 4);">
            <div class="image">
              <img src="{{item.img}}">
            </div>
            <div class="content">
              <div class="header">{{item.name}}</div>
              <div class="meta">
                <a>{{item.author}}</a>
              </div>
              <div class="description">{{item.introduction}}</div>
            </div>
            <div class="ui star rating" data-rating="3"></div>
          </div>
        </li>
      </ul>
    </div>
    <div class="vi item"><div class="psge right" id="page"></div></div>
  </div>
  
  <script src="../static/components/head.js"></script>
  <script src="../static/js/pages/list.js"></script>
  
  <script type="text/javascript">
  layui.use(['laypage', 'layer'], function(){
    
    var laypage = layui.laypage,layer = layui.layer;
    
    laypage({
        cont: 'page'
        ,curr: 1
        ,pages: 10
        ,first: 1
        ,last: 0
        ,skin: '#000'
        ,prev: '<em><</em>'
        ,next: '<em>></em>'
        ,jump: function(obj, first){
          if(!first){
          }
        }
      });
  });
  </script>

</body>
</html>