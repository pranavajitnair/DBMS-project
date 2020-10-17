package com.dbms.scowa.service;

import com.dbms.scowa.model.User;

public interface UserService{
    public void save(User user);
    public User findByid(int id);
    public void updatepass(int id,String pass);
}