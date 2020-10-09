package com.dbms.scowa.dao;

import javax.transaction.Transactional;

import com.dbms.scowa.model.Booking;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;


@Repository
@Transactional
public class Bookingdao {

    @Autowired
    private JdbcTemplate jt;

    public void save(String date,int facilityid,int residentid){
        String sql="insert into Booking(date,facilityid,residentid) values(?,?,?)";
        jt.update(sql,date,facilityid,residentid);
    }

    public List<Booking> showall(){
        String sql="select * from Booking";
        return jt.query(sql,new RowMapper<Booking>(){
            public Booking mapRow(ResultSet row,int rowNum) throws SQLException{
                Booking o=new Booking();
                o.setAmount(row.getInt("amount"));
                o.setBookingid(row.getInt("bookingid"));
                o.setDate(row.getString("date"));
                o.setEndTime(row.getString("endTime"));
                o.setStartTime(row.getString("startTime"));
                o.setPhone(row.getString("phone"));
                o.setFacilityid(row.getInt("facilityid"));
                o.setResidentid(row.getInt("residentid"));
                o.setPurposeOfBooking(row.getString("purposeOfBooking"));

                return o;
            }
        });
    }

    public List<Booking> find(int facilityid,int mon,int yer){
        String month=Integer.toString(mon);
        String year=Integer.toString(yer);
        if(mon<10) month="0"+month;
        year="%/"+month+"/"+year;

        String sql="select * from Booking where facilityid="+Integer.toString(facilityid)+" and date like "+"'"+year+"'";
        return jt.query(sql,new RowMapper<Booking>(){
            public Booking mapRow(ResultSet row,int rowNum) throws SQLException{
                Booking o=new Booking();
                o.setAmount(row.getInt("amount"));
                o.setBookingid(row.getInt("bookingid"));
                o.setDate(row.getString("date"));
                o.setEndTime(row.getString("endTime"));
                o.setStartTime(row.getString("startTime"));
                o.setPhone(row.getString("phone"));
                o.setFacilityid(row.getInt("facilityid"));
                o.setResidentid(row.getInt("residentid"));
                o.setPurposeOfBooking(row.getString("purposeOfBooking"));

                return o;
            }
        });
    }

    public Booking findByValues(int facilityid, int residentid, String date){
        String sql="select * from Booking where facilityid="+Integer.toString(facilityid)+" and residentid="+Integer.toString(residentid)+" and date like "+"'"+date+"'";
        return jt.queryForObject(sql, new RowMapper<Booking>(){
            public Booking mapRow(ResultSet row,int rowNum) throws SQLException{
                Booking o=new Booking();
                o.setAmount(row.getInt("amount"));
                o.setBookingid(row.getInt("bookingid"));
                o.setDate(row.getString("date"));
                o.setEndTime(row.getString("endTime"));
                o.setStartTime(row.getString("startTime"));
                o.setPhone(row.getString("phone"));
                o.setFacilityid(row.getInt("facilityid"));
                o.setResidentid(row.getInt("residentid"));
                o.setPurposeOfBooking(row.getString("purposeOfBooking"));

                return o;
            }
        });
    }

    public Booking findByid(int bookingid){
        String sql="select * from Booking where bookingid="+Integer.toString(bookingid);
        return jt.queryForObject(sql, new RowMapper<Booking>(){
            public Booking mapRow(ResultSet row,int rowNum) throws SQLException{
                Booking o=new Booking();
                o.setAmount(row.getInt("amount"));
                o.setBookingid(row.getInt("bookingid"));
                o.setDate(row.getString("date"));
                o.setEndTime(row.getString("endTime"));
                o.setStartTime(row.getString("startTime"));
                o.setPhone(row.getString("phone"));
                o.setFacilityid(row.getInt("facilityid"));
                o.setResidentid(row.getInt("residentid"));
                o.setPurposeOfBooking(row.getString("purposeOfBooking"));

                return o;
            }
        });
    }

    public void update(int bookingid, int amount, String startTime,String endTime, String phone,String purposeOfBooking){
        String sql="update Booking set amount=?,startTime=?, endTime=?, phone=?, purposeOfBooking=? where bookingid=?";
        jt.update(sql,amount,startTime,endTime,phone,purposeOfBooking,bookingid);
    }
}