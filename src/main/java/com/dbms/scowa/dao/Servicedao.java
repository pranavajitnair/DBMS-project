package com.dbms.scowa.dao;

import javax.transaction.Transactional;

import com.dbms.scowa.model.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Transactional
@Repository
public class Servicedao {

    @Autowired
    private JdbcTemplate jt;

    public void save(int fund,int monthlyAmount,int vendorid,String name,
     String description,String startTime,String endTime,int numOfPeople){
        String sql="insert into Service(fund,monthlyAmount,vendorid,name,description,startTime,endTime,numOfPeople) values(?,?,?,?,?,?,?,?)";
        jt.update(sql,fund,monthlyAmount,vendorid,name,description,startTime,endTime,numOfPeople);
     }

     public List<Service> showall(){
        String sql="select * from Service";
        return jt.query(sql,new RowMapper<Service>(){
            public Service mapRow(ResultSet row,int rowNum) throws SQLException{
                Service r=new Service();
                r.setServiceid(row.getInt("serviceid"));
                r.setDescription(row.getString("description"));
                r.setFund(row.getInt("fund"));
                r.setMonthlyAmount(row.getInt("monthlyAmount"));
                r.setVendorid(row.getInt("vendorid"));
                r.setNumOfPeople(row.getInt("numOfPeople"));
                r.setStartTime(row.getString("startTime"));
                r.setEndTime(row.getString("endTime"));
                r.setName(row.getString("name"));

                return r;   
            }
        });
    }

    public void delete(int serviceid){
        String sql="delete from Service where serviceid=?";
        jt.update(sql,serviceid);
    }

    public void update(int serviceid,int fund,int monthlyAmount,int vendorid,String name,
    String description,String startTime,String endTime,int numOfPeople){
        String sql="update Service set fund=?,monthlyAmount=?,vendorid=?,name=?,description=?,startTime=?,endTime=?,numOfPeople=? where serviceid=?";
        jt.update(sql,fund,monthlyAmount,vendorid,name,description,startTime,endTime,numOfPeople,serviceid);
    }

    public Service findByid(int serviceid){
        String sql="select * from Service where serviceid="+Integer.toString(serviceid);
        return jt.queryForObject(sql,new RowMapper<Service>(){
            public Service mapRow(ResultSet row,int rowNum) throws SQLException{
                Service r=new Service();
                r.setServiceid(row.getInt("serviceid"));
                r.setDescription(row.getString("description"));
                r.setFund(row.getInt("fund"));
                r.setMonthlyAmount(row.getInt("monthlyAmount"));
                r.setVendorid(row.getInt("vendorid"));
                r.setNumOfPeople(row.getInt("numOfPeople"));
                r.setStartTime(row.getString("startTime"));
                r.setEndTime(row.getString("endTime"));
                r.setName(row.getString("name"));

                return r;   
            }
        });
    }

}