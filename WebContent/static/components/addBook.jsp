<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="vi addbook ui large modal">
  <div class="header">
	<span id="title">添加</span>
  </div>
  <div class="content" style="max-height:500px;overflow:scroll;overflow-x:hidden;">
    <form action="../book/toAddBook" enctype="multipart/form-data" name="bookForm" id="bookForm"
		method="post" class="ui form">
	  <div style="display: none;">
        <label>ID</label>
        <input id="ab-ID" placeholder="ID" name = "id" type="text">
      </div>
      <div class="required field">
        <label>ISBN</label>
        <input id="ab-ISBN" placeholder="ISBN" name = "isbn" type="text">
      </div>
      <div class="two fields">
        <div class="field">
          <label>租借价格</label>
          <div class="ui right labeled input">
            <input id="ab-lease" placeholder="金额" name = "price_hire" type="text">
            <div id="ab-lease-false" class="ui basic label button">&nbsp;&nbsp;&nbsp;<i class="ban icon"></i></div>
          </div>
        </div>
        <div class="field">
          <label>出售价格</label>
          <div class="ui right labeled input">
            <input id="ab-sell" placeholder="金额" name = "price_sell" type="text">
            <div id="ab-sell-false" class="ui basic label button">&nbsp;&nbsp;&nbsp;<i class="ban icon"></i></div>
          </div>
        </div>
      </div>
      <div class="field" style="display: none">
        <label>破损度</label>
        <input id="ab-damage" placeholder="破损度" type="text">
      </div>
      <div class="inline fields">
        <label for="fruit">破损度：</label>
        <div class="field">
          <div class="ui radio checkbox">
            <input name="damage" value="0" checked="checked" type="radio">
            <label>全新</label>
          </div>
        </div>
        <div class="field">
          <div class="ui radio checkbox">
            <input name="damage" value="1" type="radio">
            <label>8成新</label>
          </div>
        </div>
        <div class="field">
          <div class="ui radio checkbox">
            <input name="damage" value="2" type="radio">
            <label>7成新</label>
          </div>
        </div>
        <div class="field">
          <div class="ui radio checkbox">
            <input name="damage" value="3" type="radio">
            <label>更低</label>
          </div>
        </div>
      </div>
      <div class="fields" style="display: none">
        <input type="file" id="ab-img" style="display: none" />
        &nbsp;&nbsp;<label id="ab-upload" class="ui button">上传照片</label>
        <div id="ab-imgList" class="field">
          <div class="ui image label" style="margin-top:5px;"><img src="../static/images/01.jpg"> 封面-正（例） <i class="delete icon"></i></div>
          <div class="ui image label"><img src="../static/images/avatar.jpg"> 封面-背（例） <i class="delete icon"></i></div>
          <div class="ui image label"><img src="../static/images/img-1.jpg"> 内容页（例） <i class="delete icon"></i></div>
        </div>
      </div>
      <div class="field">
        <label>推荐理由</label>
        <textarea id="ab-comment" name="reasons"></textarea>
      </div>
    </form>
  </div>
  <div class="actions">
    <div class="ui cancel black deny button"> 返回 </div>
    <div class="ui ok positive right labeled icon button" onclick="save();"> 提交
      <i class="checkmark icon"></i>
    </div>
  </div>
</div>
<script type="text/javascript">
function save() {
	$("#bookForm").submit();
}
</script>