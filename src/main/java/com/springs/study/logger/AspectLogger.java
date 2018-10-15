package com.springs.study.logger;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

@Service
@Aspect
public class AspectLogger {
	private static final Logger logger = LoggerFactory.getLogger(AspectLogger.class); 
	private long sTime;
	
	@Before("execution(* com.springs.study.controller.URIController.*(..))")
	public void beforeURILog(JoinPoint jp) {
		logger.debug("jp=>{}", jp);
		sTime = System.currentTimeMillis();
	}
	
	@Around("execution(* com.springs.study.controller.URIController.*(..))")
	public Object AroundURILog(ProceedingJoinPoint pjp) throws Throwable {
		String sigName = pjp.getSignature().getName();
		String targetName = pjp.getTarget().toString();
		Object[] params = pjp.getArgs();
		logger.debug("{}.{}({})", new Object[] {targetName, sigName, params});
		Object obj = pjp.proceed();
		logger.debug("result=>{}", obj);
		return obj;
	}
	
	@After("execution(* com.springs.study.controller.URIController.*(..))")
	public void afterURILog(JoinPoint jp) {
		logger.debug("jp=>{}", jp);
		logger.debug("execution time=>{}ms", (System.currentTimeMillis() - sTime));
	}
	
	@Before("execution(* com.springs.study.controller.URIController.*(..))")
	public void beforeTKTLog(JoinPoint jp) {
		logger.debug("jp=>{}", jp);
		sTime = System.currentTimeMillis();
	}
	
	@Around("execution(* com.springs.study.controller.URIController.*(..))")
	public Object AroundTKTLog(ProceedingJoinPoint pjp) throws Throwable {
		String sigName = pjp.getSignature().getName();
		String targetName = pjp.getTarget().toString();
		Object[] params = pjp.getArgs();
		logger.debug("{}.{}({})", new Object[] {targetName, sigName, params});
		Object obj = pjp.proceed();
		logger.debug("result=>{}", obj);
		return obj;
	}
	
	@After("execution(* com.springs.study.controller.URIController.*(..))")
	public void afterTKTLog(JoinPoint jp) {
		logger.debug("jp=>{}", jp);
		logger.debug("execution time=>{}ms", (System.currentTimeMillis() - sTime));
	}
	
	
}
