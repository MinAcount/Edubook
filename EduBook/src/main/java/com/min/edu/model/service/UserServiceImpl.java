package com.min.edu.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.min.edu.model.mapper.IUserDao;
import com.min.edu.vo.UserVo;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class UserServiceImpl implements IUserService {
	
	@Autowired
	private IUserDao dao;

	@Override
	public UserVo login(UserVo vo) {
		log.info("UserServiceImpl login : {}" , vo);
		return dao.login(vo);
	}

}
