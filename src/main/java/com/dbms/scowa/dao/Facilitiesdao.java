package com.dbms.scowa.dao;

import javax.transaction.Transactional;

import com.dbms.scowa.model.Facilities;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
@Transactional
public class Facilitiesdao {

    @Autowired
    private JdbcTemplate jt;

    public void save(int amountPerHour,String facilityName){
        String sql="insert into Facilities(facilityName,amountPerHour) values(?,?)";
        jt.update(sql,facilityName,amountPerHour);
    }

    public void delete(int facilityid){
        String sql="delete from Facilities where facilityid=?";
        jt.update(sql,facilityid);
    }

    public void update(int facilityid,String facilityName,int amountPerHour){
        String sql="update Facilities set facilityName=?,amountPerHour=? where facilityid=?";
        jt.update(sql,facilityName,amountPerHour,facilityid);
    }

    public List<Facilities> showall(){
        String sql="select * from Facilities";
        return jt.query(sql,new RowMapper<Facilities>(){
            public Facilities mapRow(ResultSet row,int rowNum) throws SQLException{
                Facilities o=new Facilities();
                o.setFacilityid(row.getInt("facilityid"));
                o.setFacilityName(row.getString("facilityName"));
                o.setAmountPerHour(row.getInt("amountPerHour"));

                return o;
            }
        });
    }

    public Facilities findByid(int facilityid){
        String sql="select * from Facilities where facilityid="+Integer.toString(facilityid);
        return jt.queryForObject(sql,new RowMapper<Facilities>(){
            public Facilities mapRow(ResultSet row,int rowNum) throws SQLException{
                Facilities o=new Facilities();
                o.setFacilityid(row.getInt("facilityid"));
                o.setFacilityName(row.getString("facilityName"));
                o.setAmountPerHour(row.getInt("amountPerHour"));

                return o;
            }
        });
    }

}