package com.itxxz.common.util;

import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

public class StringTokenizerUtils {
	
	/**
	 * 字符串分割工具类
	 * 
	 * 
	 * @author: IT学习者-螃蟹
	 * 
	 * @官网 www.itxxz.com
	 * 
	 * @version: 2015年3月6日 下午3:13:42
	 */
	@SuppressWarnings("all")
	public static String[] split(String str,String seperators) {
		StringTokenizer tokenlizer = new StringTokenizer(str,seperators);
		List result = new ArrayList();
		
		while(tokenlizer.hasMoreElements()) {
			Object s = tokenlizer.nextElement();
			result.add(s);
		}
		return (String[])result.toArray(new String[result.size()]);
	}
	
}
