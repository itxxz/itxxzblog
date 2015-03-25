  
/**  
 * 文件名：MenuController.java  
 *   
 * 日期：2015年3月20日  
 *  
*/  
    
package com.itxxz.blog.menu.controller;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itxxz.blog.menu.service.MenuService;

  
/**  
 * 
 * @author: IT学习者-螃蟹
 * 
 * @官网 www.itxxz.com
 *
 * @version: 2015年3月20日 下午5:21:52   
 */
@Controller
@RequestMapping("admin")
public class MenuController {

	@Autowired
	MenuService menuService;
	
	@RequestMapping("menuList")
	public String showAllMenuList(Model model){
		model.addAttribute("menuList", menuService.findAllMenus());
		return "admin/menuList";
	}
	@RequiresPermissions("menu:create") 
	@RequestMapping("create")
	public String createMenu(Model model){
		System.out.println("测试添加菜单");
		model.addAttribute("menuList", menuService.findAllMenus());
		return "admin/menuList";
	}
	@RequiresPermissions("menu:delete") 
	@RequestMapping("delete")
	public String deleteMenu(Model model){
		System.out.println("测试删除菜单");
		model.addAttribute("menuList", menuService.findAllMenus());
		return "admin/menuList";
	}
}
