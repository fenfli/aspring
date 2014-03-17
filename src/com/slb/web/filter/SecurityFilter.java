package com.slb.web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

/**
 * 自定义filter, 检查session是否已登录
 * @author GISApe
 * @date 2014/01
 * 
 */
public class SecurityFilter implements Filter {

	private static Logger _logger = Logger.getLogger(SecurityFilter.class);
	
	@Override
	public void destroy() {
		
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		_logger.debug("Security Filter start...");
		
		HttpServletRequest request = (HttpServletRequest) arg0;   
        HttpServletResponse response  =(HttpServletResponse) arg1;  
        HttpSession session = request.getSession(true);     
        
        String userCode = (String) request.getRemoteUser(); // 登录人
        String userRole = (String) session.getAttribute("USER_ID"); // 登录人角色
        
        String url = request.getRequestURI();   
        
        if (null == userCode || "".equals(userCode) || null == userRole || "".equals(userRole)) {
        	if (null != url && url.indexOf("login") < 0) {
        		response.sendRedirect(request.getContextPath() + "/login.jsp");
        		
        		_logger.debug("Security Filter end");
           	 
            	return;
        	}
        }
        arg2.doFilter(arg0, arg1);
        
        _logger.debug("Security Filter end");
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		
	}

}
