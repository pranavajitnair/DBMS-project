package com.dbms.scowa.model;

public class Resident{
    private int residentid;
    private String residentName;
    private boolean isOwner;
    private String code;
    private int userid;
    private int apartmentid;
    private int numOfMembers;
    private String phone;

    public void setResidentid(int val){
        this.residentid=val;
    }
    public void setResidentName(String val){
        this.residentName=val;
    }
    public void setIsOwner(boolean val){
        this.isOwner=val;
    }
    public void setCode(String val){
        this.code=val;
    }
    public void setUserid(int val){
        this.userid=val;
    }
    public void setApartmentid(int val){
        this.apartmentid=val;
    }
    public void setNumOfMembers(int val){
        this.numOfMembers=val;
    }
    public void setPhone(String val){
        this.phone=val;
    }

    public int getResidentid(){
        return this.residentid;
    }
    public String getResidentName(){
        return this.residentName;
    }
    public boolean getIsOwner(){
        return this.isOwner;   
    }
    public String getCode(){
        return this.code;
    }
    public int getUserid(){
        return this.userid;
    }
    public int getApartmentid(){
        return this.apartmentid;
    }
    public int getNumOfMembers(){
        return this.numOfMembers;
    }
    public String getPhone(){
        return this.phone;
    }
}