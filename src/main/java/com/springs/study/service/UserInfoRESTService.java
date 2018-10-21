package com.springs.study.service;

import java.util.List;

import com.springs.study.vo.UserInfo;

public interface UserInfoRESTService {

	public List<UserInfo> selectUserList(UserInfo ui);
	public UserInfo selectUser(Integer uinum);

	public int insertUserList(UserInfo ui);

	public int updateUserList(List<UserInfo> uiList);
	public int updateUser(UserInfo ui);

	public int deleteUserList(List<Integer> uinum);
	public int deleteUser(Integer uinum);

}
