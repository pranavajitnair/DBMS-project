package com.dbms.scowa.model;

public class Salary{
    private int serviceid;
    private int vendorid;
    private int salary;
    private int transactionid;
    private String month;

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
    public void setMonth(String val){
        this.month=val;
    }

    public int setServiceid(){
        return this.serviceid;
    }
    public int setVendorid(){
        return this.vendorid;
    }
    public int setSalary(){
        return this.salary;
    }
    public int setTransactionid(){
        return this.transactionid;
    }
    public String setMonth(){
        return this.month;
    }
}