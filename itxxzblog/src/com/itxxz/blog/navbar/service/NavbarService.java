  
/**  
 * 文件名：NavbarService.java  
 *   
 * 日期：2015年3月18日  
 *  
*/  
    
package com.itxxz.blog.navbar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itxxz.blog.navbar.entity.Navbar;
import com.itxxz.blog.navbar.mapper.NavbarMapper;

  
/**  
 * 
 * @author: IT学习者-螃蟹
 * 
 * @官网 www.itxxz.com
 *
 * @version: 2015年3月18日 下午5:05:06   
 */
@Service
public class NavbarService {

	@Autowired
	private NavbarMapper navbarMapper;
	
    public void createNav(Navbar navbar) {
        //加密密码
    	navbarMapper.insert(navbar);
    }
	
	public Navbar findByNavId(int navid){
		return navbarMapper.findByNavId(navid);
	}
	
/*	public List<Navbar> findUsersByCondition(Navbar navbar){
		return navbarMapper.findNavsByCondition(navbar);
	}*/
    
    public List<Navbar> findAllNavs(){
		return navbarMapper.findAll();
	}
	
}
