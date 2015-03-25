package com.itxxz.framework.shiro;

import java.util.HashSet;
import java.util.Set;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import com.itxxz.blog.user.entity.User;
import com.itxxz.blog.user.service.UserService;

public class UserRealm extends AuthorizingRealm {

	@Autowired
	private UserService userService;

	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(
			PrincipalCollection principals) {
		String username = (String) principals.getPrimaryPrincipal();

		SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
		authorizationInfo.setRoles(userService.findRoles(username));
		
		Set<String> permissionsSet = new HashSet<String>();
        permissionsSet.add("menu:list");
        permissionsSet.add("menu:create");
		
        authorizationInfo.addStringPermissions(permissionsSet);
		
		// authorizationInfo.setStringPermissions(userService.findPermissions(username));
		return authorizationInfo;
	}

	@Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        String username = (String)token.getPrincipal();
        User user = userService.findByUserName(username);
		if(user == null) {
		    throw new UnknownAccountException();//没找到帐号
		}
		if(Boolean.TRUE.equals(user.getLocked())) {
		    throw new LockedAccountException(); //帐号锁定
		}
        SimpleAuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(
                user.getAccount(), //用户名admin
                user.getPwd(), //密码slkdfjlsdkfj
                getName()  //realm name
        );
		authenticationInfo.setCredentialsSalt(ByteSource.Util.bytes(user.getCredentialsSalt())); 
		return authenticationInfo;
	}

	@Override
	public void clearCachedAuthorizationInfo(PrincipalCollection principals) {
		super.clearCachedAuthorizationInfo(principals);
	}

	@Override
	public void clearCachedAuthenticationInfo(PrincipalCollection principals) {
		super.clearCachedAuthenticationInfo(principals);
	}

	@Override
	public void clearCache(PrincipalCollection principals) {
		super.clearCache(principals);
	}

	public void clearAllCachedAuthorizationInfo() {
		getAuthorizationCache().clear();
	}

	public void clearAllCachedAuthenticationInfo() {
		getAuthenticationCache().clear();
	}

	public void clearAllCache() {
		clearAllCachedAuthenticationInfo();
		clearAllCachedAuthorizationInfo();
	}
}
