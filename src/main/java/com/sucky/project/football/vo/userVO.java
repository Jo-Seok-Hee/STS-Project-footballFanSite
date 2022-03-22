package com.sucky.project.football.vo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sucky.project.common.EncryptUtils;
import com.sucky.project.football.dao.userDAO;
import com.sucky.project.football.model.User;

@Service
public class userVO {
	
	@Autowired
	private userDAO userdao;
	
	public int addUser(String loginId, String password, String name, String nickname, String phoneNumber) {
		
		String encPassword = EncryptUtils.md5(password); 
		
		return userdao.insertUser(loginId, encPassword, name, nickname, phoneNumber);
	}
	
	public User getUser(String loginId, String password) {
		
		String encPassword = EncryptUtils.md5(password);
		
		return userdao.selectUser(loginId, encPassword);
	}
	
	public boolean loginIdDuplicated(String loginId) {
		
		int count = userdao.isDuplicatedId(loginId);
		
		if(count == 1) {
			return true;
		} else {
			return false;
		}
	}
}
