package com.sucky.project.football.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.sucky.project.football.model.Post;

@Repository
public interface postDAO {
	
	public int insertPost(
			@Param("userId") int userId
			, @Param("nickname") String nickname
			, @Param("title") String title
			, @Param("content") String content	
			);
	
	public List<Post> selectPostList();
	
	public Post selectPost(@Param("postId")int postId);
}
