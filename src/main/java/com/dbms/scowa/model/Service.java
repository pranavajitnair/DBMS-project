package com.dbms.scowa.model;

public class Service{

    private int serviceid;
    private int fund;
    private int monthlyAmount;
    private int vendorid;
    private String name;
    private String description;
    private String startTime;
    private String endTime;
    private int numOfPeople;

    public void setServiceid(int val){
        this.serviceid=val;
    }
    public void setFund(int val){
        this.fund=val;
    }
    public void setMonthlyAmount(int val){
        this.monthlyAmount=val;
    }
    public void setVendorid(int val){
        this.vendorid=val;
    }
    public void setNumOfPeople(int val){
        this.numOfPeople=val;
    }
    public void setName(String val){
        this.name=val;
    }
    public void setDescription(String val){
        this.description=val;
    }
    public void setStartTime(String val){
        this.startTime=val;
    }
    public void setEndTime(String val){
        this.endTime=val;
    }

    public int getServiceid(){
        return this.serviceid;
    }
    public int getFund(){
        return this.fund;
    }
    public int getMonthlyAmount(){
        return this.monthlyAmount;
    }
    public int getVendorid(){
        return this.vendorid;
    }
    public int getNumOfPeople(){
        return this.numOfPeople;
    }
    public String getName(){
        return this.name;
    }
    public String getDescription(){
        return this.description;
    }
    public String getStartTime(){
        return this.startTime;
    }
    public String getEndTime(){
        return this.endTime;
    }
}