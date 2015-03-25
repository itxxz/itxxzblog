  
/**  
 * 文件名：NavbarController.java  
 *   
 * 日期：2015年3月18日  
 *  
*/  
    
package com.itxxz.blog.navbar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.itxxz.blog.navbar.service.NavbarService;

  
/**  
 * 
 * @author: IT学习者-螃蟹
 * 
 * @官网 www.itxxz.com
 *
 * @version: 2015年3月18日 下午5:04:05   
 */
@Controller
public class NavbarController {
	
	@Autowired
	private NavbarService navbarService;

}
