package com.dbms.scowa.service;

import com.dbms.scowa.model.User;

public interface UserService{
    void save(User user);
    public User findByid(int id);
}