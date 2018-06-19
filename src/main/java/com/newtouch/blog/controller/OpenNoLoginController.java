package com.newtouch.blog.controller;

import java.text.ParseException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.newtouch.common.util.CookieUtil;
import com.newtouch.common.util.DateUtil;



@Controller
@RequestMapping("/openJsp")
public class OpenNoLoginController { 
	@RequestMapping("/openIndex")
    public String openIndex(HttpServletRequest request,Model model){ 
		try {
			System.out.println(CookieUtil.getIpAddr(request) + DateUtil.getCurrDate() +"index");
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return "index";    
    }
	@RequestMapping("/about-us")
    public String aboutUs(HttpServletRequest request,Model model){ 
		try {
			System.out.println("访问ID地址："+CookieUtil.getIpAddr(request) + "访问时间："+DateUtil.getCurrDate() +"about-us");
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return "about-us";    
    }
	@RequestMapping("/services")
    public String services(HttpServletRequest request,Model model){ 
		try {
			System.out.println("访问ID地址："+CookieUtil.getIpAddr(request) + "访问时间："+DateUtil.getCurrDate() +"services");
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return "services";    
    }
	@RequestMapping("/portfolio")
    public String portfolio(HttpServletRequest request,Model model){ 
		try {
			System.out.println("访问ID地址："+CookieUtil.getIpAddr(request) + "访问时间："+DateUtil.getCurrDate() +"portfolio");
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return "portfolio";    
    }
	@RequestMapping("/contact-us")
    public String contactUs(HttpServletRequest request,Model model){ 
		try {
			System.out.println("访问ID地址："+CookieUtil.getIpAddr(request) + "访问时间："+DateUtil.getCurrDate() +"contact-us");
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return "contact-us";    
    }
}
