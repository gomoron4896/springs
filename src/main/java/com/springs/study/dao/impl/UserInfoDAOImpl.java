package com.springs.study.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springs.study.dao.UserInfoDAO;
import com.springs.study.vo.UserInfo;

@Repository
public class UserInfoDAOImpl implements UserInfoDAO {

	@Autowired
	private SqlSession ss;

	@Override
	public List<UserInfo> selectUserInfoList(UserInfo ui) {
		// TODO Auto-generated method stub
		return ss.selectList("SQL.USERINFO.selectUserInfoList", ui);
	}

	@Override
	public UserInfo selectUserInfo(Integer uinum) {
		// TODO Auto-generated method stub
		return ss.selectOne("SQL.USERINFO.selectUserInfo", uinum);
	}

	@Override
	public int insertUserInfo(UserInfo ui) {
		// TODO Auto-generated method stub
		return ss.insert("SQL.USERINFO.insertUserInfo", ui);
	}

	@Override
	public int updateUserInfo(UserInfo ui) {
		// TODO Auto-generated method stub
		return ss.update("SQL.USERINFO.updateUserInfo", ui);
	}

	@Override
	public int deleteUserInfo(Integer uinum) {
		// TODO Auto-generated method stub
		return ss.delete("SQL.USERINFO.deleteUserInfo", uinum);
	}

}
