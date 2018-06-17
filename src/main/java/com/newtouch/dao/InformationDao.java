package com.newtouch.dao;

import java.util.List;
import java.util.Map;

import com.newtouch.entity.Information;

public interface InformationDao {
	public int insertSelective(Information record);
    
    public Information queryByPrimaryKey(String id);    
    
    public List<Information> queryInformationByBatch(Map<String,Object> params);    
        
    public int insertInformation(Information user);    
        
    public void insertInformationByBatch(List<Information> list);    
        
    public void deleteByPrimaryKey(Integer id);    
        
    public void delteInformationByBatch(Map<String,Object> params);    
        
    public void updateByPrimaryKey(Integer id);    
    
    public List<Information> getAllInformation();  
}