package com.zerostress.userinfo.service;

import com.zerostress.command.UserInfoVO;

public interface UserInfoService {

	public int getJoin(UserInfoVO vo);
	public int getLogin(UserInfoVO vo);
	
}
