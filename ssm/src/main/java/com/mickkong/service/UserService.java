package com.mickkong.service;

import com.mickkong.pojo.User;


/**
 * 用户业务处理类
 * 
 * @author djx
 *
 * 
 */
public interface UserService {
	
	int login(String username, String password);
	
	int register(User user);
	
	int findPwd(User user);
	
	int update(User user);

	User findById (String uid);
	
	User findByUsername (String uid);
}
