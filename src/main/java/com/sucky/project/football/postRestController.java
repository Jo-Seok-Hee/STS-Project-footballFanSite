package com.sucky.project.football;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.sucky.project.football.model.Post;
import com.sucky.project.football.vo.postVO;

@RestController
public class postRestController {
	
	@Autowired
	private postVO postvo;
	
	@PostMapping("/post/postUpload")
	public Map<String, String> postUpload(
			HttpServletRequest request
			, @RequestParam("title") String title
			, @RequestParam("content") String content
			
			) {
		
		HttpSession session = request.getSession();
		
		int userId = (Integer)session.getAttribute("userId");
		String nickname = (String)session.getAttribute("userNickname");
		
		int count = postvo.addPost(userId, nickname, title, content);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
	}

}
