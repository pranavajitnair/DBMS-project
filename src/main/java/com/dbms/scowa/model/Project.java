package com.dbms.scowa.model;

public class Project{
    private int projectid;
    private int fund;
    private int vendorid;
    private String startTime;
    private String endTime;
    private String description;

    public void setStartTime(String val){
        this.startTime=val;
    }
    public void setEndTime(String val){
        this.endTime=val;
    }
    public void setDescription(String val){
        this.description=val;
    }
    public void setProjectid(int val){
        this.projectid=val;
    }
    public void setVendorid(int val){
        this.vendorid=val;
    }
    public void setFund(int val){
        this.fund=val;
    }

    public String getStartTime(){
        return this.startTime;
    }
    public String getEndTime(){
        return this.endTime;
    }
    public String getDescription(){
        return this.description;
    }
    public int getProjectid(){
        return this.projectid;
    }
    public int getVendorid(){
        return this.vendorid;
    }
    public int getFund(){
        return this.fund;
    }
}