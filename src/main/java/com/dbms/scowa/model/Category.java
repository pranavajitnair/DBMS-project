package com.dbms.scowa.model;

public class Category{
    private int categoryid;
    private String categoryName;

    public void setCategoryid(int val){
        this.categoryid=val;
    }
    public void setCategoryName(String val){
        this.categoryName=val;
    }

    public String getCategoryName(){
        return this.categoryName;
    }
    public int getCategoryid(){
        return this.categoryid;
    }
}