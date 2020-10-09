package com.dbms.scowa.dao;

import com.dbms.scowa.model.Staff;

import java.util.List;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Transactional
@Repository
public class Staffdao{
    @Autowired
    JdbcTemplate jt;

    public void save(int userid){
        String sql="insert into Staff(userid) values(?)";
        jt.update(sql,userid);
    }

    public Staff findByid(int userid){
        String sql="select * from Staff where userid="+Integer.toString(userid);
        return jt.queryForObject(sql,new RowMapper<Staff>(){
            public Staff mapRow(ResultSet row,int rowNum) throws SQLException{
                Staff o=new Staff();
                o.setStaffid(row.getInt("staffid"));
                o.setName(row.getString("name"));
                o.setDob(row.getString("dob"));
                o.setCode(row.getString("code"));
                o.setUserid(row.getInt("userid"));
                o.setHouseDetails(row.getString("houseDetails"));
                o.setStreet(row.getString("street"));
                o.setJoinDate(row.getString("joinDate"));
                o.setPhone(row.getString("phone"));

                return o;
            }
        });
    }

    public void delete(int userid){
        String sql="delete frrom Staff where userid=?";
        jt.update(sql,userid);
    }

    public void update(String name,String dob,String code,String houseDetails,String street,String joinDate, String phone,int userid){
        String sql="update Staff set name=?, dob=?, code=?, houseDetails=?, street=?, joinDate=?, phone=? where userid=?";
        jt.update(sql,name,dob,code,houseDetails,street,joinDate,phone,userid);
    }

    public List<Staff> showall(){
        String sql="select * from Staff";
        return jt.query(sql,new RowMapper<Staff>(){
            public Staff mapRow(ResultSet row,int rowNum) throws SQLException{
                Staff o=new Staff();
                o.setStaffid(row.getInt("staffid"));
                o.setName(row.getString("name"));
                o.setDob(row.getString("dob"));
                o.setCode(row.getString("code"));
                o.setUserid(row.getInt("userid"));
                o.setHouseDetails(row.getString("houseDetails"));
                o.setStreet(row.getString("street"));
                o.setJoinDate(row.getString("joinDate"));
                o.setPhone(row.getString("phone"));

                return o;
            }
        });
    }
}