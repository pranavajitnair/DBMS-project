package com.dbms.scowa.model;

public class Account{
    private String code;
    private String pincode;
    private String street;
    private String city;
    private String state;
    private String bankName;
    private int balance;
    
    public void setCode(String val){
        this.code=val;
    }
    public void setPincode(String val){
        this.pincode=val;
    }
    public void setStreet(String val){
        this.street=val;
    }
    public void setCity(String val){
        this.city=val;
    }
    public void setState(String val){
        this.state=val;
    }
    public void setBankName(String val){
        this.bankName=val;
    }
    public void setBalance(int val){
        this.balance=val;
    }

    public String getCode(){
        return this.code;
    }
    public String getPincode(){
        return this.pincode;
    }
    public String getStreet(){
        return this.street;
    }
    public String getCity(){
        return this.city;
    }
    public String getState(){
        return this.state;
    }
    public String getBankName(){
        return this.bankName;
    }
    public int getBalance(){
        return this.balance;
    }
}