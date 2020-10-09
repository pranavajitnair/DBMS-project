package com.dbms.scowa.dao;

import javax.transaction.Transactional;

import com.dbms.scowa.model.Project;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Transactional
@Repository
public class Projectdao {

    @Autowired
     JdbcTemplate jt;

    public void save(int fund,int vendorid,
     String startTime,String endTime,String description){
         String sql="insert into Project(fund,vendorid,startTime,endTime,description) values(?,?,?,?,?)";
         jt.update(sql,fund,vendorid,startTime,endTime,description);
     }

     public List<Project> showall(){
        String sql="select * from Project";
        return jt.query(sql,new RowMapper<Project>(){
            public Project mapRow(ResultSet row,int rowNum) throws SQLException{
                Project r=new Project();
                r.setDescription(row.getString("description"));
                r.setEndTime(row.getString("endTime"));
                r.setFund(row.getInt("fund"));
                r.setStartTime(row.getString("startTime"));
                r.setProjectid(row.getInt("projectid"));
                r.setVendorid(row.getInt("vendorid"));

                return r;   
            }
        });
    }

    public void delete(int projectid){
        String sql="delete from Project where projectid=?";
        jt.update(sql,projectid);
    }

    public void update(int projectid,int fund,int vendorid,
    String startTime,String endTime,String description){
        String sql="update Project set fund=?,vendorid=?,startTime=?,endTime=?,description=? where projectid=?";
        jt.update(sql,fund,vendorid,startTime,endTime,description,projectid);
    }

    public Project findByid(int projectid){
        String sql="select * from Project where projectid="+Integer.toString(projectid);
        return jt.queryForObject(sql,new RowMapper<Project>(){
            public Project mapRow(ResultSet row,int rowNum) throws SQLException{
                Project r=new Project();
                r.setDescription(row.getString("description"));
                r.setEndTime(row.getString("endTime"));
                r.setFund(row.getInt("fund"));
                r.setStartTime(row.getString("startTime"));
                r.setProjectid(row.getInt("projectid"));
                r.setVendorid(row.getInt("vendorid"));

                return r;   
            }
        });
    }

}