  
/**  
 * 文件名：MenuMapper.java  
 *   
 * 日期：2015年3月20日  
 *  
*/  
    
package com.itxxz.blog.menu.mapper;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Repository;

import com.itxxz.blog.menu.entity.MenuInfo;
import com.itxxz.framework.base.BaseMapper;

  
/**  
 * 
 * @author: IT学习者-螃蟹
 * 
 * @官网 www.itxxz.com
 *
 * @version: 2015年3月20日 下午5:22:38   
 */
@Repository("menuMapper")
public interface MenuMapper extends BaseMapper<MenuInfo>{
	public List<MenuInfo> findPageByCondition(MenuInfo menu, RowBounds rb);
}
