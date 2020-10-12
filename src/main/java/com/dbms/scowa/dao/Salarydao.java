package com.dbms.scowa.dao;

import javax.transaction.Transactional;

import com.dbms.scowa.model.Salary;

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
public class Salarydao {

    @Autowired
    private JdbcTemplate jt;

    public void save(int serviceid,int vendorid, int salary,String monthyear){
        String sql="insert into Salary(serviceid,vendorid,salary,monthyear) values(?,?,?,?)";
        jt.update(sql, serviceid,vendorid,salary,monthyear);
    }

    public List<Salary> findByid(String monthyear,int serviceid){
        String sql="select * from Salary where serviceid="+Integer.toString(serviceid)+" and monthyear like "+"'"+monthyear+"'";
        return jt.query(sql,new RowMapper<Salary>(){
            public Salary mapRow(ResultSet row,int rowNum) throws SQLException{
                Salary o=new Salary();
                o.setMonthyear(row.getString("monthyear"));
                o.setSalary(row.getInt("salary"));
                o.setServiceid(row.getInt("serviceid"));
                o.setTransactionid(row.getInt("transactionid"));
                o.setVendorid(row.getInt("vendorid"));

                return o;
            }
        });
    }

}