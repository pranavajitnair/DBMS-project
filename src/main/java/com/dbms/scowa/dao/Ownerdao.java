package com.dbms.scowa.dao;

import javax.transaction.Transactional;
import java.util.List;

import com.dbms.scowa.model.Owner;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import java.sql.ResultSet;
import java.sql.SQLException;

@Transactional
@Repository
public class Ownerdao{
    @Autowired
    JdbcTemplate jt;

    public void save(int userid,String date){
        String sql="insert into Owner(userid,dateOfPurchase) values(?,?)";
        jt.update(sql,userid,date);
    }

    public Owner findByid(int id){
        String sql="select * from Owner where Owner.userid="+Integer.toString(id);
        return jt.queryForObject(sql,new RowMapper<Owner>(){
            public Owner mapRow(ResultSet row,int rowNum) throws SQLException{
                Owner o=new Owner();
                o.setOwnerid(row.getInt("ownerid"));
                o.setOwnerName(row.getString("ownerName"));
                o.setDateOfPurchase(row.getString("dateOfPurchase"));
                o.setCode(row.getString("code"));
                o.setUserid(row.getInt("userid"));
                o.setHouseDetails(row.getString("houseDetails"));
                o.setStreet(row.getString("street"));
                o.setState(row.getString("state"));
                o.setPincode(row.getString("pincode"));
                o.setCountry(row.getString("country"));
                o.setPhone(row.getString("phone"));
                o.setApartmentid(row.getInt("apartmentid"));
                o.setIsResident(row.getBoolean("isResident"));
                o.setCity(row.getString("city"));

                return o;
            }
        });
    }

    public void update(String city,String ownerName,String dateOfPurchase,String code,
    String houseDetails,String street,String state, String pincode,
    String country,String phone,int apartmentid,boolean isResident,int userid){
        String sql="update Owner set state=?,city=?,houseDetails=?,ownerName=?,dateOfPurchase=?,street=?,country=?,pincode=?,phone=?,code=?,apartmentid=?,isResident=? where userid=?";
        if(apartmentid==-1){
            jt.update(sql,state,city,houseDetails,ownerName,dateOfPurchase,street,country,
            pincode,phone,code,null,isResident,userid);
        }
        else{
            jt.update(sql,state,city,houseDetails,ownerName,dateOfPurchase,street,country,
            pincode,phone,code,apartmentid,isResident,userid);
        }
        
    }

    public void update1(int userid,boolean isResdient){
        String sql="update Owner set isResident=? where userid=?"; 
        jt.update(sql, isResdient,userid);  
    }

    public void delete(int id){
        String sql="delete from Owner where userid=?";
        jt.update(sql,id);
    }

    public List<Owner> showall(){
        String sql="select * from Owner";
        return jt.query(sql,new RowMapper<Owner>(){
            public Owner mapRow(ResultSet row,int rowNum) throws SQLException{
                Owner o=new Owner();
                o.setOwnerid(row.getInt("ownerid"));
                o.setOwnerName(row.getString("ownerName"));
                o.setDateOfPurchase(row.getString("dateOfPurchase"));
                o.setCode(row.getString("code"));
                o.setUserid(row.getInt("userid"));
                o.setHouseDetails(row.getString("houseDetails"));
                o.setStreet(row.getString("street"));
                o.setState(row.getString("state"));
                o.setPincode(row.getString("pincode"));
                o.setCountry(row.getString("country"));
                o.setPhone(row.getString("phone"));
                o.setApartmentid(row.getInt("apartmentid"));
                o.setIsResident(row.getBoolean("isResident"));
                o.setCity(row.getString("city"));

                return o;
            }
        });
    }
}