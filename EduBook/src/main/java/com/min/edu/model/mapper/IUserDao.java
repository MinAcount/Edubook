package com.min.edu.model.mapper;

import com.min.edu.vo.UserVo;

// interface dao 기능정의 
public interface IUserDao {

	public UserVo login(UserVo vo);
}
