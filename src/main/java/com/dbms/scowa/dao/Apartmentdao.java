package com.dbms.scowa.dao;

import javax.transaction.Transactional;

import com.dbms.scowa.model.Apartment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Transactional
@Repository
public class Apartmentdao{
    @Autowired
    JdbcTemplate jt;

    public void save(int apartmentid,int towerid,String towerName,String flatName){
        String sql="insert into Apartment(apartmentid,towerid,towerName,fltaName) values(?,?,?,?)";
        jt.update(sql,apartmentid,towerid,towerName,flatName);
    }

    public Apartment findByid(int id){
        String sql="select * from Apartment where apartmentid="+Integer.toString(id);
        return jt.queryForObject(sql,new RowMapper<Apartment>(){
            public Apartment mapRow(ResultSet row,int rowNum) throws SQLException{
                Apartment a=new Apartment();
                a.setApartmentid(row.getInt("apartmentid"));
                a.setTowerName(row.getString("towerName"));
                a.setFlatName(row.getString("flatName"));
                a.setTowerid(row.getInt("towerid"));

                return a;
            }
        });

    }

    public Apartment findByName(String tower, String flat){
        String sql="select * from Apartment where towerName like "+"'"+tower+"'"+" and flatName like "+"'"+flat+"'";
        return jt.queryForObject(sql,new RowMapper<Apartment>(){
            public Apartment mapRow(ResultSet row,int rowNum) throws SQLException{
                Apartment a=new Apartment();
                a.setApartmentid(row.getInt("apartmentid"));
                a.setTowerName(row.getString("towerName"));
                a.setFlatName(row.getString("flatName"));
                a.setTowerid(row.getInt("towerid"));

                return a;
            }
        });
    }
}