package edu.etime.peasantdataplan.common;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

/**
 * 编码格式的过滤器
 * @author zw
 *
 */
public class EncodeFilter implements Filter {

	private String encode = "utf-8";
	private String contenttype = "text/html";
	
	public void doFilter(ServletRequest req, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest)req;
		request.setCharacterEncoding(encode);
		response.setCharacterEncoding(encode);
		if(request.getHeader("Accept") == null){
			response.setContentType(contenttype);
		}
		chain.doFilter(request, response);
	}

	
	public void init(FilterConfig config) throws ServletException {
		encode = config.getInitParameter("encode");
		contenttype = config.getInitParameter("contenttype");
	}

}
