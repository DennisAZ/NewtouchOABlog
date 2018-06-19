package com.newtouch.blog.service.impl;

import java.util.List;    

import javax.annotation.Resource;    
    
import org.springframework.stereotype.Service;

import com.newtouch.blog.dao.IUserDao;
import com.newtouch.blog.entity.User;
import com.newtouch.blog.service.IUserService;    
    
    
    
@Service("userService")    
public class UserServiceImpl implements IUserService {    
    @Resource    
    private IUserDao userDao;    
        
    public User getUserById(int userId) {    
        return userDao.queryByPrimaryKey(userId);    
    }    
    
    public void insertUser(User user) {    
        userDao.insert(user);   
    }    
    
    public void addUser(User user) {    
    	
        userDao.insert(user);
    }    
    
    public List<User> getAllUser() {    
        return userDao.listAll();    
    }    
    
}    
