package com.newtouch.service;

import java.util.List;

import com.newtouch.entity.User;    
   
public interface IUserService {    
        
    public User getUserById(int userId);    
    
    public void insertUser(User user);    
    
    public void addUser(User user);    
    
    public List<User> getAllUser();    
} 
