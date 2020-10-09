package com.dbms.scowa.dao;

import java.util.List;
import javax.transaction.Transactional;

import com.dbms.scowa.model.Resident;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Transactional
@Repository
public class Residentdao{
    @Autowired
    JdbcTemplate jt;

    public void save(int userid){
        String query="insert into Resident(userid) values(?)";
        jt.update(query,userid);
    }

    public Resident findByid(int id){
        String sql="select * from Resident where Resident.userid="+Integer.toString(id);
        return jt.queryForObject(sql,new RowMapper<Resident>(){
            public Resident mapRow(ResultSet row,int rowNum) throws SQLException{
                Resident r=new Resident();
                r.setResidentid(row.getInt("residentid"));
                r.setResidentName(row.getString("residentName"));
                r.setIsOwner(row.getBoolean("isOwner"));
                r.setCode(row.getString("code"));
                r.setUserid(row.getInt("userid"));
                r.setApartmentid(row.getInt("apartmentid"));
                r.setNumOfMembers(row.getInt("numOfMembers"));
                r.setPhone(row.getString("phone"));

                return r;
            }
        });
    }

    public void update(String residentName,int apartmentid,String code,int numOfMembers,String phone,boolean isOwner,int userid){
        String sql="update Resident set residentName=?,apartmentid=?,code=?,numOfMembers=?,phone=?,isOwner=? where userid=?";
        if(apartmentid==-1){
            jt.update(sql,residentName,null,code,numOfMembers,phone,isOwner,userid);
        }
        else{
            jt.update(sql,residentName,apartmentid,code,numOfMembers,phone,isOwner,userid);
        }
    }

    public void delete(int userid){
        String sql="delete from Resident where userid=?";
        jt.update(sql,userid);
    }

    public List<Resident> showall(){
        String sql="select * from Resident";
        return jt.query(sql,new RowMapper<Resident>(){
            public Resident mapRow(ResultSet row,int rowNum) throws SQLException{
                Resident r=new Resident();
                r.setResidentid(row.getInt("residentid"));
                r.setResidentName(row.getString("residentName"));
                r.setIsOwner(row.getBoolean("isOwner"));
                r.setCode(row.getString("code"));
                r.setUserid(row.getInt("userid"));
                r.setApartmentid(row.getInt("apartmentid"));
                r.setNumOfMembers(row.getInt("numOfMembers"));
                r.setPhone(row.getString("phone"));

                return r;   
            }
        });
    }
}