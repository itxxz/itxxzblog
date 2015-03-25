package com.itxxz.blog.user.service;

import org.apache.shiro.crypto.RandomNumberGenerator;
import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;
import org.springframework.stereotype.Service;

import com.itxxz.blog.user.entity.User;

@Service
public class PasswordHelper {

	private RandomNumberGenerator randomNumberGenerator = new SecureRandomNumberGenerator();

	private String algorithmName = "md5";
	private int hashIterations = 2;

	public void setRandomNumberGenerator(
			RandomNumberGenerator randomNumberGenerator) {
		this.randomNumberGenerator = randomNumberGenerator;
	}

	public void setAlgorithmName(String algorithmName) {
		this.algorithmName = algorithmName;
	}

	public void setHashIterations(int hashIterations) {
		this.hashIterations = hashIterations;
	}

	public void encryptPassword(User user) {

		user.setSalt(randomNumberGenerator.nextBytes().toHex());

		String newPassword = new SimpleHash(algorithmName, user.getPwd(),
				ByteSource.Util.bytes(user.getCredentialsSalt()),
				hashIterations).toHex();
		user.setPwd(newPassword);

	}

	public static void main(String[] args) {
		User user = new User();
		user.setAccount("admin");
		user.setPwd("123");
		PasswordHelper p = new PasswordHelper();
		p.encryptPassword(user);
	}
}
