package com.dbms.scowa.dao;

import javax.transaction.Transactional;

import com.dbms.scowa.model.Paid;

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
public class Paiddao {

    @Autowired
    private JdbcTemplate jt;

    public void save(int projectid, int vendorid, int amount){
        String sql="insert into Paid(projectid, vendorid, amount) values(?,?,?)";
        jt.update(sql, projectid,vendorid,amount);
    }

    public List<Paid> findByproject(int projectid){
        String sql="select * from Paid where projectid="+Integer.toString(projectid);
        return jt.query(sql,new RowMapper<Paid>(){
            public Paid mapRow(ResultSet row,int rowNum) throws SQLException{
                Paid o=new Paid();
                o.setAmount(row.getInt("amount"));
                o.setProjectid(row.getInt("projectid"));
                o.setTransactionid(row.getInt("transactionid"));
                o.setVendorid(row.getInt("vendorid"));

                return o;
            }
        });
    }

}