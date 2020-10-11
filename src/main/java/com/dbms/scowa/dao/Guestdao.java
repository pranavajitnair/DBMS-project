package com.dbms.scowa.dao;

import javax.transaction.Transactional;

import com.dbms.scowa.model.Guest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.List;

@Transactional
@Repository
public class Guestdao {

    @Autowired
    private JdbcTemplate jt;

    public void save(String name,String purposeOfVisit,String entryTime,String exitTime,
    String phone,String category,String visited){
        int year=Calendar.getInstance().get(Calendar.YEAR);
        int month=Calendar.getInstance().get(Calendar.MONTH)+1;
        String mon=Integer.toString(month);
        if(month<10) mon="0"+mon;
        int date=Calendar.getInstance().get(Calendar.DAY_OF_MONTH);
        String dat=Integer.toString(date);
        if(date<10) dat="0"+dat;

        String finaldate=dat+"/"+mon+"/"+Integer.toString(year);


        String sql="insert into Guest(name, purposeOfVisit,entryTime,exitTime,phone,category,visited,date) values(?,?,?,?,?,?,?,?)";
        jt.update(sql,name, purposeOfVisit,entryTime,exitTime,phone,category,visited,finaldate);
    }

    public List<Guest> findBydate(String date){
        String sql="select * from Guest where date like "+"'"+date+"'";
        return jt.query(sql,new RowMapper<Guest>(){
            public Guest mapRow(ResultSet row,int rowNum) throws SQLException{
                Guest o=new Guest();
                o.setCategory(row.getString("category"));
                o.setDate(row.getString("date"));
                o.setEntryTime(row.getString("entryTime"));
                o.setExitTime(row.getString("exitTime"));
                o.setGuestid(row.getInt("guestid"));
                o.setName(row.getString("name"));
                o.setPhone(row.getString("phone"));
                o.setPurposeOfVisit(row.getString("purposeOfVisit"));
                o.setVisited(row.getString("visited"));

                return o;
            }
        });
    }

    public List<Guest> findByMonth(){
        int year=Calendar.getInstance().get(Calendar.YEAR);
        int month=Calendar.getInstance().get(Calendar.MONTH)+1;
        String mon=Integer.toString(month);
        if(month<10) mon="0"+mon;
        String date="%/"+mon+"/"+Integer.toString(year);

        String sql="select * from Guest where date like "+"'"+date+"'";
        return jt.query(sql,new RowMapper<Guest>(){
            public Guest mapRow(ResultSet row,int rowNum) throws SQLException{
                Guest o=new Guest();
                o.setCategory(row.getString("category"));
                o.setDate(row.getString("date"));
                o.setEntryTime(row.getString("entryTime"));
                o.setExitTime(row.getString("exitTime"));
                o.setGuestid(row.getInt("guestid"));
                o.setName(row.getString("name"));
                o.setPhone(row.getString("phone"));
                o.setPurposeOfVisit(row.getString("purposeOfVisit"));
                o.setVisited(row.getString("visited"));

                return o;
            }
        });
    }

    public Guest findByid(int guestid){
        
        String sql="select * from Guest where guestid="+Integer.toString(guestid);
        return jt.queryForObject(sql,new RowMapper<Guest>(){
            public Guest mapRow(ResultSet row,int rowNum) throws SQLException{
                Guest o=new Guest();
                o.setCategory(row.getString("category"));
                o.setDate(row.getString("date"));
                o.setEntryTime(row.getString("entryTime"));
                o.setExitTime(row.getString("exitTime"));
                o.setGuestid(row.getInt("guestid"));
                o.setName(row.getString("name"));
                o.setPhone(row.getString("phone"));
                o.setPurposeOfVisit(row.getString("purposeOfVisit"));
                o.setVisited(row.getString("visited"));

                return o;
            }
        });
    }

    public void update(String exitTime,int guestid){
        String sql="update Guest set exitTime=? where guestid=?";
        jt.update(sql, exitTime,guestid);
    }
    
    public List<Guest> showall(){
        String sql="select * from Guest";
        return jt.query(sql,new RowMapper<Guest>(){
            public Guest mapRow(ResultSet row,int rowNum) throws SQLException{
                Guest o=new Guest();
                o.setCategory(row.getString("category"));
                o.setDate(row.getString("date"));
                o.setEntryTime(row.getString("entryTime"));
                o.setExitTime(row.getString("exitTime"));
                o.setGuestid(row.getInt("guestid"));
                o.setName(row.getString("name"));
                o.setPhone(row.getString("phone"));
                o.setPurposeOfVisit(row.getString("purposeOfVisit"));
                o.setVisited(row.getString("visited"));

                return o;
            }
        });
    }
}