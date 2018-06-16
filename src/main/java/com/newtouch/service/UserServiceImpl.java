package com.newtouch.service;

import java.util.List;    

import javax.annotation.Resource;    
    
import org.springframework.stereotype.Service;

import com.newtouch.dao.IUserDao;
import com.newtouch.dto.User;    
    
    
    
@Service("userService")    
public class UserServiceImpl implements IUserService {    
    @Resource    
    private IUserDao userDao;    
        
    public User getUserById(int userId) {    
        return userDao.queryByPrimaryKey(userId);    
    }    
    
    public void insertUser(User user) {    
        userDao.insertUser(user);    
    }    
    
    public void addUser(User user) {    
        userDao.insertUser(user);    
    }    
    
    public List<User> getAllUser() {    
        return userDao.getAllUser();    
    }    
    
}    
