package com.dbms.scowa.model;

public class ForgotPass {
    private int userid;
    private String url;

    public void setUserid(int val){
        this.userid=val;
    }
    public void setUrl(String val){
        this.url=val;
    }

    public int getUserid(){
        return this.userid;
    }
    public String getUrl(){
        return this.url;
    }
}