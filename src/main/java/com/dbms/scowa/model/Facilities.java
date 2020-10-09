package com.dbms.scowa.model;

public class Facilities{
    private int facilityid;
    private int amountPerHour;
    private String facilityName;

    public void setAmountPerHour(int val){
        this.amountPerHour=val;
    }
    public void setFacilityid(int val){
        this.facilityid=val;
    }
    public void setFacilityName(String val){
        this.facilityName=val;
    }

    public int getFacilityid(){
        return this.facilityid;
    }
    public int getAmountPerHour(){
        return this.amountPerHour;
    }
    public String getFacilityName(){
        return this.facilityName;
    }
}