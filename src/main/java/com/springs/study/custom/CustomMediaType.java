package com.springs.study.custom;

import java.nio.charset.Charset;

import org.springframework.http.MediaType;

public class CustomMediaType extends MediaType{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public CustomMediaType(MediaType other, Charset charset) {
		super(other, charset);
		// TODO Auto-generated constructor stub
	}
	

	/**
	 * Public constant media type for {@code text/html}.
	 */
	public final static MediaType TEXT_HTML_UTF8;

	/**
	 * A String equivalent of {@link MediaType#TEXT_HTML}.
	 */
	public final static String TEXT_HTML_VALUE_UTF8 = TEXT_HTML + ";charset=utf-8";
	
	
	static {
		TEXT_HTML_UTF8 = valueOf(TEXT_HTML_VALUE_UTF8);
	}
}
