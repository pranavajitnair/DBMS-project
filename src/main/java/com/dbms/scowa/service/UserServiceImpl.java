package com.dbms.scowa.service;

import com.dbms.scowa.dao.Userdao;
import com.dbms.scowa.model.User;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;


@Service
public class UserServiceImpl implements UserService{
    @Autowired
    private Userdao userRepository;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;
    
    @Override
    public void save(User user){
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        userRepository.save(user.getUsername(),user.getPassword(),user.getUserid(),user.getUserType());
    }

    @Override
    public User findByid(int id){
        return userRepository.findByid(id);
    }

    @Override
    public void updatepass(int id,String pass){
        String password=bCryptPasswordEncoder.encode(pass);
        userRepository.update(id, password);
    }

}