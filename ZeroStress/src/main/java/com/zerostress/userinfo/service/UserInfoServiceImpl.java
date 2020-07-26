package com.zerostress.userinfo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zerostress.command.UserInfoVO;
import com.zerostress.userinfo.mapper.UserInfoMapper;

@Service("userinfoService")
public class UserInfoServiceImpl implements UserInfoService {

	@Autowired
	private UserInfoMapper userinfoMapper;
	

	@Override
	public int getJoin(UserInfoVO vo) {
		
		return userinfoMapper.getJoin(vo);
	}


	@Override
	public int getLogin(UserInfoVO vo) {
		
		return userinfoMapper.getLogin(vo);
	}

	
	
}
