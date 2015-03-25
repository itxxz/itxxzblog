  
/**  
 * 文件名：LoginController.java  
 *   
 * 日期：2015年3月14日  
 *  
*/  
    
package com.itxxz.blog.login.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

  
/**  
 * 
 * @author: IT学习者-螃蟹
 * 
 * @官网 www.itxxz.com
 *
 * @version: 2015年3月14日 上午12:01:45   
 */

@Controller
public class LoginController {
	
	private static transient final Logger log = LoggerFactory.getLogger(LoginController.class);

    @RequestMapping(value = "/login")
    public String showLoginForm(HttpServletRequest req) {
        String exceptionClassName = (String)req.getAttribute("shiroLoginFailure");
        String error = "";
        if(UnknownAccountException.class.getName().equals(exceptionClassName)) {
            error = "账户不存在";
        } else if(IncorrectCredentialsException.class.getName().equals(exceptionClassName)) {
            error = "用户名/密码错误";
        }else if(exceptionClassName != null) {
            error = "其他错误：" + exceptionClassName;
        }
        log.info(error);
        
        return "login";
    }


}
