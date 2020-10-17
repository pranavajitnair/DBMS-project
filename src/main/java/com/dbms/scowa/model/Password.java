package com.dbms.scowa.model;

public class Password {
    private String op;
    private String np1;
    private String np2;

    public void setOp(String val){
        this.op=val;
    }
    public void setNp1(String val){
        this.np1=val;
    }
    public void setNp2(String val){
        this.np2=val;
    }

    public String getOp(){
        return this.op;
    }
    public String getNp1(){
        return this.np1;
    }
    public String getNp2(){
        return this.np2;
    }
}