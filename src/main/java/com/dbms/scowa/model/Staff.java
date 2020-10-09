package com.dbms.scowa.model;

public class Staff{
    private String name;
    private String phone;
    private String houseDetails;
    private String street;
    private int userid;
    private int staffid;
    private String dob;
    private String joinDate;
    private String code;

    public void setName(String val){
        this.name=val;
    }
    public void setPhone(String val){
        this.phone=val;
    }
    public void setHouseDetails(String val){
        this.houseDetails=val;
    }
    public void setStreet(String val){
        this.street=val;
    }
    public void setUserid(int val){
        this.userid=val;
    }
    public void setStaffid(int val){
        this.staffid=val;
    }
    public void setDob(String val){
        this.dob=val;
    }
    public void setJoinDate(String val){
        this.joinDate=val;
    }
    public void setCode(String val){
        this.code=val;
    }

    public String getName(){
        return this.name;
    }
    public String getPhone(){
        return this.phone;
    }
    public String getHouseDetails(){
        return this.houseDetails;
    }
    public String getStreet(){
        return this.street;
    }
    public int getUserid(){
        return this.userid;
    }
    public int getStaffid(){
        return this.staffid;
    }
    public String getDob(){
        return this.dob;
    }
    public String getJoinDate(){
        return this.joinDate;
    }
    public String getCode(){
        return this.code;
    }
}