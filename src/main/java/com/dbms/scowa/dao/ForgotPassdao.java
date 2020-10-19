package com.dbms.scowa.dao;

import javax.transaction.Transactional;

import com.dbms.scowa.model.ForgotPass;

import org.apache.catalina.valves.JDBCAccessLogValve;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
@Transactional
public class ForgotPassdao {
    @Autowired
    private JdbcTemplate jt;

    public void save(int userid,String url){
        String sql="insert into ForgotPass(userid,url) values(?,?)";
        jt.update(sql, userid,url);
    }

    public ForgotPass findByid(String url){
        String sql="select * from ForgotPass where url='"+url+"'";
        return jt.queryForObject(sql,new RowMapper<ForgotPass>(){
            public ForgotPass mapRow(ResultSet row,int rowNum) throws SQLException{
                ForgotPass u=new ForgotPass();
                u.setUserid(row.getInt("userid"));
                u.setUrl(row.getString("url"));

                return u;
            }
        });
    }

    public void delete(){
        String sql="delete from ForgotPass";
        jt.update(sql);
    }
}