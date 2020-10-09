package com.dbms.scowa.model;

public class Apartment{
    private int apartmentid;
    private int towerid;
    private String towerName;
    private String flatName;
    
    public void setApartmentid(int val){
        this.apartmentid=val;
    }
    public void setTowerid(int val){
        this.towerid=val;
    }
    public void setTowerName(String val){
        this.towerName=val;
    }
    public void setFlatName(String val){
        this.flatName=val;
    }

    public String getFlatName(){
        return this.flatName;
    }
    public int getApartmentid(){
        return this.apartmentid;
    }
    public int getTowerid(){
        return this.towerid;
    }
    public String getTowerName(){
        return this.towerName;
    }
}