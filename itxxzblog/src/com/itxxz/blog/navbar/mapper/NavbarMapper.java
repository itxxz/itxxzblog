  
/**  
 * 文件名：NavbarMapper.java  
 *   
 * 日期：2015年3月18日  
 *  
*/  
    
package com.itxxz.blog.navbar.mapper;

import org.springframework.stereotype.Repository;

import com.itxxz.blog.navbar.entity.Navbar;
import com.itxxz.framework.base.BaseMapper;

  
/**  
 * 
 * @author: IT学习者-螃蟹
 * 
 * @官网 www.itxxz.com
 *
 * @version: 2015年3月18日 下午5:04:31   
 */
@Repository("navbarMapper")
public interface NavbarMapper  extends BaseMapper<Navbar>{
	public Navbar findByNavId(int navId);

}
