package com.sucky.project.football;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import com.sucky.project.football.model.Post;
import com.sucky.project.football.model.Rank;
import com.sucky.project.football.vo.postVO;
import com.sucky.project.football.vo.rankVO;

@Controller
public class postController {
	
	@Autowired
	private postVO postvo;
	
	@Autowired
	private rankVO rankvo;
	
	@ModelAttribute("rank")
	public List<Rank> rank(){
		
		int leagueId = 1;
		
		List<Rank> rank = rankvo.getRankList(leagueId);
		
		return rank;
		
	}

	@GetMapping("/post/freeboard")
	public String freeboard(Model model) {
		
		List<Post> postList = postvo.getPostList();
		
		model.addAttribute("postList", postList);
		
		return "/post/freeboard";
	}
	
	@GetMapping("/post/postUp")
	public String postUp() {
	
		return "/post/postUp";
	}
	
	@GetMapping("/post/postView")
	public String postView(
			@RequestParam("postId") int postId
			, Model model
			) {
		
		Post post = postvo.getPost(postId);
		
		model.addAttribute("post", post);
		
		return "/post/postView";
	}
	

	

}
