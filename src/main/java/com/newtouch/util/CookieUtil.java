package com.newtouch.util;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CookieUtil
{
	private CookieUtil()
	{
		// nothing
	}
	

	/**
	 * 
	 * @param response
	 *            HttpServletResponse对象
	 * @param key
	 *            cookie的key值
	 * @param value
	 *            cookie的值
	 */
	public static void setCookie(HttpServletResponse response, String key, String value)
	{
		Cookie cookie = new Cookie(key, value);
		response.addCookie(cookie);
	}
	

	/**
	 * 
	 * @param request
	 *            HttpServletRequest对象
	 * @param key
	 *            cookie的key值
	 * @return cookie的值
	 */
	public static String getCookie(HttpServletRequest request, String key)
	{
		String result = "";
		Cookie[] cookies = request.getCookies();
		Cookie sCookie = null;
		String svalue = null;
		String sname = null;
		for (int i = 0; i < cookies.length; i++)
		{
			sCookie = cookies[i];
			svalue = sCookie.getValue();
			sname = sCookie.getName();
			if (sname.equals(key))
			{
				result = svalue;
				break;
			}
		}
		return result;
	}
	
	
	/**
	 * 通过HttpServletRequest返回IP地址
	 * @param request HttpServletRequest
	 * @return ip String
	 * @throws Exception
	 */
	public static String getIpAddr(HttpServletRequest request) throws Exception {
	    String ip = request.getHeader("x-forwarded-for");
	    if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
	        ip = request.getHeader("Proxy-Client-IP");
	    }
	    if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
	        ip = request.getHeader("WL-Proxy-Client-IP");
	    }
	    if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
	        ip = request.getHeader("HTTP_CLIENT_IP");
	    }
	    if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
	        ip = request.getHeader("HTTP_X_FORWARDED_FOR");
	    }
	    if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
	        ip = request.getRemoteAddr();
	    }
	    return ip;
	}
}
