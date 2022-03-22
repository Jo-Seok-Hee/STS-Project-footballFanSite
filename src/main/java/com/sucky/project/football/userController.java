package com.sucky.project.football;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import com.sucky.project.football.model.Rank;
import com.sucky.project.football.vo.rankVO;

@Controller
public class userController {
	
	@Autowired
	private rankVO rankvo;
	
	@ModelAttribute("rank")
	public List<Rank> rank(
			
			){
		
		int leagueId = 1;
		
		List<Rank> rank = rankvo.getRankList(leagueId);
		

		
		return rank;
		
	}
	
	@GetMapping("/footballweare")
	public String main(Model model) {
		

		
		return "mainView";
	}
	
	
	@GetMapping("/user/login")
	public String login() {
		return "/user/loginView";
	}
	
	@GetMapping("/user/regist")
	public String regist() {
		return "/user/registView";
	}
	
	@GetMapping("/user/signout")
	public String logout(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		session.removeAttribute("userId");
		session.removeAttribute("userLoginId");
		session.removeAttribute("userName");
		session.removeAttribute("userNickname");
		
		return "redirect:/footballweare";
	}
}
