package com.dbms.scowa.model;

public class Guest{
    private String name;
    private String purposeOfVisit;
    private String entryTime;
    private String exitTime;
    private String phone;
    private int guestid;
    private String category;
    private String visisted;
    private String date;

    public void setName(String val){
        this.name=val;
    }
    public void setPurposeOfVisit(String val){
        this.purposeOfVisit=val;
    }
    public void setEntryTime(String val){
        this.entryTime=val;
    }
    public void setExitTime(String val){
        this.exitTime=val;
    }
    public void setPhone(String val){
        this.phone=val;
    }
    public void setGuestid(int val){
        this.guestid=val;
    }
    public void setCategory(String val){
        this.category=val;
    }
    public void setVisited(String val){
        this.visisted=val;
    }
    public void setDate(String val){
        this.date=val;
    }

    public String getDate(){
        return this.date;
    }
    public String getVisited(){
        return this.visisted;
    }
    public String getName(){
        return this.name;
    }
    public String getPurposeOfVisit(){
        return this.purposeOfVisit;
    }
    public String getEntryTime(){
        return this.entryTime;
    }
    public String getExitTime(){
        return this.exitTime;
    }
    public String getPhone(){
        return this.phone;
    }
    public int getGuestid(){
        return this.guestid;
    }
    public String getCategory(){
        return this.category;
    }
}