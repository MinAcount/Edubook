package com.test.edu;

import static org.junit.Assert.*;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.min.edu.vo.UserVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class EduBook_JunitTest {
	
	@Autowired
	private ApplicationContext context;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

//	@Test
	public void test() {
		SqlSession session =  context.getBean("sqlSessionTemplate", SqlSession.class);
				assertNotNull(session);
	}
	@Test
	public void login() {
		Map<String, Object> map = new HashMap<String, Object>(){{
			
			put("id","Kokoball");
			put("password","Kokoball");
		}};
		
		UserVo uVo = 
		sqlSession.selectOne("com.min.edu.model.mapper.UserDaoImpl.login",map);
		System.out.println(uVo);
		assertNotNull(uVo);
	}

}
