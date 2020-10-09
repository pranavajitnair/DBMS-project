package com.dbms.scowa;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.security.Principal;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import com.dbms.scowa.dao.Ownerdao;
import com.dbms.scowa.model.Owner;

@RequestMapping("/owner")
@Controller
public class OwnerController{

    @Autowired
    Ownerdao ownerdao;

    @GetMapping("/home")
    public ModelAndView viewpage(final Principal principal){
        final ModelAndView model=new ModelAndView("owner");
        final Owner owner=ownerdao.findByid(Integer.valueOf(principal.getName()));
        model.addObject("owner",owner);
        return model;
    }

    @GetMapping("/update/{userid}")
    public ModelAndView update(@PathVariable(value="userid") final int userid){
        ModelAndView model=new ModelAndView("updateowner");
        Owner owner=new Owner();
        Owner own=ownerdao.findByid(userid);
        owner.setApartmentid(own.getApartmentid());
        owner.setCode(own.getCode());
        owner.setCity(own.getCity());
        owner.setCountry(own.getCountry());
        owner.setDateOfPurchase(own.getDateOfPurchase());
        owner.setPhone(own.getPhone());
        owner.setOwnerName(own.getOwnerName());
        owner.setState(own.getState());
        owner.setStreet(own.getStreet());
        owner.setIsResident(own.getIsResident());
        owner.setOwnerid(own.getOwnerid());
        owner.setUserid(userid);
        owner.setPincode(own.getPincode());
        owner.setHouseDetails(own.getHouseDetails());
    
        model.addObject("owner",owner);
        return model;
    }

    @PostMapping("/update")
    public String updateform(@Valid @ModelAttribute("owner") Owner owner,BindingResult result){
        ownerdao.update(owner.getCity(),owner.getOwnerName(), owner.getDateOfPurchase(), 
        owner.getCode(),owner.getHouseDetails(), owner.getStreet(), owner.getState(),
        owner.getPincode(), owner.getCountry(),owner.getPhone(), 
        owner.getApartmentid(),owner.getIsResident(), owner.getUserid());
        System.out.println(owner.getOwnerName());
        return "redirect:/owner/home";
    }
}