package com.springs.study.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.springs.study.service.UserInfoService;
import com.springs.study.vo.UserInfo;

@Controller
public class UserInfoController {

	@Autowired
	private UserInfoService uis;

	@RequestMapping(value = "/userinfo", method = RequestMethod.GET)
	public @ResponseBody List<UserInfo> selectUserList(@ModelAttribute UserInfo ui) {
		return uis.selectUserInfoList(ui);
	}

	@RequestMapping(value = "/userinfo/{uinum}", method = RequestMethod.GET)
	public @ResponseBody UserInfo selectUser(@PathVariable Integer uinum) {
		return uis.selectUserInfo(uinum);
	}
	
	@RequestMapping(value = "/userinfo", method = RequestMethod.POST)
	@ResponseBody
	public int insertUserInfoList(@RequestBody UserInfo ui) {
		return uis.insertUserInfo(ui);
	}

	@RequestMapping(value = "/userinfo/{uinum}", method = RequestMethod.POST)
	public ResponseEntity error404() {
		System.out.println("HI ERROR");
		return new ResponseEntity<Object>(HttpStatus.NOT_FOUND);
	}

	@RequestMapping(value = "/userinfo/{uinum}", method = RequestMethod.PUT)
	@ResponseBody
	public int updateUserInfo(@RequestBody UserInfo ui, @PathVariable Integer uinum) {
		ui.setUinum(uinum);
		return uis.updateUserInfo(ui);
	}
	

	@RequestMapping(value = "/userinfo/{uinum}", method = RequestMethod.DELETE)
	@ResponseBody
	public int deleteUserInfo(@PathVariable int uinum) {
		return uis.deleteUserInfo(uinum);
	}

}
