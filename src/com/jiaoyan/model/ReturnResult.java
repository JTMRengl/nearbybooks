package com.jiaoyan.model;

import org.springframework.stereotype.Component;

@Component("returnResult")
public class ReturnResult {

	private String code;

	private String msg;

	private Object result;



	public Object getResult() {
		return result;
	}

	public void setResult(Object result) {
		this.result = result;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

}
