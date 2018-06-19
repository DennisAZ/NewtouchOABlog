package com.newtouch.blog.service;

import java.util.List;

import com.newtouch.blog.entity.Information;

public interface IInformationService {
    public Information getInformationById(String Id);    
    
    public void insertInformationr(Information information);    
    
    public void addInformation(Information information);    
    
    public List<Information> getAllInformation();  
}
