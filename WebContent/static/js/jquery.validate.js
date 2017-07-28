/**
 * 判断命名方式字母，下划线，数字 
 */
function isRightful(value){
    var re = /^[A-Za-z0-9_-]+$/;
    return re.test(value);
}
/**
 * 验证数字
 * @param value
 * @returns
 */
function isNum(value){
    var re = /^[0-9]*$/;
    return re.test(value);
}
/**
 * 验证电话号码
 * @param value
 * @returns
 */
function isMobile(value){
	var re = /^((0\d{2,3})-)(\d{7,8})(-(\d{3,}))?$/;
	return re.test(value);
}
/**
 * 验证手机号码
 * @param value
 * @returns
 */
function isPhone(value){
	var re = /^1(3|5|7|8)\d{9}$/;
	return re.test(value);
}
/**
 * 验证手机和电话
 * @param id
 * @returns {Boolean}
 */
function isMobilePhone(id){
	var value = $("#"+id).val();
	if(isMobile(value) || isPhone(value)){
		return true;
	}else{
		return false;
	}
}
/**
 * 验证邮件服务器地址
 * @param id
 * @returns {Boolean}
 */
function isEmailHost(value){
	var re = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9_\-]+\.([a-zA-Z0-9_\-]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
	return re.test(value);
}
/**
 * 验证Email
 * @param value
 * @returns
 */
function isEmail(value){
	if(!value){
		return false;
	}
    var reg = /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
    var r = value.match(reg);
	if(r==null){
		return false;
	}
	return true;
}

/**
 * 验证中文
 * @param id
 * @returns {Boolean}
 */
function isChinese(value){
	var re = /^[\u4e00-\u9fa5]+$/;
	return re.test(value);
}