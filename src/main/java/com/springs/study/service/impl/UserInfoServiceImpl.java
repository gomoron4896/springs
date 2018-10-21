package com.springs.study.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springs.study.dao.UserInfoDAO;
import com.springs.study.service.UserInfoService;
import com.springs.study.vo.UserInfo;

@Service
public class UserInfoServiceImpl implements UserInfoService {

	@Autowired
	private UserInfoDAO uidao;

	@Override
	public List<UserInfo> selectUserInfoList(UserInfo ui) {
		// TODO Auto-generated method stub
		return uidao.selectUserInfoList(ui);
	}

	@Override
	public UserInfo selectUserInfo(Integer uinum) {
		// TODO Auto-generated method stub
		return uidao.selectUserInfo(uinum);
	}

	@Override
	public int insertUserInfo(UserInfo ui) {
		// TODO Auto-generated method stub
		return uidao.insertUserInfo(ui);
	}

	@Override
	public int updateUserInfo(UserInfo ui) {
		// TODO Auto-generated method stub
		return uidao.updateUserInfo(ui);
	}

	@Override
	public int deleteUserInfo(Integer uinum) {
		return uidao.deleteUserInfo(uinum);
	}

}
