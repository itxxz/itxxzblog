  
/**  
 * 文件名：UserService.java  
 *   
 * 日期：2015年3月13日  
 *  
*/  
    
package com.itxxz.blog.user.service;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.shiro.crypto.hash.Md5Hash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itxxz.blog.user.entity.User;
import com.itxxz.blog.user.mapper.UserMapper;

  
/**  
 * 
 * @author: IT学习者-螃蟹
 * 
 * @官网 wwww.itxxz.comS
 *
 * @version: 2015年3月13日 下午4:28:15   
 */
@Service
public class UserService {
	
	@Autowired
	private UserMapper userMapper;
	
    //private PasswordHelper passwordHelper;
	
    /**
     * 创建用户
     * @param user
     */
    public void createUser(User user) {
        //加密密码
    	String password_md5= new Md5Hash(user.getPwd(),user.getCredentialsSalt(),4).toHex();
    	user.setPwd(password_md5);
        userMapper.insert(user);
    }
	
	public User findByUserName(String userName){
		return userMapper.findByUserName(userName);
	}
	
	public List<User> findUsersByCondition(User user){
		return userMapper.findUsersByCondition(user);
	}
	
    /**
     * 根据用户名查找其角色
     * @param username
     * @return
     */
    public Set<String> findRoles(String username) {
        User user =findByUserName(username);
        Set<String> roleSet = new HashSet<String>();
        if(user == null) {
            //return Collections.EMPTY_SET;
        }
        roleSet.add("menu:list");
        roleSet.add("menu:create");
        roleSet.add("menu:update");
        roleSet.add("manager");
        roleSet.add("role");
        roleSet.add("good");
        return roleSet;
        //return roleMapper.findRoles(user.getRoleIds().toArray(new Long[0]));
    }

}
