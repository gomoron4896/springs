package com.springs.study.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.springs.study.vo.TicketInfo;

/**
 * Handles requests for the application home page.
 */
@Controller
public class TicketController {

	// private static final Logger logger =
	// LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private SqlSession ss;

	/*
	 * @Autowired private TicketInfo tkti;
	 */

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/ticketinfo", method = RequestMethod.GET)
	@ResponseBody
	public List<TicketInfo> selectTicketInfoList(TicketInfo tkti) {
		// logger.info("THIS IS SELECT.LIST");

		// System.out.println(ss.selectList("SQL.TKTINFO.selectTKTList"));

		return ss.selectList("SQL.TKTINFO.selectTKTList");
	}

	@RequestMapping(value = "/ticketinfo/search", method = RequestMethod.GET)
	@ResponseBody
	public List<TicketInfo> selectTicketInfoSearch(@RequestParam("params") String params) {
		ObjectMapper mapper = new ObjectMapper();
		TicketInfo tkti = null;
		try {
			tkti = mapper.readValue(params, TicketInfo.class);
		} catch (JsonParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			
		}

		System.out.println(tkti);

		return ss.selectList("SQL.TKTINFO.selectTKTList", tkti);
	}

	@RequestMapping(value = "/ticketinfo/", method = RequestMethod.POST)
	@ResponseBody
	public int insertTicketInfo(@RequestBody TicketInfo tkti) {
		System.out.println("안녕 난 인서트, 받아온 값 볼래? - " + tkti);
		return ss.insert("SQL.TKTINFO.insertTKT", tkti);
	}

	@RequestMapping(value = "/ticketinfo/{tkt_id}", method = RequestMethod.PUT)
	@ResponseBody
	public int updateTicketInfo(@PathVariable Integer tkt_id, @RequestBody TicketInfo tkti) {
		tkti.setTkt_id(tkt_id);
		System.out.println("안녕 난 업데이트, 받아온 값 볼래? - " + tkti);
		return ss.update("SQL.TKTINFO.updateTKT", tkti);
	}

	@RequestMapping(value = "/ticketinfo/", method = RequestMethod.DELETE)
	@ResponseBody
	public int deleteTicketInfo(@RequestBody TicketInfo tkti) {
		System.out.println("안녕 난 딜리트, 받아온 값 볼래? - " + tkti);
		return ss.delete("SQL.TKTINFO.deleteTKT", tkti);
	}
	
	
	
	@RequestMapping(value = "/ticketinfo/error", method = RequestMethod.POST)
	@ResponseBody
	public int error(@RequestBody TicketInfo tkti) {
		// logger.info("THIS IS SELECT.LIST");

		// System.out.println(ss.selectList("SQL.TKTINFO.selectTKTList"));
		int rCnt = 0;
		rCnt += ss.delete("SQL.TKTINFO.deleteTKT" , tkti);
		
		rCnt += ss.insert("SQL.TKTINFO.selectERROR", tkti);
		return rCnt;
	}

}
