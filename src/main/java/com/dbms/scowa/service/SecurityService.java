package com.dbms.scowa.service;

public interface SecurityService{
    public String findLoggedInUserid();

    public void autoLogin(int id, String password);
}