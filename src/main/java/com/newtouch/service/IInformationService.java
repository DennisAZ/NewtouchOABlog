package com.newtouch.service;

import java.util.List;

import com.newtouch.entity.Information;

public interface IInformationService {
    public Information getInformationById(String Id);    
    
    public void insertInformationr(Information information);    
    
    public void addInformation(Information information);    
    
    public List<Information> getAllInformation();  
}
