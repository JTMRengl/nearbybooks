<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<meta charset="utf-8">
<script id="bookList-tpl" type="text/html">
<ul class="vi list">
  <li>
  <!--
  <div class="ui link cards">
  -->
  {{# layui.each(d.data, function(index, item){ }}
    <div class="item card" style="width:calc((100% - {{d.column * 10}}px) / {{d.column}});">
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
  {{#  }); }}
  <!--
  </div>
  -->
  </li>
</ul>
</script>