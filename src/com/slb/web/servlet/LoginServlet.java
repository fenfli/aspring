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
 * ��¼����
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
	 * ��¼��֤
	 * @param request
	 * @param response
	 * @throws IOException
	 * @throws ServletException
	 */
	private void doLogin(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		// �û�������
		String username = request.getParameter("username");  
        String password = request.getParameter("password");  
        // HttpSession�е���֤��  
        String verifyCode = (String)request.getSession().getAttribute("verifyCode");  
        // �����������֤��  
        String submitCode = WebUtils.getCleanParam(request, "verifycode");
        
        _logger.debug("Submit Code: " + submitCode + ", Session Code: " + verifyCode);

        if (null == submitCode || submitCode.isEmpty() || !verifyCode.equals(submitCode.toLowerCase())) {
        	 request.getSession().setAttribute("ERROR_LOGIN", SystemConstant.SYS_ERROR_1001);  
             response.sendRedirect("login.jsp");
             return;
        }
        
        // �û���֤
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);  
        token.setRememberMe(true);
        
        // Ϊ����֤�û�, ��װToken
        _logger.debug("Encapsulated Token: " + ReflectionToStringBuilder.toString(token, ToStringStyle.MULTI_LINE_STYLE));
          
        // ��ȡ��ǰ��Subject, ���������û�
        Subject currentUser = SecurityUtils.getSubject();
        try {  
            // �ڵ�����login������, SecurityManager���յ�AuthenticationToken, �����䷢�͸������õ�Realmִ�б������֤���  
            // ÿ��Realm�����ڱ�Ҫʱ���ύ��AuthenticationTokens������Ӧ  
            // ������һ���ڵ���login(token)����ʱ, �����ߵ�MyRealm.doGetAuthenticationInfo()������, ������֤��ʽ����˷���  
            _logger.debug("Verify User [" + username + "] start...");
            
            currentUser.login(token);  
            
            _logger.debug("Verify User [" + username + "] end...Validated");
            
            // д���û���Ϣ
            request.getSession().setAttribute(SystemConstant.SYS_USER_NAME, token.getUsername());
			request.getSession().setAttribute(SystemConstant.SYS_HOST, token.getHost());
			request.getSession().setAttribute(SystemConstant.SYS_USER_ONLINE, "online");
			
            //��ת��ҳ, ��������������ʵ�ַ
            request.getRequestDispatcher("jsp/index.jsp").forward(request, response);
            return;
        } catch (UnknownAccountException uae) {
			_logger.debug("Verify User [" + username + "] end...Unknown Account");
			
			request.getSession().setAttribute("ERROR_LOGIN", "δ֪�˻�");
		} catch (IncorrectCredentialsException ice) {
			_logger.debug("Verify User [" + username + "] end...Incorrect Credentials");
			
			request.getSession().setAttribute("ERROR_LOGIN", "���벻��ȷ");
		} catch (LockedAccountException lae) {
			_logger.debug("Verify User [" + username + "] end...Locked Account");
			
			request.getSession().setAttribute("ERROR_LOGIN", "�˻�������");
		} catch (ExcessiveAttemptsException eae) {
			_logger.debug("Verify User [" + username + "] end...Excessive Attempt");
			
			request.getSession().setAttribute("ERROR_LOGIN", "�û�������������������");
		} catch (AuthenticationException ae) {
			// ͨ������Shiro������ʱAuthenticationException�Ϳ��Կ����û���¼ʧ�ܻ��������ʱ���龰
			// ��֤δͨ��, ��ջ�켣����
			_logger.debug("Verify User [" + username + "] end...Authentication Stack Trace" + ae.getMessage() );
			
			request.getSession().setAttribute("ERROR_LOGIN", "�û��������벻��ȷ");
		}
        // ��֤�Ƿ��¼�ɹ�  
		if (currentUser.isAuthenticated()) {
			// ��¼��֤ͨ��, ����һЩ��֤ͨ�����һЩϵͳ������ʼ������
			_logger.debug("System Parameter Initialization");
			
		} else {
			token.clear();
		}
	}
	
	/**
	 * �û��ǳ�
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	private void doLogout(HttpServletRequest request, HttpServletResponse response) throws IOException {
		SecurityUtils.getSubject().logout();
		// ���session
		request.getSession().removeAttribute(SystemConstant.SYS_USER_NAME);
		request.getSession().removeAttribute(SystemConstant.SYS_USER_ID);
		request.getSession().removeAttribute("ERROR_LOGIN");
		response.sendRedirect("login.jsp");
	}
}
