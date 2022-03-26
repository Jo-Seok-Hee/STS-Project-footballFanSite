package com.sucky.project.football;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class newsController {
	
	
	@GetMapping("/news/detail")
	public String newsDetail() {
		
		return "/news/newsView";
	}
}
