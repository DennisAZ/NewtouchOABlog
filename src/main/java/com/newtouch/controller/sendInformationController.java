package com.newtouch.controller;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.newtouch.entity.Information;
import com.newtouch.service.IInformationService;
import com.newtouch.util.StringUtil;


@Controller
@RequestMapping("/send")
public class sendInformationController {
    @Resource    
    private IInformationService iInformationService;    
	@RequestMapping("/information")    
    public String addInformation(HttpServletRequest request,Model model){    
		String name=String.valueOf(request.getParameter("name"));
		String email=String.valueOf(request.getParameter("email"));
		String Phone=String.valueOf(request.getParameter("Phone"));
		String companyName=String.valueOf(request.getParameter("companyName"));
		String subject=String.valueOf(request.getParameter("subject"));
		String message=String.valueOf(request.getParameter("message"));
		
		Information information = new Information();
		information.setId(StringUtil.getUUID());
		information.setName(name);
		information.setEmail(email);
		information.setPhone(Phone);
		information.setCompanyname(companyName);
		information.setSubject(subject);
		information.setStatus("1");
		information.setMessage(message);
		iInformationService.addInformation(information);
        return "contact-us";    
    } 
}
