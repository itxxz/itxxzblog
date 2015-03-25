package com.itxxz.framework;

/**
 * 常量接口定义
 * 
 * @author: IT学习者-螃蟹
 * 
 * @官网 www.itxxz.com
 *
 * @version: 2015年3月6日 下午3:32:03
 */
public interface Constants {
	
	public static final String SESSION_SECURITY_CODE = "sessionSecCode";
	
    public static final String CURRENT_USER = "user";

    public static final String SERVER_APP_KEY = "325ba716-356a-43a8-a8e0-993e7a590cf0";

	String AUTHENTICATION_KEY = "SESSION_AUTHENTICATION";

	String SYSTEM_ADMIN = "admin";

	long SECOND = 1000;

	long MINUTE = 60 * SECOND;

	long HOUR = 60 * MINUTE;

	long DAY = 24 * HOUR;

	long WEEK = 7 * DAY;
}