package com.gurugan.infra.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.gurugan.infra.common.constants.Constants;

public class AuthLoginSessionInterception extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		if (request.getSession().getAttribute("sessGrade") == null) {
			response.sendRedirect(Constants.URL_LOGINFORM);
			return false;
		}
		else if (request.getSession().getAttribute("sessGrade").equals("1")) {
			// by pass
		} 
		else {
			response.sendRedirect(Constants.URL_LOGINFORM);
			return false;
		}
		System.out.println("AuthInterception assigned");
		return super.preHandle(request, response, handler);
	}

}
