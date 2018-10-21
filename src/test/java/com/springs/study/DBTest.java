package com.springs.study;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
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
	private SqlSession ss;

	// 다중 리스트 조회 단위테스트
	@Test
	public void test1_select_List() {
		List<UserInfo> rList = ss.selectList("SQL.LEVELINFO.selectLevelInfoList");
		assertEquals(3, rList.size());
	}
}
