package com.min.edu.model.mapper;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.min.edu.vo.UserVo;
// interface를 구현한 dao impl mybatis 실행

import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
public class UserDaoImpl implements IUserDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public UserVo login(UserVo vo) {
		log.info("UserDaoImpl login {}" , vo);
		return sqlSession.selectOne("com.min.edu.model.mapper.UserDaoImpl.login",vo);
	}

}
