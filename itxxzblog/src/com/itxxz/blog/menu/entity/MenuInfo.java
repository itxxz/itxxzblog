  
/**  
 * 文件名：MenuInfo.java  
 *   
 * 日期：2015年3月20日  
 *  
*/  
    
package com.itxxz.blog.menu.entity;

import java.util.ArrayList;
import java.util.List;

import com.itxxz.framework.base.AbstractDO;

  
/**  
 * 
 * @author: IT学习者-螃蟹
 * 
 * @官网 www.itxxz.com
 *
 * @version: 2015年3月20日 下午5:22:16   
 */

public class MenuInfo extends AbstractDO {
	
	
	  
	private static final long serialVersionUID = -726718679390348208L;
	private int id;
	private String menuName;
	private String menuUrl;
	private int uid;
	private String menuIcon;
	
	private List<MenuInfo> childMenuList = new ArrayList<MenuInfo>();
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public String getMenuUrl() {
		return menuUrl;
	}
	public void setMenuUrl(String menuUrl) {
		this.menuUrl = menuUrl;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	
	public List<MenuInfo> getChildMenuList() {
		return childMenuList;
	}
	public void setChildMenuList(List<MenuInfo> childMenuList) {
		this.childMenuList = childMenuList;
	}
	public String getMenuIcon() {
		return menuIcon;
	}
	public void setMenuIcon(String menuIcon) {
		this.menuIcon = menuIcon;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("MenuInfo [id=");
		builder.append(id);
		builder.append(", menuName=");
		builder.append(menuName);
		builder.append(", menuUrl=");
		builder.append(menuUrl);
		builder.append(", uid=");
		builder.append(uid);
		builder.append(", menuIcon=");
		builder.append(menuIcon);
		builder.append(", childMenuList=");
		builder.append(childMenuList);
		builder.append("]");
		return builder.toString();
	}
}
