package com.dbms.scowa;

import java.security.Principal;

import javax.validation.Valid;

import com.dbms.scowa.dao.Maintenancedao;
import com.dbms.scowa.dao.Ownerdao;
import com.dbms.scowa.model.Owner;
import com.dbms.scowa.model.Maintenance;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.Calendar;
import java.util.List;


@RequestMapping("/owner")
@Controller
public class OwnerController{

    @Autowired
    Ownerdao ownerdao;
    @Autowired
    Maintenancedao maintenancedao;

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

    @GetMapping("/listmaintenance")
    public ModelAndView lismaintenance(Principal principal){
        Owner owner=ownerdao.findByid(Integer.valueOf(principal.getName()));
        List<Maintenance> main=maintenancedao.findByownerid(owner.getOwnerid());

        String month=Integer.toString(Calendar.getInstance().get(Calendar.MONTH)+1);
        if(Calendar.getInstance().get(Calendar.MONTH)+1<10) month="0"+month;
        String year=Integer.toString(Calendar.getInstance().get(Calendar.YEAR));

        boolean kz=true;
        for(Maintenance ma:main){
            if(ma.getMonth().equals(month) && ma.getYear().equals(year)) kz=false;
        }

        ModelAndView model=new ModelAndView("listmaintenance");
        model.addObject("mains",main);
        model.addObject("kz", kz);

        return model;
    }

    @GetMapping("/addmaintenance")
    public String addmaintenance(Principal principal){
        Owner owner=ownerdao.findByid(Integer.valueOf(principal.getName()));
        String month=Integer.toString(Calendar.getInstance().get(Calendar.MONTH)+1);
        if(Calendar.getInstance().get(Calendar.MONTH)+1<10) month="0"+month;
        String year=Integer.toString(Calendar.getInstance().get(Calendar.YEAR));
        int apartmentid=owner.getApartmentid();

        List<Maintenance> main=maintenancedao.findByownerid(owner.getOwnerid());
        boolean kz=true;
        for(Maintenance ma:main){
            if(ma.getMonth().equals(month) && ma.getYear().equals(year)) kz=false;
        }

        if(kz){
            maintenancedao.save(year, month, 5000, owner.getOwnerid(), apartmentid);
        }

        return "redirect:/owner/listmaintenance";
    }
}