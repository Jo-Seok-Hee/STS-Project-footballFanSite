package com.sucky.project.football.vo;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sucky.project.football.dao.postDAO;
import com.sucky.project.football.model.Post;


@Service
public class postVO {
	
	@Autowired
	private postDAO postdao;

	public int addPost(int userId, String nickname, String title, String content) {
		
		return postdao.insertPost(userId, nickname, title, content);
	
	}
	
	public List<Post> getPostList() {
		
		return postdao.selectPostList();
	}
	
	public Post getPost(int postId) {
		
		return postdao.selectPost(postId);
	}
}
