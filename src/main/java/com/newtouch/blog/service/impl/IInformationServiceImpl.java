package com.newtouch.blog.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.newtouch.blog.dao.InformationDao;
import com.newtouch.blog.entity.Information;
import com.newtouch.blog.service.IInformationService;

@Service("iInformationService")  
public class IInformationServiceImpl implements IInformationService {
	 @Resource    
	private InformationDao informationDao; 

	public Information getInformationById(String Id) {
		// TODO Auto-generated method stub
		return informationDao.queryByPrimaryKey(Id);
	}

	public void insertInformationr(Information information) {
		// TODO Auto-generated method stub
		informationDao.insert(information);
	}
	public List<Information> getAllInformation() {

		return informationDao.listAll();
	}

	public void addInformation(Information information) {		
		informationDao.insert(information);
	}

}
