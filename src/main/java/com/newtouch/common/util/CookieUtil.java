package com.newtouch.common.util;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.HttpURLConnection;
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
		StringBuffer buffer = new StringBuffer();
		JSONObject json = readJsonFromUrl("http://restapi.amap.com/v3/ip?ip=" + ip +"&key=6c7f1bbe013da3e5f967b38fbf4c0e7d");
		String province = (String) json.get("province");
		String city = (String) json.get("city");
		String rectangle = (String) json.get("rectangle");
		String adcode = (String) json.get("adcode");
		buffer.append("地区："+province).append(city).append("=====>").append("坐标："+rectangle).append("=====>").append("地区编码："+adcode);
		return buffer.toString();
	}

	
	
	/**
	 * 获取地址
	 * 
	 * @param params
	 * @param encoding
	 * @return
	 * @throws Exception
	 */
	public static String getAddress(String params, String encoding) throws Exception {

		String path = "http://ip.taobao.com/service/getIpInfo.php";

		String returnStr = getRs(path, params, encoding);

		JSONObject json = null;

		if (returnStr != null) {

			json = new JSONObject(returnStr);

			if ("0".equals(json.get("code").toString())) {

				StringBuffer buffer = new StringBuffer();

				buffer.append(decodeUnicode(json.optJSONObject("data").getString("country"))+"--");//国家

			    buffer.append(decodeUnicode(json.optJSONObject("data").getString("area"))+"--");//地区

				buffer.append(decodeUnicode(json.optJSONObject("data").getString("region"))+"--");// 省份

				buffer.append(decodeUnicode(json.optJSONObject("data").getString("city"))+"--");// 市区

				buffer.append(decodeUnicode(json.optJSONObject("data").getString("county")+"--"));// 地区

				buffer.append(decodeUnicode(json.optJSONObject("data").getString("isp"))+"--");// ISP公司
				return buffer.toString();
			} else {
				return "获取地址失败?";
			}

		}

		return null;

	}

	/**
	 * 从url获取结果
	 * 
	 * @param path
	 * @param params
	 * @param encoding
	 * @return
	 */
	public static String getRs(String path, String params, String encoding) {

		URL url = null;

		HttpURLConnection connection = null;

		try {

			url = new URL(path);
			connection = (HttpURLConnection) url.openConnection();// 新建连接实例
			connection.setConnectTimeout(2000);// 设置连接超时时间，单位毫�?
			connection.setReadTimeout(2000);// 设置读取数据超时时间，单位毫�?
			connection.setDoInput(true);// 是否打开输出�? true|false
			connection.setDoOutput(true);// 是否打开输入流true|false
			connection.setRequestMethod("POST");// 提交方法POST|GET
			connection.setUseCaches(false);// 是否缓存true|false
			connection.connect();// 打开连接端口
			DataOutputStream out = new DataOutputStream(connection.getOutputStream());
			out.writeBytes(params);
			out.flush();
			out.close();
			BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream(), encoding));
			StringBuffer buffer = new StringBuffer();
			String line = "";
			while ((line = reader.readLine()) != null) {
				buffer.append(line);
			}
			reader.close();
			return buffer.toString();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			connection.disconnect();// 关闭连接
		}
		return null;
	}

	/**
	 * 字符转码
	 * 
	 * @param theString
	 * @return
	 */
	public static String decodeUnicode(String theString) {
		char aChar;
		int len = theString.length();
		StringBuffer buffer = new StringBuffer(len);
		for (int i = 0; i < len;) {
			aChar = theString.charAt(i++);
			if (aChar == '\\') {
				aChar = theString.charAt(i++);
				if (aChar == 'u') {
					int val = 0;
					for (int j = 0; j < 4; j++) {
						aChar = theString.charAt(i++);
						switch (aChar) {
						case '0':
						case '1':
						case '2':
						case '3':
						case '4':
						case '5':
						case '6':
						case '7':
						case '8':
						case '9':
							val = (val << 4) + aChar - '0';
							break;
						case 'a':
						case 'b':
						case 'c':
						case 'd':
						case 'e':
						case 'f':
							val = (val << 4) + 10 + aChar - 'a';
							break;
						case 'A':
						case 'B':
						case 'C':
						case 'D':
						case 'E':
						case 'F':
							val = (val << 4) + 10 + aChar - 'A';
							break;
						default:
							throw new IllegalArgumentException(
									"Malformed      encoding.");
						}
					}

					buffer.append((char) val);
				} else {
					if (aChar == 't') {
						aChar = '\t';
					}
					if (aChar == 'r') {
						aChar = '\r';
					}
					if (aChar == 'n') {
						aChar = '\n';
					}
					if (aChar == 'f') {
						aChar = '\f';
					}
					buffer.append(aChar);
				}
			} else {
				buffer.append(aChar);
			}
		}
		return buffer.toString();
	}
	
	public static void main(String[] args) {
		String ip = "118.213.176.78";

		try {
			System.out.println("============" + CookieUtil.getAddress("ip=" + ip, "utf-8"));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
