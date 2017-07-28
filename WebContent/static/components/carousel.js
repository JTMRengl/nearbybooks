
var Carousel = function (data) {
  
  E.call(this);
  this.vo = $('.vi.carousel');
  this.imgArray = data;
  this.CDIndex = 3; // 当前主div的编号
  this.LIIndex = 4; // 当前显示的最后一个图片的下标
  Carousel.self = this;
  
  $('.i1').attr('src', this.imgArray[0].url); 
  $('.i2').attr('src', this.imgArray[1].url); 
  $('.i3').attr('src', this.imgArray[2].url); 
  $('.i4').attr('src', this.imgArray[3].url); 
  $('.i5').attr('src', this.imgArray[4].url); 
  
  $('.item').find('img').bind('click',function() {
    
  var i = parseInt($(this).attr('name'));
  if (i == Carousel.self.CDIndex) return;
  var LOR = Carousel.prototype.judgeLOR(i);
  
  switch (LOR) {
  
  case 0:
	  
    Carousel.self.LIIndex--;
    
    if (Carousel.self.LIIndex == -1) Carousel.self.LIIndex = Carousel.self.imgArray.length - 1;
    
    $('.i' + Carousel.prototype.judge1_5(i + 3)).attr('src', Carousel.self.imgArray[Carousel.self.LIIndex].url); 
    
    $('#d' + Carousel.prototype.judge1_5(i + 3)).attr('class', 'item nl');
    $('#d' + Carousel.prototype.judge1_5(i - 1)).attr('class', 'item l');
    $('#d' + i).attr('class', 'item c');
    $('#d' + Carousel.prototype.judge1_5(i + 1)).attr('class', 'item r');
    $('#d' + Carousel.prototype.judge1_5(i + 2)).attr('class', 'item nr');
    break;
    
  case 1:
    
    Carousel.self.LIIndex++;
    
    if (Carousel.self.LIIndex == Carousel.self.imgArray.length) Carousel.self.LIIndex = 0;
    
    $('.i' + Carousel.prototype.judge1_5(i - 3)).attr('src', Carousel.self.imgArray[Carousel.self.LIIndex].url); 
    
    $('#d' + Carousel.prototype.judge1_5(i - 2)).attr('class', 'item nl');
    $('#d' + Carousel.prototype.judge1_5(i - 1)).attr('class', 'item l');
    $('#d' + i).attr('class', 'item c');
    $('#d' + Carousel.prototype.judge1_5(i + 1)).attr('class', 'item r');
    $('#d' + Carousel.prototype.judge1_5(i - 3)).attr('class', 'item nr');
    break;
  }
  
  Carousel.self.CDIndex = i;
  });
}

/** 判断 点击左还是右 */
Carousel.prototype.judgeLOR = function (i) {
  
  // left or right (0 / 1)
  var LOR;
  
  // 主 div 是 1 或 4 需要单独处理
  if (Carousel.self.CDIndex == 1) {
    if (i == 2) LOR = 1;
    else LOR = 0;
    return LOR;
  }
  
  if (Carousel.self.CDIndex == 5) {
    if (i == 1) LOR = 1;
    else LOR = 0;
    return LOR;
  }
  
  if (i < Carousel.self.CDIndex) LOR = 0;
  else LOR = 1;
  return LOR;
}

Carousel.prototype.judge1_5 = function (a) {
  if (a > 5) return a - 5;
  if (a < 1) return 5 + a;
  return a;
}
