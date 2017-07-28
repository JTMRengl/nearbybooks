package com.jiaoyan.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import com.jiaoyan.controller.base.BaseController;

public class LoginFilter extends BaseController implements Filter{

	@Override
	public void destroy() {
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) req;
		System.out.println(request.getRequestURL());
		chain.doFilter(req, res); // 调用下一过滤器
	}

	@Override
	public void init(FilterConfig fc) throws ServletException {
		
	}

}
