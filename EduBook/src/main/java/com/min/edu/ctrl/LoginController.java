package com.min.edu.ctrl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

import com.min.edu.model.service.IUserService;
import com.min.edu.vo.UserVo;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class LoginController {
	
	@Autowired
	private IUserService service;
	
	// 로그인 login.do LoginController 작성 Model , HttpSession 값 저장
	@PostMapping(value = "/login.do")
	public String login(UserVo vo, 
						HttpSession session ,
						Model model,
						HttpServletRequest request) {
		log.info("LoginController login 요청받은 값  : {}",vo);
		
		return "afterLogin";
	} 

}
