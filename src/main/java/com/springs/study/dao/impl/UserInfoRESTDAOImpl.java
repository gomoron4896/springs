package com.springs.study.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springs.study.dao.UserInfoRESTDAO;
import com.springs.study.vo.UserInfo;

@Repository
public class UserInfoRESTDAOImpl implements UserInfoRESTDAO {

	@Autowired
	private SqlSession ss;

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
