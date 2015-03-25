package com.itxxz.framework.filter;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.web.filter.PathMatchingFilter;
import org.springframework.beans.factory.annotation.Autowired;

import com.itxxz.blog.user.service.UserService;
import com.itxxz.framework.Constants;

public class SysUserFilter extends PathMatchingFilter {

	@Autowired
	UserService userService;

	@Override
	protected boolean onPreHandle(ServletRequest request,
			ServletResponse response, Object mappedValue) throws Exception {
		String username = (String) SecurityUtils.getSubject().getPrincipal();
		request.setAttribute(Constants.CURRENT_USER,
				userService.findByUserName(username));
		return true;
	}
}
