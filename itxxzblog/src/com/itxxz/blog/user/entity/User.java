package com.itxxz.blog.user.entity;

import javax.xml.crypto.Data;

import com.itxxz.framework.base.AbstractDO;

public class User extends AbstractDO {

	private static final long serialVersionUID = 6561321679889305924L;

	private int id;
	private String account;
	private String pwd;
	private String cname;
	private String ename;
	private int age;
	private int sex;
	private Data creatTime;
	private Data lastTime;
	private String mobile;
	private String email;
	private String loginIP;
	private String roleId;
	private String photo;
	private int locked;
	private int status;
	
	private String salt;
	
	public String getCredentialsSalt(){
		return account + salt;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}

	public Data getCreatTime() {
		return creatTime;
	}

	public void setCreatTime(Data creatTime) {
		this.creatTime = creatTime;
	}

	public Data getLastTime() {
		return lastTime;
	}

	public void setLastTime(Data lastTime) {
		this.lastTime = lastTime;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getLoginIP() {
		return loginIP;
	}

	public void setLoginIP(String loginIP) {
		this.loginIP = loginIP;
	}

	public String getRoleId() {
		return roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public int getLocked() {
		return locked;
	}

	public void setLocked(int locked) {
		this.locked = locked;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getSalt() {
		return salt;
	}

	public void setSalt(String salt) {
		this.salt = salt;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("User [id=");
		builder.append(id);
		builder.append(", account=");
		builder.append(account);
		builder.append(", pwd=");
		builder.append(pwd);
		builder.append(", cname=");
		builder.append(cname);
		builder.append(", ename=");
		builder.append(ename);
		builder.append(", age=");
		builder.append(age);
		builder.append(", sex=");
		builder.append(sex);
		builder.append(", creatTime=");
		builder.append(creatTime);
		builder.append(", lastTime=");
		builder.append(lastTime);
		builder.append(", mobile=");
		builder.append(mobile);
		builder.append(", email=");
		builder.append(email);
		builder.append(", loginIP=");
		builder.append(loginIP);
		builder.append(", roleId=");
		builder.append(roleId);
		builder.append(", photo=");
		builder.append(photo);
		builder.append(", locked=");
		builder.append(locked);
		builder.append(", status=");
		builder.append(status);
		builder.append(", salt=");
		builder.append(salt);
		builder.append("]");
		return builder.toString();
	}

}
