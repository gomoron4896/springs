package com.springs.study.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.sql.SQLDataException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.net.ssl.HttpsURLConnection;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.springs.study.custom.CustomMediaType;

@ControllerAdvice
public class TestAdvise {
	
	private static final Logger logger = LoggerFactory.getLogger(TestAdvise.class);
	
	@ExceptionHandler(value=SQLDataException.class)
	public @ResponseBody ResponseEntity<String> errorHandle(HttpServletResponse res,SQLDataException se) {
		logger.error("sql error =>{}", se);
		Map<String, Map<String, Map<String, String>>> tranziMap = papagoTranziMap(se.getMessage().toString());
		String resBodyText = tranziMap.get("message").get("result").get("translatedText");
		System.out.println("리스폰스바디!!!" + resBodyText);
		HttpHeaders httpheader = new HttpHeaders();
		httpheader.setContentType(CustomMediaType.TEXT_HTML_UTF8);
		return new ResponseEntity<String>(resBodyText, httpheader, HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	
	public Map<String, Map<String, Map<String, String>>> papagoTranziMap(String errormsg) {
		String clientId = "PAJB3lOr1FswKu03wzvF";
		String clientSecret = "Sjnkx94vbg";
		
		HttpsURLConnection huc = null;
		BufferedReader br = null;
		
		try {
			URL url = new URL("https://openapi.naver.com/v1/papago/n2mt");
			huc = (HttpsURLConnection) url.openConnection();
			huc.setRequestMethod("POST");
			huc.setRequestProperty("X-Naver-Client-Id", clientId);
			huc.setRequestProperty("X-Naver-Client-Secret", clientSecret);
			String param = "source=en&target=ko&text=" + errormsg;
			huc.setDoOutput(true);
			DataOutputStream dos = new DataOutputStream(huc.getOutputStream());
			dos.writeBytes(param);
			dos.flush();
			dos.close();
			
			int status = huc.getResponseCode();
			
			if(status == 200) {
				br = new BufferedReader(new InputStreamReader(huc.getInputStream()));
			} else if  (status != 200) {
				br = new BufferedReader(new InputStreamReader(huc.getInputStream()));
				throw new IOException(br.toString());
			}
			String result;
			StringBuffer sb = new StringBuffer();
			while((result=br.readLine())!=null) {
				sb.append(result);
			}
			br.close();
			
			ObjectMapper objMapper = new ObjectMapper();
			Map<String, Map<String, Map<String, String>>> tranziMap = objMapper.readValue(sb.toString(), HashMap.class);
			
			return tranziMap;
			
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
}


