package com.dbms.scowa.model;

public class User{
    private String username;
    private int userid;
    private String password;
    private String userType;

    public int getUserid(){
        return this.userid;
    }
    public String getUsername(){
        return this.username;
    }
    public String getPassword(){
        return this.password;
    }
    public String getUserType(){
        return this.userType;
    }
    
    public void setUserType(String type){
        this.userType=type;
    }
    public void setUserid(int id){
        this.userid=id;
    }
    public void setPassword(String pass){
        this.password=pass;
    }
    public void setUsername(String name){
        this.username=name;
    }
}