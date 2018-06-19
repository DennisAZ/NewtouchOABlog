package com.newtouch.common.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

/**
 * 
 * @author AZ
 */
public class CookieUtil {
	private CookieUtil() {
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
	public static void setCookie(HttpServletResponse response, String key, String value) {
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
	public static String getCookie(HttpServletRequest request, String key) {
		String result = "";
		Cookie[] cookies = request.getCookies();
		Cookie sCookie = null;
		String svalue = null;
		String sname = null;
		for (int i = 0; i < cookies.length; i++) {
			sCookie = cookies[i];
			svalue = sCookie.getValue();
			sname = sCookie.getName();
			if (sname.equals(key)) {
				result = svalue;
				break;
			}
		}
		return result;
	}

	/**
	 * 通过HttpServletRequest返回IP地址
	 * 
	 * @param request
	 *            HttpServletRequest
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

	/**
	 * 创建链接
	 * 
	 * @param url
	 * @return
	 * @throws IOException
	 * @throws JSONException
	 */
	private static JSONObject readJsonFromUrl(String url) throws IOException, JSONException {
		InputStream is = new URL(url).openStream();
		try {
			BufferedReader rd = new BufferedReader(new InputStreamReader(is, Charset.forName("UTF-8")));
			String jsonText = readAll(rd);
			JSONObject json = new JSONObject(jsonText);
			return json;
		} finally {
			is.close();
		}
	}

	/**
	 * 读取
	 * 
	 * @param rd
	 * @return
	 * @throws IOException
	 */
	private static String readAll(Reader rd) throws IOException {
		StringBuilder sb = new StringBuilder();
		int cp;
		while ((cp = rd.read()) != -1) {
			sb.append((char) cp);
		}
		return sb.toString();
	}

	 /**
     * 百度获取城市信息
     * @param ip
     * @return
     * @throws JSONException
     * @throws IOException
     */
	public static String baiduGetCityCode(String ip) throws JSONException, IOException{

        
         //百度ak，自己去申请就可以
         String ak="WDgjKEv0nZOCqYBSL4EVNV0Uq7pDdTmM";
         //这里调用百度的ip定位api服务 详见 http://api.map.baidu.com/lbsapi/cloud/ip-location-api.htm
         JSONObject json = readJsonFromUrl("http://api.map.baidu.com/location/ip?ip="+ip+"&ak="+ak+"&coor=bd09ll");
         Object obj = ((JSONObject) json.get("content")).get("address_detail");
         String s=obj.toString();           
         JSONObject j = new JSONObject(s);
         int city_code=(int) j.get("city_code");
         String code=String.valueOf(city_code);
         return code;
    }
	
	/**
	 * 高德获取城市信息
	 * 
	 * @return
	 * @throws JSONException
	 * @throws IOException
	 */
	public static String guideGetCityCode(String ip) throws JSONException, IOException {
		// 高德key
		String key = "";
		JSONObject json = readJsonFromUrl("http://restapi.amap.com/v3/ip?ip=" + ip +"&key=6c7f1bbe013da3e5f967b38fbf4c0e7d");
		String province = (String) json.get("province");
		String city = (String) json.get("city");
		String rectangle = (String) json.get("rectangle");
		String adcode = (String) json.get("adcode");
		return adcode;
	}

	public static void main(String[] args) {
		String ip = "61.151.226.85";
		try {
			System.out.println(CookieUtil.guideGetCityCode(ip));
		} catch (JSONException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
