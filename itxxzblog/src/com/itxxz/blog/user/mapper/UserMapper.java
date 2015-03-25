package com.itxxz.blog.user.mapper;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.itxxz.blog.user.entity.User;
import com.itxxz.framework.base.BaseMapper;

/**
 * 管理人员接口类
 * 
 * @author: IT学习者-螃蟹
 * 
 * @官网 www.itxxz.com
 *
 * @version: 2015年3月9日 下午4:03:30
 */
@Repository("userMapper")
public interface UserMapper extends BaseMapper<User>{	
	
	/**
	 * 根据登陆账号查询
	 * 
	 * @author: IT学习者-螃蟹
	 * 
	 * @官网 www.itxxz.com
	 * 
	 * @version: 2015年3月10日 下午9:58:31
	 */
	public User findByUserName(String userName);
	
	/**
	 * 查询所有users
	 * 
	 * @author: IT学习者-螃蟹
	 * 
	 * @官网 www.itxxz.com
	 * 
	 * @官网 www.itxxz.com
	 * 
	 * @version: 2015年3月10日 下午9:58:42
	 */
	public List<User> findUsersByCondition(User user);
	
	/**
	 * 查询用户总数
	 * 
	 * @author: IT学习者-螃蟹
	 * 
	 * @官网 www.itxxz.com
	 * 
	 * @version: 2015年3月12日 下午4:04:41
	 */
	public int selectUsersTotalCount();
}