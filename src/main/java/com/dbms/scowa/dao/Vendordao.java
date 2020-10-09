package com.dbms.scowa.dao;

import javax.transaction.Transactional;

import com.dbms.scowa.model.Vendor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Transactional
@Repository
public class Vendordao {

    @Autowired
    private JdbcTemplate jt;

    public void save(String name,String phone,String email,String officeDetails,String street,
    String city,String pincode,String state,String code,int monthlyAmount){
        String sql="insert into Vendor(name,phone,email,officeDetails,street,city,pincode,state,code,monthlyAmount) values(?,?,?,?,?,?,?,?,?,?)";
        jt.update(sql,name,phone,email,officeDetails,street,city,pincode,state,code,monthlyAmount);
    }

    public List<Vendor> showall(){
        String sql="select * from Vendor";
        return jt.query(sql,new RowMapper<Vendor>(){
            public Vendor mapRow(ResultSet row,int rowNum) throws SQLException{
                Vendor r=new Vendor();
                r.setCity(row.getString("city"));
                r.setEmail(row.getString("email"));
                r.setMonthlyAmount(row.getInt("monthlyAmount"));
                r.setName(row.getString("name"));
                r.setOfficeDetails(row.getString("officeDetails"));
                r.setCode(row.getString("code"));
                r.setPhone(row.getString("phone"));
                r.setState(row.getString("state"));
                r.setVendorid(row.getInt("vendorid"));
                r.setStreet(row.getString("street"));
                r.setPincode(row.getString("pincode"));

                return r;   
            }
        });
    }

    public void delete(int vendorid){
        String sql="delete from Vendor where vendorid=?";
        jt.update(sql,vendorid);
    }

    public void update(int vendorid,String name,String phone,String email,String officeDetails,String street,
    String city,String pincode,String state,String code,int monthlyAmount){
     String sql="update Vendor set name=?,phone=?,email=?,officeDetails=?,street=?,city=?,pincode=?,state=?,code=?,monthlyAmount=? where vendorid=?";
     jt.update(sql,name,phone,email,officeDetails,street,city,pincode,state,code,monthlyAmount,vendorid);   
    }

    public Vendor findByid(int vendorid){
        String sql="select * from Vendor where vendorid="+Integer.toString(vendorid);
        return jt.queryForObject(sql,new RowMapper<Vendor>(){
            public Vendor mapRow(ResultSet row,int rowNum) throws SQLException{
                Vendor r=new Vendor();
                r.setCity(row.getString("city"));
                r.setEmail(row.getString("email"));
                r.setMonthlyAmount(row.getInt("monthlyAmount"));
                r.setName(row.getString("name"));
                r.setOfficeDetails(row.getString("officeDetails"));
                r.setCode(row.getString("code"));
                r.setPhone(row.getString("phone"));
                r.setState(row.getString("state"));
                r.setVendorid(row.getInt("vendorid"));
                r.setStreet(row.getString("street"));
                r.setPincode(row.getString("pincode"));

                return r;   
            }
        });
    }
}