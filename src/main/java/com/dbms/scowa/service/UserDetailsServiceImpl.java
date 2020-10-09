package com.dbms.scowa.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.dbms.scowa.model.User;
import com.dbms.scowa.dao.Userdao;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserDetailsServiceImpl implements UserDetailsService{
    @Autowired
    Userdao userdao;

    @Override
    public UserDetails loadUserByUsername(String id) throws UsernameNotFoundException{
        User user=userdao.findByid(Integer.parseInt(id));
        System.out.println(user.getUsername());
        List<GrantedAuthority> grantList=new ArrayList<GrantedAuthority>();
        GrantedAuthority authority=new SimpleGrantedAuthority(user.getUserType());
        grantList.add(authority);

        UserDetails userDetails=(UserDetails) new org.springframework.security.core.userdetails.User(
            Integer.toString(user.getUserid()), user.getPassword(), grantList);

        return userDetails;
    }
}