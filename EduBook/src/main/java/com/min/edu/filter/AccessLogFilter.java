package com.min.edu.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;

import lombok.extern.slf4j.Slf4j;


@Slf4j
public class AccessLogFilter implements Filter {



	@Override
	public void destroy() {
		log.info("====== AccessLogFilter destroy =======");
	
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		log.info("====== AccessLogFilter init =======");
	}
	
	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {

		HttpServletRequest req = (HttpServletRequest)arg0;
		String url = StringUtils.defaultIfEmpty(req.getRequestURL().toString(),	"URL 없음");
		String QueryString = StringUtils.defaultIfEmpty(req.getQueryString(), "");
		
		log.info("Client 요청주소 \n\t {}", url+QueryString);
		
		arg2.doFilter(arg0, arg1);
		
	}

}
