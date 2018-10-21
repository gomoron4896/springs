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

public class UserInfoControllerREST {

	@Autowired
	private UserInfoService uis;

	@RequestMapping(value = "/userinfo", method = RequestMethod.GET)
	public @ResponseBody List<UserInfo> selectUserList(@ModelAttribute UserInfo ui) {
		return uis.selectUserList(ui);
	}

	@RequestMapping(value = "/userinfo/{uinum}", method = RequestMethod.GET)
	public @ResponseBody UserInfo selectUser(@PathVariable Integer uinum) {
		return uis.selectUser(uinum);
	}
	
	@RequestMapping(value = "/userinfo", method = RequestMethod.POST)
	@ResponseBody
	public int insertUserList(@RequestBody List<UserInfo> uiList) {
		return uis.insertUserList(uiList);
	}

	@RequestMapping(value = "/userinfo/{uinum}", method = RequestMethod.POST)
	public ResponseEntity error404() {
		ResponseEntity<String> error404 = new ResponseEntity<String>("NOT SURPORTED", HttpStatus.NOT_FOUND);
		return error404;
	}

	@RequestMapping(value = "/userinfo", method = RequestMethod.PUT)
	@ResponseBody
	public int updateUserList(@RequestBody List<UserInfo> uiList) {
		return uis.updateUserList(uiList);
	}
	
	@RequestMapping(value = "/userinfo/{uinum}", method = RequestMethod.PUT)
	@ResponseBody
	public int updateUser(@RequestBody UserInfo ui, @PathVariable Integer uinum) {
		ui.setUinum(uinum);
		return uis.updateUser(ui);
	}
	
	@RequestMapping(value = "/userinfo", method = RequestMethod.DELETE)
	@ResponseBody
	public int deleteUserList(@RequestBody List<Integer> uinumList) {
		return uis.deleteUserList(uinumList);
	}
	
	@RequestMapping(value = "/userinfo/{uinum}", method = RequestMethod.DELETE)
	@ResponseBody
	public int deleteUser(@PathVariable Integer uinum) {
		return uis.deleteUser(uinum);
	}

}
