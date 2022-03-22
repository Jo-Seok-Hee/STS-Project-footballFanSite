package com.sucky.project.common;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

@Component
public class PermissionInterceptor implements HandlerInterceptor{
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws IOException {
		
		//로그인 정보
		HttpSession session = request.getSession();	
		
		//현재 요청한 url의 경로 (uri???)  ex)"/user/memo";
		String uri = request.getRequestURI();
		
		
		if(session.getAttribute("userId") == null) {  //비로그인 상태
			
			if(uri.startsWith("/post/")) {
				response.sendRedirect("/footballweare");
				return false;
			}

		}
		return true;
		
	}
	
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response
			,Object handler, ModelAndView modelAndView) {
		
	}
	
	//모든것이 완료 되었을 때르
	
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response
			,Object handler, Exception ex) {
		
	}
}
