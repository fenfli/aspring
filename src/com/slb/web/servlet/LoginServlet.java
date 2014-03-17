package com.slb.web.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.builder.ReflectionToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.session.mgt.SessionContext;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.util.WebUtils;

import com.slb.web.util.SystemConstant;

/**
 * 登录服务
 * @author GISApe
 * @date 2013/11
 * 
 */
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = -575067697537931309L;
	private static Logger _logger = Logger.getLogger(LoginServlet.class);
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		doPost(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String action = request.getParameter("action");
		if (action != null && action.equals("logout")) {
			doLogout(request, response);
		} else {
			doLogin(request, response);
		}
	}
	
	/**
	 * 登录验证
	 * @param request
	 * @param response
	 * @throws IOException
	 * @throws ServletException
	 */
	private void doLogin(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		// 用户名密码
		String username = request.getParameter("username");  
        String password = request.getParameter("password");  
        // HttpSession中的验证码  
        String verifyCode = (String)request.getSession().getAttribute("verifyCode");  
        // 表单中输入的验证码  
        String submitCode = WebUtils.getCleanParam(request, "verifycode");
        
        _logger.debug("Submit Code: " + submitCode + ", Session Code: " + verifyCode);

        if (null == submitCode || submitCode.isEmpty() || !verifyCode.equals(submitCode.toLowerCase())) {
        	 request.getSession().setAttribute("ERROR_LOGIN", SystemConstant.SYS_ERROR_1001);  
             response.sendRedirect("login.jsp");
             return;
        }
        
        // 用户验证
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);  
        token.setRememberMe(true);
        
        // 为了验证用户, 封装Token
        _logger.debug("Encapsulated Token: " + ReflectionToStringBuilder.toString(token, ToStringStyle.MULTI_LINE_STYLE));
          
        // 获取当前的Subject, 即操作的用户
        Subject currentUser = SecurityUtils.getSubject();
        try {  
            // 在调用了login方法后, SecurityManager会收到AuthenticationToken, 并将其发送给已配置的Realm执行必须的认证检查  
            // 每个Realm都能在必要时对提交的AuthenticationTokens作出反应  
            // 所以这一步在调用login(token)方法时, 它会走到MyRealm.doGetAuthenticationInfo()方法中, 具体验证方式详见此方法  
            _logger.debug("Verify User [" + username + "] start...");
            
            currentUser.login(token);  
            
            _logger.debug("Verify User [" + username + "] end...Validated");
            
            // 写入用户信息
            request.getSession().setAttribute(SystemConstant.SYS_USER_NAME, token.getUsername());
			request.getSession().setAttribute(SystemConstant.SYS_HOST, token.getHost());
			request.getSession().setAttribute(SystemConstant.SYS_USER_ONLINE, "online");
			
            //跳转主页, 不更改浏览器访问地址
            request.getRequestDispatcher("jsp/index.jsp").forward(request, response);
            return;
        } catch (UnknownAccountException uae) {
			_logger.debug("Verify User [" + username + "] end...Unknown Account");
			
			request.getSession().setAttribute("ERROR_LOGIN", "未知账户");
		} catch (IncorrectCredentialsException ice) {
			_logger.debug("Verify User [" + username + "] end...Incorrect Credentials");
			
			request.getSession().setAttribute("ERROR_LOGIN", "密码不正确");
		} catch (LockedAccountException lae) {
			_logger.debug("Verify User [" + username + "] end...Locked Account");
			
			request.getSession().setAttribute("ERROR_LOGIN", "账户已锁定");
		} catch (ExcessiveAttemptsException eae) {
			_logger.debug("Verify User [" + username + "] end...Excessive Attempt");
			
			request.getSession().setAttribute("ERROR_LOGIN", "用户名或密码错误次数过多");
		} catch (AuthenticationException ae) {
			// 通过处理Shiro的运行时AuthenticationException就可以控制用户登录失败或密码错误时的情景
			// 验证未通过, 堆栈轨迹如下
			_logger.debug("Verify User [" + username + "] end...Authentication Stack Trace" + ae.getMessage() );
			
			request.getSession().setAttribute("ERROR_LOGIN", "用户名或密码不正确");
		}
        // 验证是否登录成功  
		if (currentUser.isAuthenticated()) {
			// 登录认证通过, 进行一些认证通过后的一些系统参数初始化操作
			_logger.debug("System Parameter Initialization");
			
		} else {
			token.clear();
		}
	}
	
	/**
	 * 用户登出
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	private void doLogout(HttpServletRequest request, HttpServletResponse response) throws IOException {
		SecurityUtils.getSubject().logout();
		// 清空session
		request.getSession().removeAttribute(SystemConstant.SYS_USER_NAME);
		request.getSession().removeAttribute(SystemConstant.SYS_USER_ID);
		request.getSession().removeAttribute("ERROR_LOGIN");
		response.sendRedirect("login.jsp");
	}
}
