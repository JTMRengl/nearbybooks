var srpUrl = "";//srp路径
//字符串截取
function substrs(dat,len){
	if(dat==null||typeof(dat)=="undefined"){
		return "";
	}
	if(dat.length>len){
		dat=(dat.substring(0,len)+"...");
	}
	return dat;
}
//时间相加秒为单位  
function dateOperator(date,seconds){  
  
    date = date.replace(/-/g,"/"); //更改日期格式  
    var nd = new Date(date);  
	console.log(nd);
    nd = nd.valueOf();  
	console.log(nd);
    nd = nd + seconds * 1000;  
    nd = new Date(nd);  
  
    var y = nd.getFullYear();  
    var m = nd.getMonth()+1;  
    var d = nd.getDate(); 
	var h=nd.getHours();
	var m=nd.getMinutes();	
	var s=nd.getSeconds();
    if(m <= 9) m = "0"+m;  
    if(d <= 9) d = "0"+d;   
    var cdate = y+"-"+m+"-"+d+" "+h+":"+m+":"+s;  
    return cdate;  
} 
Date.prototype.Format = function (fmt) { //author: meizz 
	var o = {
	 "M+": this.getMonth() + 1, //月份 
	 "d+": this.getDate(), //日 
	 "h+": this.getHours(), //小时 
	 "m+": this.getMinutes(), //分 
	 "s+": this.getSeconds(), //秒 
	 "q+": Math.floor((this.getMonth() + 3) / 3), //季度 
	 "S": this.getMilliseconds() //毫秒 
	};
	if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
	for (var k in o)
	if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
	return fmt;
	}
function string2Json(s) {     
    var newstr = "";  
    for (var i=0; i<s.length; i++) {  
        c = s.charAt(i);       
        switch (c) {       
            case '\"':       
                newstr+="\\\"";       
                break; 
            case '\'':       
                newstr+="\\\'";       
                break; 
            case '\\':       
                newstr+="\\\\";       
                break;       
            case '/':       
                newstr+="\\/";       
                break;       
            case '\b':       
                newstr+="\\b";       
                break;       
            case '\f':       
                newstr+="\\f";       
                break;       
            case '\n':       
                newstr+="\\n";       
                break;       
            case '\r':       
                newstr+="\\r";       
                break;       
            case '\t':       
                newstr+="\\t";       
                break;       
            default:       
                newstr+=c;       
        }  
   }  
   return newstr;       
}
function string3Json(s) {     
    var newstr = "";  
    for (var i=0; i<s.length; i++) {  
        c = s.charAt(i);       
        switch (c) {       
            case '\"':       
                newstr+="&quot;";       
                break; 
            case '\'':       
                newstr+="&#39;";       
                break; 
            case '<':       
                newstr+="&lt;";       
                break;       
            case '>':       
                newstr+="&gt;";       
                break;       
            case ' ':       
                newstr+="&nbsp;";       
                break;       
            default:       
                newstr+=c;       
        }  
   }  
   return newstr;       
}


function getRandomNum(){
	return Math.floor(Math.random()*10000+1);
}

function para(){
	return "random="+getRandomNum();
}
//if( tabs_i == j ) return false;
$(function(){
//菜单隐藏展开
var tabs_i=0
$('.vtitle').click(function(){
	var _self = $(this);
	var j = $('.vtitle').index(_self);
	tabs_i = j;
	$('.vtitle em').each(function(e){
		if(e == tabs_i){
			$('em',_self).removeClass('v01').addClass('v02')
		}else{
			$(this).removeClass('v02').addClass('v01');
		}
	});
	$('.vcon').slideUp().eq(tabs_i).slideDown();
});
})



	
//全选复选框
function checkAll(who, obj){
		var curCheckBox = document.getElementsByName(who);
		for(i = 0; i < curCheckBox.length; i++){
			curCheckBox.item(i).checked = obj.checked;
		}
}

//获得批量删除id拼接成字符串
function deleteBatch(){
	var obj=document.getElementsByName("id");
    var idStr = "";
    for(var i=0;i<obj.length;i++){
         if(obj[i].checked){
        	 idStr = idStr + obj[i].value+",";
       }
    }
    idStr = idStr.substring(0,idStr.length-1);
    return idStr;
}
	

//代号限定为只能为英文、字母、"_"、"-"组成
function isCode(str)
{
	var patrn=/^[a-zA-Z0-9_\-\s]*$/ ;
	return patrn.test(str);
}


//验证代号是否
function checkCode(url,dataStr)
{
	var is = false;
	$.ajax({
  type: "POST",
  url:url,
		data: dataStr, 
		contentType: "application/json",
		dataType: "json",
		async: false,
  success:function(result){
  	if(result.b == false)
  	{
  		alert(result.desc);
  		is = false;
  	}else{
  		is = true;
  	}
  },
		error: function (error) {
			alert("错误!！saveCode");
		}
});
	return is;
}

/**
 * 判断服务端状态是否操作成功
 * 0成功
 * 1失败
 * @param obj
 */
function isStatus(obj){
	return obj.status;
}
function ifStatus(obj){
	if (obj != null) {
		if(obj.status == 0){
			return true;
		}else{
			return false;
		}
	}else {
		return false;
	}
}

function closeAdd(targetClass){
	$("."+targetClass).hide();
	$("#spm").hide();
}

/**
 * 日期格式化
 * @param dateMath
 * @returns {String}
 */
function formatDate(dateMath){
	dateMath = dateMath.substring(0,4)+"-"+dateMath.substring(4,6)+"-"+dateMath.substring(6,8);
	return dateMath;
}


function formatDateT(dateMath){
	dateMath = dateMath.substring(0,4)+"年"+dateMath.substring(4,6)+"月"+dateMath.substring(6,8)+"日";
	return dateMath;
}

/**
 * 日期格式化
 * @param dateMath
 * @returns {String}
 */
function formatDateTime(dateMath){
	dateMath = dateMath.substring(0,4)+"-"+dateMath.substring(4,6)+"-"+dateMath.substring(6,8)+" "+dateMath.substring(8,10)+":"+dateMath.substring(10,12)+":"+dateMath.substring(12,14);
	return dateMath;
}

/**
 * 格式化如期  年：月：日
 * @param dataMath
 * @returns {String}
 */
function formatDateFull(dataMath){
	dataMath = dataMath.substring(0,4) + "年" + dataMath.substring(4,6) + "月" + dataMath.substring(6,8) + "日"
	+ dataMath.substring(8,10) + "时" + dataMath.substring(10,12) + "分" + dataMath.substring(12,14) + "秒";
	return dataMath;
}

/**
 * 日期格式化（数据存储）
 * @param dateMath
 */
function formatToDate(dateMath, num){
	if(num == 16){
		dateMath = dateMath.substring(0,4) + dateMath.substring(5,7) + dateMath.substring(8,10)
		 + dateMath.substring(11,13) + dateMath.substring(14,16) + dateMath.substring(17,19);
	}else if(num == 8){
		dateMath = dateMath.substring(0,4) + dateMath.substring(5,7) + dateMath.substring(8,10);
	}else if(num== 14){
		dateMath = dateMath.substring(0,4)+ dateMath.substring(5,7)+ dateMath.substring(8,10)
		+ dateMath.substring(11,13)+ dateMath.substring(14,16)+ dateMath.substring(17,19);
	}
	return dateMath;
}
/**
 * 将秒转换为时分秒
 * @param value
 * @returns {String}
 */
function formatseconds(a) {   
	
	  var hh = parseInt(a/3600);  
	  
	  if(hh<10) hh = "0" + hh;  
	  var mm = parseInt((a-hh*3600)/60);  
	  if(mm<10) mm = "0" + mm;  
	  var ss = parseInt((a-hh*3600)%60);  
	  if(ss<10) ss = "0" + ss;  
	  var length = hh + ":" + mm + ":" + ss;  
	  
	  if(a>0){  
	    return length;  
	  }else{  
	    return "00:00:00";  
	  }  
} 

/**
 * 获取当前日期 格式(2014-10-16 11:03:46)
 * @returns {String}
 */
function CurentTime(){ 
    var now = new Date();
    
    var year = now.getFullYear();       //年
    var month = now.getMonth() + 1;     //月
    var day = now.getDate();            //日
    
    var hh = now.getHours();            //时
    var mm = now.getMinutes();          //分
    var ss = now.getSeconds();           //秒
    
    var clock = year + "-";
    
    if(month < 10)
        clock += "0";
    
    clock += month + "-";
    
    if(day < 10)
        clock += "0";
        
    clock += day + " ";
    
    if(hh < 10)
        clock += "0";
        
    clock += hh + ":";
    if (mm < 10) clock += '0'; 
    clock += mm + ":"; 
     
    if (ss < 10) clock += '0'; 
    clock += ss; 
    return(clock); 
}

/**
 * 得到图片的名称
 * @param subjectName
 * @returns {String}
 */
function getImgPathName(subjectName){
	var kename="zonghe";
	if(subjectName=="数学"){
		kename="shuxue";
	}else if(subjectName=="语文"){
		kename="yuwen";
	}else if(subjectName=="英语"){
		kename="yingyu";
	}else if(subjectName=="音乐"){
		kename="yinyue";
	}else if(subjectName=="信息技术"){
		kename="xinxijishu";
	}else if(subjectName=="物理"){
		kename="wuli";
	}else if(subjectName=="体育"){
		kename="tiyu";
	}else if(subjectName=="化学"){
		kename="huaxue";
	}else if(subjectName=="生物"){
		kename="shengwu";
	}else if(subjectName=="历史"){
		kename="lishi";
	}else if(subjectName=="美术"){
		kename="meishu";
	}else if(subjectName=="地理"){
		kename="dili";
	}else if(subjectName=="综合"){
		kename="zonghe";
	}else if(subjectName=="政治"){
		kename="zhengzhi";
	}else if(subjectName=="科学"){
		kename="kexue";
	}else if(subjectName=="历史与社会"){
		kename="lishiyushehui";
	}else if(subjectName=="体育与健康"){
		kename="tiyujiankang";
	}else if(subjectName=="数学B版"){
		kename="shuxuebban";
	}else if(subjectName=="思想政治"){
		kename="sixiangzhengzhi";
	}else if(subjectName=="思想品德"){
		kename="sixiangpinde";
	}
	return kename;
	
}

function check_index_form_search()
{  
	var keyStr = $.trim($("#key").val());
	if(keyStr.length  ==  0 || keyStr  ==  "请输入关键字搜索")
	{  
		alert("请输入关键字搜索!");
		$("#key").focus();
		return false;
	}
	keyStr = encodeURI(encodeURI(keyStr));
	window.location.href="sharecourse.jsp?key=" + keyStr;
}

function getNowTime(){
	var str = d.getFullYear()+"-"+((d.getMonth()+1)<10?"0":"")+(d.getMonth()+1)
	+"-"+(d.getDate()<10?"0":"")+d.getDate()+
	"  "+d.getHours()+":"+d.getMinutes()+":"+d.getSeconds();
}