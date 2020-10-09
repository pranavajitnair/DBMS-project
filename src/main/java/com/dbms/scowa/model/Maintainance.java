package com.dbms.scowa.model;

public class Maintainance{
    private String month;
    private String year;
    private String code;
    private int maintainanceid;
    private int amount;
    private int ownerid;
    private int apartmentid;

    public void setMaintainanceid(int val){
        this.maintainanceid=val;
    }
    public void setAmount(int val){
        this.amount=val;
    }
    public void setOwnerid(int val){
        this.ownerid=val;
    }
    public void setMonth(String val){
        this.month=val;
    }
    public void setApartmentid(int val){
        this.apartmentid=val;
    }
    public void setYear(String val){
        this.year=val;
    }
    public void setCode(String val){
        this.code=val;
    }

    public int getMaintainanceid(){
        return this.maintainanceid;
    }
    public int getOwnerid(){
        return this.ownerid;
    }
    public int getApartmentid(){
        return this.apartmentid;
    }
    public int getAmount(){
        return this.amount;
    }
    public String getMonth(){
        return this.month;
    }
    public String getYear(){
        return this.year;
    }
    public String getCode(){
        return this.code;
    }
}