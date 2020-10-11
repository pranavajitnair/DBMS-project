package com.dbms.scowa.dao;

import javax.transaction.Transactional;

import com.dbms.scowa.model.Maintenance;

import org.apache.catalina.valves.JDBCAccessLogValve;
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
public class Maintenancedao{

    @Autowired
    private JdbcTemplate jt;

    public void save(){
        
    }
}