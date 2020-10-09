package com.dbms.scowa.model;

public class Paid{
    private int projectid;
    private int vendorid;
    private int transactionid;
    private int amount;

    public void setProjectid(int val){
        this.projectid=val;
    }
    public void setVendorid(int val){
        this.vendorid=val;
    }
    public void setTransactionid(int val){
        this.transactionid=val;
    }
    public void setAmount(int val){
        this.amount=val;
    }

    public int getProjectid(){
        return this.projectid;
    }
    public int getVendorid(){
        return this.vendorid;
    }
    public int getTransactionid(){
        return this.transactionid;
    }
    public int getAmount(){
        return this.amount;
    }
}