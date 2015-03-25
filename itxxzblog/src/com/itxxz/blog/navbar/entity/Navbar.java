  
/**  
 * 文件名：Navbar.java  
 *   
 * 日期：2015年3月18日  
 *  
*/  
    
package com.itxxz.blog.navbar.entity;

import com.itxxz.framework.base.AbstractDO;


  
/**  
 * 
 * @author: IT学习者-螃蟹
 * 
 * @官网 www.itxxz.com
 *
 * @version: 2015年3月18日 下午5:04:16   
 */
public class Navbar extends AbstractDO {

	private static final long serialVersionUID = -1664094414022401225L;
	
	private int id;
	private String navName;
	private String ename;
	private int parentid;
	private int level;
	private int order;
	private int showFlag;
	private int linkType;
	private String linkUrl;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNavName() {
		return navName;
	}
	public void setNavName(String navName) {
		this.navName = navName;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public int getParentid() {
		return parentid;
	}
	public void setParentid(int parentid) {
		this.parentid = parentid;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public int getOrder() {
		return order;
	}
	public void setOrder(int order) {
		this.order = order;
	}
	public int getShowFlag() {
		return showFlag;
	}
	public void setShowFlag(int showFlag) {
		this.showFlag = showFlag;
	}
	public int getLinkType() {
		return linkType;
	}
	public void setLinkType(int linkType) {
		this.linkType = linkType;
	}
	public String getLinkUrl() {
		return linkUrl;
	}
	public void setLinkUrl(String linkUrl) {
		this.linkUrl = linkUrl;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Navbar [id=");
		builder.append(id);
		builder.append(", navName=");
		builder.append(navName);
		builder.append(", ename=");
		builder.append(ename);
		builder.append(", parentid=");
		builder.append(parentid);
		builder.append(", level=");
		builder.append(level);
		builder.append(", order=");
		builder.append(order);
		builder.append(", showFlag=");
		builder.append(showFlag);
		builder.append(", linkType=");
		builder.append(linkType);
		builder.append(", linkUrl=");
		builder.append(linkUrl);
		builder.append("]");
		return builder.toString();
	}

}
