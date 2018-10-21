package com.springs.study.controller;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.springs.study.vo.LevelInfo;

@Controller
public class LevelInfoController {

	@Autowired
	private SqlSession ss;

	@RequestMapping(value = "/levelinfos", method = RequestMethod.GET)
	public @ResponseBody List<LevelInfo> selectUserList(@ModelAttribute LevelInfo ui) {
		return ss.selectList("SQL.LEVELINFO.selectLevelInfoList");
	}

	@RequestMapping(value = "/levelinfos/{linum}", method = RequestMethod.GET)
	public @ResponseBody LevelInfo selectUser(@PathVariable Integer linum) {
		return ss.selectOne("SQL.LEVELINFO.selectLevelInfo", linum);
	}
	
	@RequestMapping(value = "/levelinfos/{linum}", method = RequestMethod.POST)
	@ResponseBody
	public int insertLevelInfo(@RequestBody LevelInfo li, @PathVariable Integer linum) {
		li.setLinum(linum);
		return ss.insert("SQL.LEVELINFO.insertLevelInfo", li);
	}
	
	@RequestMapping(value = "/levelinfos/{linum}", method = RequestMethod.PUT)
	@ResponseBody
	public int updateUserInfo(@RequestBody LevelInfo li, @PathVariable Integer linum) {
		li.setLinum(linum);
		return ss.update("SQL.LEVELINFO.updateLevelInfo",li);
	}
	

}
