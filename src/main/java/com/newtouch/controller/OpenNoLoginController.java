package com.newtouch.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("/openJsp")
public class OpenNoLoginController { 
	@RequestMapping("/openIndex")
    public String openIndex(HttpServletRequest request,Model model){ 
		System.out.println("index");
        return "index";    
    }
	@RequestMapping("/about-us")
    public String aboutUs(HttpServletRequest request,Model model){ 
		System.out.println("about-us");
        return "about-us";    
    }
	@RequestMapping("/services")
    public String services(HttpServletRequest request,Model model){ 
		System.out.println("services");
        return "services";    
    }
	@RequestMapping("/portfolio")
    public String portfolio(HttpServletRequest request,Model model){ 
		System.out.println("portfolio");
        return "portfolio";    
    }
	@RequestMapping("/contact-us")
    public String contactUs(HttpServletRequest request,Model model){ 
		System.out.println("contact-us");
        return "contact-us";    
    }
}
