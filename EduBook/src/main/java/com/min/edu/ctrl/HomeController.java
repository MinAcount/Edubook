package com.min.edu.ctrl;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class HomeController {
	
	@RequestMapping(value = "/main.do", method = RequestMethod.GET)
	public String main() {
		log.info("HomeConroller main.do 호출");
		
		return "home";
	}
	
	
}
