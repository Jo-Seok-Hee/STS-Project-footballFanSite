package com.sucky.project.football.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.sucky.project.football.model.User;

@Repository
public interface userDAO {
	
	public int insertUser(
			@Param("loginId") String loginId
			, @Param("password") String password
			, @Param("name") String name
			, @Param("nickname") String nickname
			, @Param("phoneNumber") String phoneNumber
			);
	
	public User selectUser(
			@Param("loginId") String loginId
			, @Param("password") String password
			
			);
	
	public int isDuplicatedId(@Param("loginId") String loginId);
}
