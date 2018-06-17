package com.newtouch.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.newtouch.dao.InformationDao;
import com.newtouch.entity.Information;
import com.newtouch.service.IInformationService;

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
		informationDao.insertInformation(information);
	}

	public void addInformation(Information information) {
		// TODO Auto-generated method stub
		informationDao.insertInformation(information);
	}

	public List<Information> getAllInformation() {
		// TODO Auto-generated method stub
		return informationDao.getAllInformation();
	}

}
