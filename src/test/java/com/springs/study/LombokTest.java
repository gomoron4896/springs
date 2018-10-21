package com.springs.study;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class LombokTest {

	@Test
	public void test() {
		TestVo tvo = new TestVo();
		tvo.setTest("abc");
		tvo.setT1("t1");
		tvo.setT2("t2");
		tvo.setT3("t3");
		tvo.setT4("t4");
		tvo.setT5("t5");
		tvo.setT6("t6");
		log.info("tvo=>{}",tvo);
		assertEquals(tvo.getTest(), "abc");
	}

}
