<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<meta charset="utf-8">
<script id="table-tpl" type="text/html">
  <div class="vi table">
    <div class="thead">
      <div class="item center_ver" style="width:50px;"><div class="ui checkbox"><input name="all" type="checkbox"></div></div>
      {{# layui.each(d.thead, function(index, item){ }}
      	<div class="item" style="width:calc(100% * {{item.width}} - 10px);"><strong>{{item.title}}</strong></div>
      {{#  }); }}
    </div>
    <div class="content">
      {{# layui.each(d.data, function(index, item){ }}
      	<div class="item">
            <!-- 单选框 -->
      	    <div class="column center-child" style="width:50px;"><div class="child">
              <div class="ui checkbox"><input name="example" type="checkbox"></div>
            </div></div>
            <!-- 缩略图 -->
      	    <div class="column center-child" style="width:calc(100% * {{d.thead[0].width}} - 10px)"><div class="child">
              <img src="{{item.img}}">
            </div></div>
            <!-- title -->
      	    <div class="column center-child" style="width:calc(100% * {{d.thead[1].width}} - 10px)"><div class="child">
              <p><strong>{{item.title}}</strong></p>
              <label class="introduction">{{item.introduction}}</label>
            </div></div>
            <!-- 价格 -->
      	    <div class="column center-child" style="width:calc(100% * {{d.thead[2].width}} - 10px)"><div class="child">
              <strong>{{item.price}} ￥</strong>
            </div></div>
      	    <div class="column center-child" style="width:calc(100% * {{d.thead[3].width}} - 10px)"><div class="child">
              <strong>{{item.type}}</strong>
            </div></div>
      	    <div class="column center-child" style="width:calc(100% * {{d.thead[4].width}} - 10px)"><div class="child">
              <strong>{{item.long}}</strong>
            </div></div>
      	    <div class="column center-child" style="width:calc(100% * {{d.thead[5].width}} - 10px)"><div class="child">
              <strong>{{item.num}}</strong>
            </div></div>
        </div>
      {{#  }); }}
    </div>
  </div>
</script>