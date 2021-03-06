package com.springs.study.service;

import java.util.List;

import com.springs.study.vo.UserInfo;

public interface UserInfoService {

	public List<UserInfo> selectUserInfoList(UserInfo ui);

	public UserInfo selectUserInfo(Integer uinum);

	public int insertUserInfo(UserInfo ui);

	public int updateUserInfo(UserInfo ui);

	public int deleteUserInfo(Integer uinum);

}
