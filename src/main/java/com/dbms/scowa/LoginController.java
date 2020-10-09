package com.dbms.scowa;

import com.dbms.scowa.model.User;
import com.dbms.scowa.model.Resident;

import com.dbms.scowa.service.UserService;
import com.dbms.scowa.service.SecurityService;
import com.dbms.scowa.service.UserService;

import com.dbms.scowa.dao.Ownerdao;
import com.dbms.scowa.dao.Residentdao;
import com.dbms.scowa.dao.Apartmentdao;
import com.dbms.scowa.dao.Userdao;
import com.dbms.scowa.dao.Staffdao;

import com.dbms.scowa.model.Owner;
import com.dbms.scowa.model.Resident;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class LoginController{
    @Autowired
    private UserService userService;

    @Autowired
    private Ownerdao ownerdao;
    @Autowired
    private Residentdao residentdao;
    @Autowired
    private Staffdao staffdao;
    
    @GetMapping("/admin/register")
    public String register(Model model){
        model.addAttribute("user",new User());

        return "register";
    }

    @PostMapping("/admin/register")
    public String register(@ModelAttribute("user") User user, BindingResult bindingResult){
        
        userService.save(user);
        String type=user.getUserType();
        if(type.equals("staff")){
            staffdao.save(user.getUserid());
        }
        else if(type.equals("resident")){
            residentdao.save(user.getUserid());
        }
        else if(type.equals("owner")){
            ownerdao.save(user.getUserid());
        }
        else if(type.equals("residentowner")){
            ownerdao.save(user.getUserid());
            residentdao.save(user.getUserid());
            Resident resident=residentdao.findByid(user.getUserid());
            Owner owner=ownerdao.findByid(user.getUserid());

            residentdao.update(resident.getResidentName(), -1, resident.getCode(), 
            resident.getNumOfMembers(), resident.getPhone(), true, resident.getUserid());

            ownerdao.update(owner.getCity(),owner.getOwnerName(), owner.getDateOfPurchase(), 
            owner.getCode(),owner.getHouseDetails(), owner.getStreet(), owner.getState(),
            owner.getPincode(), owner.getCountry(),owner.getPhone(), 
            -1,true, owner.getUserid());
            System.out.println(owner.getOwnerName());
        }

        return "test";
    }

    @GetMapping("/welcome")
    public String welcome(Principal principal){
        User user=userService.findByid(Integer.valueOf(principal.getName()));
        if (user.getUserType().equals("resident")|| user.getUserType().equals("residentowner")){
            return "redirect:/resident/home";
        }
        else if(user.getUserType().equals("owner")){
            return "redirect:/owner/home";
        }
        else if(user.getUserType().equals("security")){
            // return "redirect:/security";
            return "test";
        }
        else if(user.getUserType().equals("staff")){
            return "redirect:/staff/home";
        }
        return "redirect:/admin";
    }
}