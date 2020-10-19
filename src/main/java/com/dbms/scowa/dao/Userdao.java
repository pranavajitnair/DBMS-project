package com.dbms.scowa.dao;

import javax.transaction.Transactional;

import com.dbms.scowa.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Transactional
@Repository
public class Userdao{
    @Autowired
    JdbcTemplate jt;

    public void save(String username,String password,int userid,String userType){
        String query="insert into user (username,userid,password,userType) values(?,?,?,?)";
        jt.update(query,username,userid,password,userType);

    }

    public User findByid(int id){
        String sql="select * from user where user.userid="+Integer.toString(id);
        return jt.queryForObject(sql,new RowMapper<User>(){
            public User mapRow(ResultSet row,int rowNum) throws SQLException{
                User u=new User();
                u.setUserid(row.getInt("userid"));
                u.setPassword(row.getString("password"));
                u.setUsername(row.getString("username"));
                u.setUserType(row.getString("userType"));

                return u;
            }
        });
    }

    public void delete(int id){
        String sql="delete from user where userid=?";
        jt.update(sql,id);
    }

    public void update(int id,String pass){
        String sql="update user set password=? where userid=?";
        jt.update(sql,pass,id);
    }

    public void update1(int id, String type){
        String sql="update user set userType=? where userid=?";
        jt.update(sql,type,id);
    }

    public User getmax(){
        String sql="select * from user where userid=(select max(userid) from user)";
        return jt.queryForObject(sql,new RowMapper<User>(){
            public User mapRow(ResultSet row,int rowNum) throws SQLException{
                User u=new User();
                u.setUserid(row.getInt("userid"));
                u.setPassword(row.getString("password"));
                u.setUsername(row.getString("username"));
                u.setUserType(row.getString("userType"));

                return u;
            }
        });
    }
}