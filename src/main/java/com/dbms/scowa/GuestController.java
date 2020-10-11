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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.security.Principal;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;
import com.dbms.scowa.dao.Guestdao;
import com.dbms.scowa.model.Guest;
import java.util.Calendar;


@RequestMapping("/security")
@Controller
public class GuestController {

    @Autowired
    private Guestdao guestdao;

    @PostMapping("/addguest")
    public String addguest(@ModelAttribute("guest") Guest guest, BindingResult bindingResult){
        guestdao.save(guest.getName(), guest.getPurposeOfVisit(), guest.getEntryTime(), guest.getExitTime(), 
        guest.getPhone(), guest.getCategory(), guest.getVisited());

        return "redirect:/security/listguests";
    }

    @GetMapping("/addguest")
    public String getguest(Model model){
        model.addAttribute("guest",new Guest());

        return "addguest";
    }

    @GetMapping("/updateguest/{guestid}")
    public ModelAndView updateguest(@PathVariable(value="guestid") final int guestid){
        ModelAndView model=new ModelAndView("updateguest");
        Guest guest=new Guest();
        Guest gue=guestdao.findByid(guestid);
        guest.setCategory(gue.getCategory());
        guest.setDate(gue.getDate());
        guest.setEntryTime(gue.getEntryTime());
        guest.setExitTime(gue.getExitTime());
        guest.setGuestid(gue.getGuestid());
        guest.setName(gue.getName());
        guest.setPhone(gue.getPhone());
        guest.setPurposeOfVisit(gue.getPurposeOfVisit());
        guest.setVisited(gue.getVisited());

        model.addObject("guest",guest);
        return model;
    }

    @PostMapping("/updateguest")
    public String updatepostguest(@Valid @ModelAttribute("guest") Guest guest,BindingResult result){
       guestdao.update(guest.getExitTime(), guest.getGuestid());

        return "redirect:/security/listguests";
    }
    
    @GetMapping("/listguests")
    public ModelAndView listguests(){
        ModelAndView model=new ModelAndView("listguests");
        List<Guest> guests=guestdao.showall();
        model.addObject("guests",guests);
        return model;
    }

    @GetMapping("/listguestsdate")
    public ModelAndView listguestdate(@RequestParam("date") String date){
        ModelAndView model=new ModelAndView("listguests");
        List<Guest> guests=guestdao.findBydate(date);
        model.addObject("guests",guests);
        return model;
    }

    @GetMapping("/findbydate")
    public String findbydate(){
        return "guestdate";
    }

    @GetMapping("/listguestsmonth")
    public ModelAndView listguestmonth(){
        ModelAndView model=new ModelAndView("listguests");
        List<Guest> guests=guestdao.findByMonth();
        model.addObject("guests",guests);
        return model;
    }
}