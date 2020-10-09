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

import com.dbms.scowa.dao.Staffdao;
import com.dbms.scowa.model.Staff;

@RequestMapping("/staff")
@Controller
public class StaffController {

    @Autowired
    private Staffdao staffdao;

    @GetMapping("/home")
    public ModelAndView viewpage(final Principal principal){
        final ModelAndView model=new ModelAndView("staff");
        final Staff staff=staffdao.findByid(Integer.valueOf(principal.getName()));
        model.addObject("staff",staff);
        return model;
    }

    @GetMapping("/update/{userid}")
    public ModelAndView update(@PathVariable(value="userid") final int userid){
        ModelAndView model=new ModelAndView("updatestaff");
        Staff staff=new Staff();
        Staff s=staffdao.findByid(userid);
        staff.setCode(s.getCode());
        staff.setDob(s.getDob());
        staff.setHouseDetails(s.getHouseDetails());
        staff.setJoinDate(s.getJoinDate());
        staff.setName(s.getName());
        staff.setPhone(s.getPhone());
        staff.setStaffid(s.getStaffid());
        staff.setUserid(s.getUserid());
        staff.setStreet(s.getStreet());

        model.addObject("staff",staff);
        return model;
    }

    @PostMapping("/update")
    public String updateform(@Valid @ModelAttribute("staff") Staff staff,BindingResult result){
        staffdao.update(staff.getName(), staff.getDob(), staff.getCode(), staff.getHouseDetails(), 
        staff.getStreet(), staff.getJoinDate(), staff.getPhone(), staff.getUserid());

        return "redirect:/staff/home";
    }
}