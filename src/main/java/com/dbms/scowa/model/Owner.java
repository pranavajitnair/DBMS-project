package com.dbms.scowa.model;

public class Owner{
    private int ownerid;
    private String ownerName;
    private String phone;
    private String houseDetails;
    private String street;
    private String city;
    private String state;
    private String country;
    private String pincode;
    private int userid;
    private String dateOfPurchase;
    private String code;
    private int apartmentid;
    private boolean isResident;

    public void setOwnerid(int val){
        this.ownerid=val;
    }
    public void setOwnerName(String val){
        this.ownerName=val;
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
    public void setCity(String val){
        this.city=val;
    }
    public void setState(String val){
        this.state=val;
    }
    public void setCountry(String val){
        this.country=val;
    }
    public void setPincode(String val){
        this.pincode=val;
    }
    public void setUserid(int val){
        this.userid=val;
    }
    public void setDateOfPurchase(String val){
        this.dateOfPurchase=val;
    }
    public void setCode(String val){
        this.code=val;
    }
    public void setApartmentid(int val){
        this.apartmentid=val;
    }
    public void setIsResident(boolean val){
        this.isResident=val;
    }
    
    public boolean getIsResident(){
        return this.isResident;
    }
    public int getApartmentid(){
        return this.apartmentid;
    }
    public int getOwnerid(){
        return this.ownerid;
    }
    public String getOwnerName(){
        return this.ownerName;
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
    public String getCity(){
        return this.city;
    }
    public String getState(){
        return this.state;
    }
    public String getCountry(){
        return this.country;
    }
    public String getPincode(){
        return this.pincode;
    }
    public int getUserid(){
        return this.userid;
    }
    public String getDateOfPurchase(){
        return this.dateOfPurchase;
    }
    public String getCode(){
        return this.code;
    }
}