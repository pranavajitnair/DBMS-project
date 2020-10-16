package com.dbms.scowa.dao;

import javax.transaction.Transactional;

import com.dbms.scowa.model.Maintenance;
import com.dbms.scowa.model.Owner;

import org.apache.catalina.valves.JDBCAccessLogValve;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Transactional
@Repository
public class Maintenancedao{

    @Autowired
    private JdbcTemplate jt;

    public void save(String year,String month,int amount,int ownerid,int apartmentid){
        String sql="insert into Maintenance(year,month,amount,ownerid,apartmentid,paid) values(?,?,?,?,?,?)";
        jt.update(sql,year,month,amount,ownerid,apartmentid,false);
    }

    public void update(boolean paid, int maintenanceid){
        String sql="update Maintenance set paid=? where maintenanceid=?";
        jt.update(sql,paid,maintenanceid);
    }

    public List<Maintenance> findByownerid(int ownerid){
        String sql="select * from Maintenance where ownerid="+Integer.toString(ownerid);
        return jt.query(sql,new RowMapper<Maintenance>(){
            public Maintenance mapRow(ResultSet row,int rowNum) throws SQLException{
                Maintenance o=new Maintenance();
                o.setAmount(row.getInt("amount"));
                o.setApartmentid(row.getInt("apartmentid"));
                o.setMaintenanceid(row.getInt("maintenanceid"));
                o.setMonth(row.getString("month"));
                o.setPaid(row.getBoolean("paid"));
                o.setYear(row.getString("year"));
                o.setOwnerid(row.getInt("ownerid"));

                return o;
            }
        });
    }

    public List<Maintenance> findByDate(String month,String year){
        String sql="select * from Maintenance where month like "+"'"+month+"'"+" and year like "+"'"+year+"'";
        return jt.query(sql,new RowMapper<Maintenance>(){
            public Maintenance mapRow(ResultSet row,int rowNum) throws SQLException{
                Maintenance o=new Maintenance();
                o.setAmount(row.getInt("amount"));
                o.setApartmentid(row.getInt("apartmentid"));
                o.setMaintenanceid(row.getInt("maintenanceid"));
                o.setMonth(row.getString("month"));
                o.setPaid(row.getBoolean("paid"));
                o.setYear(row.getString("year"));
                o.setOwnerid(row.getInt("ownerid"));

                return o;
            }
        });
    }


    public List<Owner> findByDateNotPaid(String month,String year){
        String sql="select * from Owner where ownerid not in(select ownerid from Maintenance where month like "+"'"+month+"'"+" and year like "+"'"+year+"'"+")";
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