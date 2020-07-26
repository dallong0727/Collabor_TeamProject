package com.zerostress.userinfo.mapper;

import com.zerostress.command.UserInfoVO;

public interface UserInfoMapper {

	public int getJoin(UserInfoVO vo);
	public int getLogin(UserInfoVO vo);
	
}
