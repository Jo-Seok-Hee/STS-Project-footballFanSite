package com.sucky.project.football;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class footballController {
	
	@GetMapping("/footballweare")
	public String main() {
		return "mainView";
	}
	
	@GetMapping("/user/login")
	public String login() {
		return "loginView";
	}
	
	@GetMapping("/user/regist")
	public String regist() {
		return "registView";
	}
}
