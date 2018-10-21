package com.springs.study;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import java.util.List;

import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.springs.study.controller.UserInfoController;
import com.springs.study.dao.UserInfoDAO;
import com.springs.study.service.UserInfoService;
import com.springs.study.vo.UserInfo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class DBTest {
	
	@Autowired
	private UserInfoController uic;
	
	@Autowired
	private UserInfoService uis;
	
	@Autowired
	private UserInfoDAO uidao;

	// 다중 리스트 조회 단위테스트
	@Test
	public void test1_select_List_DAO() {
		List<UserInfo> rList = uidao.selectUserInfoList(new UserInfo());
		assertEquals(4, rList.size());
	}
	
	@Test
	public void test2_select_List_Service() {
		List<UserInfo> rList = uis.selectUserInfoList(new UserInfo());
		assertEquals(4, rList.size());
	}
	
	@Test
	public void test3_select_List_Controller() {
		List<UserInfo> rList = uic.selectUserList(new UserInfo());
		assertEquals(4, rList.size());
	}
	
	// 단일 조회 (PK 검색결과 존재) 단위테스트
	@Test
	public void test4_select_One_PKExist_DAO() {
		UserInfo ui = uidao.selectUserInfo(1);
		assertNotNull(ui);
	}
	
	@Test
	public void test5_select_One_PKExist_Service() {
		UserInfo ui = uis.selectUserInfo(1);
		assertNotNull(ui);
	}
	
	@Test
	public void test6_select_One_PKExist_Controller() {
		UserInfo ui = uic.selectUser(1);
		assertNotNull(ui);
	}
	
	// 단일 조회 (PK 검색결과 없음) 단위테스트
	@Test
	public void test7_select_One_PKEmpty_DAO() {
		UserInfo ui = uidao.selectUserInfo(0);
		assertNull(ui);
	}
	
	@Test
	public void test8_select_One_PKEmpty_Service() {
		UserInfo ui = uis.selectUserInfo(0);
		assertNull(ui);
	}
	
	@Test
	public void test9_select_One_PKEmpty_Controller() {
		UserInfo ui = uic.selectUser(0);
		assertNull(ui);
	}	

}
