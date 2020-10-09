package com.dbms.scowa.model;

public class Vendor{
    private String name;
    private String phone;
    private String email;
    private String officeDetails;
    private String street;
    private String city;
    private String pincode;
    private String state;
    private int vendorid;
    private String code;
    private int monthlyAmount;
    
    public void setPhone(String val){
        this.phone=val;
    }
    public void setEmail(String val){
        this.email=val;
    }
    public void setOfficeDetails(String val){
        this.officeDetails=val;
    }
    public void setCity(String val){
        this.city=val;
    }
    public void setPincode(String val){
        this.pincode=val;
    }
    public void setState(String val){
        this.state=val;
    }
    public void setName(String val){
        this.name=val;
    }
    public void setCode(String val){
        this.code=val;
    }
    public void setStreet(String val){
        this.street=val;
    }
    public void setMonthlyAmount(int val){
        this.monthlyAmount=val;
    }
    public void setVendorid(int val){
        this.vendorid=val;
    }

    public String getPhone(){
        return this.phone;
    }
    public String getEmail(){
        return this.email;
    }
    public String getOfficeDetails(){
        return this.officeDetails;
    }
    public String getCity(){
        return this.city;
    }
    public String getPincode(){
        return this.pincode;
    }
    public String getState(){
        return this.state;
    }
    public String getName(){
        return this.name;
    }
    public String getCode(){
        return this.code;
    }
    public String getStreet(){
        return this.street;
    }
    public int getMonthlyAmount(){
        return this.monthlyAmount;
    }
    public int getVendorid(){
        return this.vendorid;
    }
}