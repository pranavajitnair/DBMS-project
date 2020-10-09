package com.dbms.scowa.model;

public class Role{
    private int userid;
    private int typeid;

    public void setUserid(int id){
        this.userid=id;
    }
    public void SetTypeid(int id){
        this.typeid=id;
    }
    
    public int getUserif(){
        return this.userid;
    }
    public int getTypeid(){
        return this.typeid;
    }
}