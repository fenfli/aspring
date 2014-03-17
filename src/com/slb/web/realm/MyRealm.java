package com.slb.web.realm;


import org.apache.commons.lang3.builder.ReflectionToStringBuilder;  
import org.apache.commons.lang3.builder.ToStringStyle;  
import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;  
import org.apache.shiro.authc.AuthenticationException;  
import org.apache.shiro.authc.AuthenticationInfo;  
import org.apache.shiro.authc.AuthenticationToken;  
import org.apache.shiro.authc.SimpleAuthenticationInfo;  
import org.apache.shiro.authc.UsernamePasswordToken;  
import org.apache.shiro.authz.AuthorizationInfo;  
import org.apache.shiro.authz.SimpleAuthorizationInfo;  
import org.apache.shiro.realm.AuthorizingRealm;  
import org.apache.shiro.session.Session;  
import org.apache.shiro.subject.PrincipalCollection;  
import org.apache.shiro.subject.Subject;  
  
/** 
 * �û���֤
 * <p>�̳�Shiro��֤, ��֤�û�</p> 
 * @author GISApe
 * @date 2013/11
 * 
 */
public class MyRealm extends AuthorizingRealm {  
     
	private static Logger _logger = Logger.getLogger(MyRealm.class);
	
	
	/**
	 * ���ʱ���Ȩ��Դʱ��, �ᴥ��������֤
	 * @param PrincipalCollection
	 * @return AuthorizationInfo
	 */
    @Override  
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
    	/* ʵ�ʴ���Ǵ����ݿ��ȡȨ�޺ͽ�ɫ
    	 * code here
    	 */
    	
    	// Test code
        // ��ǰ�û� 
        String currentUsername = (String)super.getAvailablePrincipal(principals);  

        SimpleAuthorizationInfo simpleAuthorInfo = new SimpleAuthorizationInfo();  
        
        if (null != currentUsername && "gisape".equals(currentUsername)) {
        	// eg ��Ȩ
        	simpleAuthorInfo.addRole("admin");
        	simpleAuthorInfo.addStringPermission("admin:001");
        	
        	_logger.debug("Give gisape�� Role[admin], Permission[001]");
        	
        	return simpleAuthorInfo;

        } else if (null != currentUsername && "xiaohaozi".equals(currentUsername)) {
        	// eg ����Ȩ
        	
        	return simpleAuthorInfo;
        }
        
        //û����֤��Ϣ, Ĭ����ת��Shiro���õ�ַ @see xml  
        return null;  
    }  
  
    /**
     * ��¼��֤�û�ʱ, Ĭ�ϴ����˷���(@see user.login(token))
     * @param AuthenticationToken
     * @throws AuthenticationException
     * @return AuthenticationInfo
     */
    @Override  
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authcToken) throws AuthenticationException {  
        // ��ȡ�����û��������������  
        UsernamePasswordToken token = (UsernamePasswordToken)authcToken;  

        _logger.debug("Get passed token:" + ReflectionToStringBuilder.toString(token, ToStringStyle.MULTI_LINE_STYLE));
        
        /*
         * ���ݿ�ȡ�û���Ϣ��֤
         *  code here
         */
        
        // Test code
        // Shiro �Զ��Ա�, ��Ҫ�����û���, ����
		if ("gisape".equals(token.getUsername())) {
			AuthenticationInfo authcInfo = new SimpleAuthenticationInfo("gisape", "gisape", this.getName());
			
			// �û���Ϣд��Session, �Է��������ط�ʹ�� , eg: HttpSession.getAttribute(key)
			this.setSession("USER_ID", "1001");
			this.setSession("USER_NAME", "gisape");
			
			return authcInfo;
		} else if ("xiaohaozi".equals(token.getUsername())) {
			AuthenticationInfo authcInfo = new SimpleAuthenticationInfo("xiaohaozi","xiaohaozi", this.getName());
			
			this.setSession("USER_ID", "1002");
			this.setSession("USER_NAME", "xiaohaozi");
			
			return authcInfo;
		}
        // return null������֤��Ϣ���׳�UnknownAccountException
        return null;  
    }  
     
    /**
     * д��Session
     * @param key
     * @param value
     */
    private void setSession(Object key, Object value) {  
        Subject currentUser = SecurityUtils.getSubject();  
		if (null != currentUser) {
			Session session = currentUser.getSession();

			// _logger.debug("Session default timeout: "+ session.getTimeout() + "ms");

			if (null != session) {
				session.setAttribute(key, value);
			}
		}
    }  
}  
