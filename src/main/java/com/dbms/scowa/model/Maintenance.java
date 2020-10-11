package com.dbms.scowa.model;

public class Maintenance{
    private String month;
    private String year;
    private int maintenanceid;
    private int amount;
    private int ownerid;
    private int apartmentid;

    public void setMaintenanceid(int val){
        this.maintenanceid=val;
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

    public int getMaintenanceid(){
        return this.maintenanceid;
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
}