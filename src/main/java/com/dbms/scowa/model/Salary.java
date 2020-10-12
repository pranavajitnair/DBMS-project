package com.dbms.scowa.model;

public class Salary{
    private int serviceid;
    private int vendorid;
    private int salary;
    private int transactionid;
    private String monthyear;

    public void setServiceid(int val){
        this.serviceid=val;
    }
    public void setVendorid(int val){
        this.vendorid=val;
    }
    public void setSalary(int val){
        this.salary=val;
    }
    public void setTransactionid(int val){
        this.transactionid=val;
    }
    public void setMonthyear(String val){
        this.monthyear=val;
    }

    public int getServiceid(){
        return this.serviceid;
    }
    public int getVendorid(){
        return this.vendorid;
    }
    public int getSalary(){
        return this.salary;
    }
    public int getTransactionid(){
        return this.transactionid;
    }
    public String getMonthyear(){
        return this.monthyear;
    }
}