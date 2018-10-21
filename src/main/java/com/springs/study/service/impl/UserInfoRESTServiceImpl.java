package com.springs.study.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springs.study.dao.UserInfoDAO;
import com.springs.study.service.UserInfoRESTService;
import com.springs.study.service.UserInfoService;
import com.springs.study.vo.UserInfo;

@Service
public class UserInfoRESTServiceImpl implements UserInfoRESTService {

	@Override
	public List<UserInfo> selectUserList(UserInfo ui) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserInfo selectUser(Integer uinum) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertUserList(UserInfo ui) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateUserList(List<UserInfo> uiList) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateUser(UserInfo ui) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteUserList(List<Integer> uinum) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteUser(Integer uinum) {
		// TODO Auto-generated method stub
		return 0;
	}

}
