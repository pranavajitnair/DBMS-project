package com.dbms.scowa.model;

public class Booking{
    private int bookingid;
    private String phone;
    private int amount;
    private String date;
    private String startTime;
    private String endTime;
    private String purposeOfBooking;
    private int facilityid;
    private int residentid;

    public void setBookingid(int val){
        this.bookingid=val;
    }
    public void setPhone(String val){
        this.phone=val;
    }
    public void setAmount(int val){
        this.amount=val;
    }
    public void setDate(String val){
        this.date=val;
    }
    public void setStartTime(String val){
        this.startTime=val;
    }
    public void setEndTime(String val){
        this.endTime=val;
    }

    public void setPurposeOfBooking(String val){
        this.purposeOfBooking=val;
    }
    public void setResidentid(int val){
        this.residentid=val;
    }
    public void setFacilityid(int val){
        this.facilityid=val;
    }

    public int getBookingid(){
        return this.bookingid;
    }
    public String getPhone(){
        return this.phone;
    }
    public int getAmount(){
        return this.amount;
    }
    public String getDate(){
        return this.date;
    }
    public String getStartTime(){
        return this.startTime;
    }
    public String getEndTime(){
        return this.endTime;
    }
    public String getPurposeOfBooking(){
        return this.purposeOfBooking;
    }
    public int getResidentid(){
        return this.residentid;
    }
    public int getFacilityid(){
        return this.facilityid;
    }    
}