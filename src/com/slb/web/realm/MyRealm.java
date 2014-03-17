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
 * 用户验证
 * <p>继承Shiro认证, 验证用户</p> 
 * @author GISApe
 * @date 2013/11
 * 
 */
public class MyRealm extends AuthorizingRealm {  
     
	private static Logger _logger = Logger.getLogger(MyRealm.class);
	
	
	/**
	 * 访问被授权资源时候, 会触发方法验证
	 * @param PrincipalCollection
	 * @return AuthorizationInfo
	 */
    @Override  
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
    	/* 实际大多是从数据库获取权限和角色
    	 * code here
    	 */
    	
    	// Test code
        // 当前用户 
        String currentUsername = (String)super.getAvailablePrincipal(principals);  

        SimpleAuthorizationInfo simpleAuthorInfo = new SimpleAuthorizationInfo();  
        
        if (null != currentUsername && "gisape".equals(currentUsername)) {
        	// eg 授权
        	simpleAuthorInfo.addRole("admin");
        	simpleAuthorInfo.addStringPermission("admin:001");
        	
        	_logger.debug("Give gisape： Role[admin], Permission[001]");
        	
        	return simpleAuthorInfo;

        } else if (null != currentUsername && "xiaohaozi".equals(currentUsername)) {
        	// eg 不授权
        	
        	return simpleAuthorInfo;
        }
        
        //没有认证信息, 默认跳转至Shiro配置地址 @see xml  
        return null;  
    }  
  
    /**
     * 登录验证用户时, 默认触发此方法(@see user.login(token))
     * @param AuthenticationToken
     * @throws AuthenticationException
     * @return AuthenticationInfo
     */
    @Override  
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authcToken) throws AuthenticationException {  
        // 获取基于用户名和密码的令牌  
        UsernamePasswordToken token = (UsernamePasswordToken)authcToken;  

        _logger.debug("Get passed token:" + ReflectionToStringBuilder.toString(token, ToStringStyle.MULTI_LINE_STYLE));
        
        /*
         * 数据库取用户信息验证
         *  code here
         */
        
        // Test code
        // Shiro 自动对比, 需要传递用户名, 密码
		if ("gisape".equals(token.getUsername())) {
			AuthenticationInfo authcInfo = new SimpleAuthenticationInfo("gisape", "gisape", this.getName());
			
			// 用户信息写入Session, 以方便其他地方使用 , eg: HttpSession.getAttribute(key)
			this.setSession("USER_ID", "1001");
			this.setSession("USER_NAME", "gisape");
			
			return authcInfo;
		} else if ("xiaohaozi".equals(token.getUsername())) {
			AuthenticationInfo authcInfo = new SimpleAuthenticationInfo("xiaohaozi","xiaohaozi", this.getName());
			
			this.setSession("USER_ID", "1002");
			this.setSession("USER_NAME", "xiaohaozi");
			
			return authcInfo;
		}
        // return null则无认证信息则抛出UnknownAccountException
        return null;  
    }  
     
    /**
     * 写入Session
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
