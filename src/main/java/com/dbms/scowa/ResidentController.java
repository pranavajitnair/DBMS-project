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

import com.dbms.scowa.dao.Ownerdao;
import com.dbms.scowa.dao.Residentdao;
import com.dbms.scowa.model.Owner;
import com.dbms.scowa.model.Resident;
import com.dbms.scowa.model.Booking;
import com.dbms.scowa.model.Facilities;
import com.dbms.scowa.dao.Bookingdao;
import com.dbms.scowa.dao.Facilitiesdao;

import java.util.Calendar;

@RequestMapping("/resident")
@Controller
public class ResidentController {

    @Autowired
    Residentdao residentdao;
    @Autowired
    Facilitiesdao facilitiesdao;
    @Autowired
    Bookingdao bookingdao;


    @GetMapping("")
    public String test(){
        return "test";
    }

    @GetMapping("/home")
    public ModelAndView viewpage(final Principal principal){
        final ModelAndView model=new ModelAndView("resident");
        final Resident resident=residentdao.findByid(Integer.valueOf(principal.getName()));
        model.addObject("resident",resident);
        return model;
    }

    @GetMapping("/update/{userid}")
    public ModelAndView update(@PathVariable(value="userid") final int userid){
        final ModelAndView model = new ModelAndView("updateresident");
        final Resident resident = new Resident();
        final Resident res = residentdao.findByid(userid);
        resident.setApartmentid(res.getApartmentid());
        resident.setCode(res.getCode());
        resident.setIsOwner(res.getIsOwner());
        resident.setPhone(res.getPhone());
        resident.setNumOfMembers(res.getNumOfMembers());
        resident.setUserid(userid);
        resident.setResidentid(res.getResidentid());
        resident.setResidentName(res.getResidentName());

        model.addObject("resident", resident);
        return model;
    }

    @PostMapping("/update")
    public String updateform(@Valid @ModelAttribute("resident") final Resident resident, final BindingResult result) {
        residentdao.update(resident.getResidentName(), resident.getApartmentid(), resident.getCode(),
                resident.getNumOfMembers(), resident.getPhone(), resident.getIsOwner(), resident.getUserid());

        return "redirect:/resident/home";
    }

    @GetMapping("/showfacilities")
    public ModelAndView showfacilities() {
        final ModelAndView model = new ModelAndView("showfacilities");
        final List<Facilities> facilities = facilitiesdao.showall();
        model.addObject("facilities", facilities);

        return model;
    }

    @GetMapping("/selectfacilities/{facilityid}")
    public ModelAndView selectfacilities(@PathVariable(value="facilityid") final int facilityid) {
        final int month=Calendar.getInstance().get(Calendar.MONTH)+1;
        final int year=Calendar.getInstance().get(Calendar.YEAR);
        final int daytt=Calendar.getInstance().get(Calendar.DAY_OF_MONTH);
        int days=Calendar.getInstance().getActualMaximum(Calendar.DAY_OF_MONTH);

        List<Booking> bookings=bookingdao.find(facilityid,month,year);
        List<Integer> lis=new ArrayList<>();
        List<Integer> dates=new ArrayList<Integer>();

        for(Booking book:bookings){
            String day=book.getDate().substring(0,2);
            lis.add(Integer.parseInt(day));
        }

        for(int i=daytt+1;i<=days;i++){
            if(lis.contains(i)) continue;
            else dates.add(i);
        }

        ModelAndView model=new ModelAndView("listdates");
        model.addObject("dates", dates);
        model.addObject("facility",facilityid);
        return model;
    }

    @GetMapping("/select/{facilityid}/{date}")
    public String savebooking(@PathVariable(value="facilityid") int facilityid,@PathVariable(value="date") int date,
    Principal principal,RedirectAttributes ra){
        Resident resident=residentdao.findByid(Integer.valueOf(principal.getName()));
        
        final int month=Calendar.getInstance().get(Calendar.MONTH)+1;
        final int year=Calendar.getInstance().get(Calendar.YEAR);
        String mon=Integer.toString(month);
        String yer=Integer.toString(year);
        if(month<10) mon="0"+mon;
        String dat=Integer.toString(date);
        if(date<10) dat="0"+dat;

        String finaldate=dat+"/"+mon+"/"+yer;

        bookingdao.save(finaldate, facilityid, resident.getResidentid());
        Booking book=bookingdao.findByValues(facilityid, resident.getResidentid(), finaldate);
        ra.addAttribute("bookingid",book.getBookingid());
        return "redirect:/resident/updatebookings";
    }

    @GetMapping("/updatebookings")
    public ModelAndView updatebooking(@RequestParam("bookingid") int bookingid){
        final Booking book=new Booking();
        int kz=0;
        if(bookingid<0){
            kz=1;
            bookingid=-bookingid;
        }

        final Booking bok=bookingdao.findByid(bookingid);

        if(bok.getPhone()!=null){
            ModelAndView model=new ModelAndView("test");
            return model;
        }

        ModelAndView model=new ModelAndView("updatebooking");
        book.setAmount(bok.getAmount());
        book.setBookingid(bok.getBookingid());
        book.setDate(bok.getDate());
        book.setEndTime(bok.getEndTime());
        book.setFacilityid(bok.getFacilityid());
        book.setPhone(bok.getPhone());
        book.setResidentid(bok.getResidentid());
        book.setPurposeOfBooking(bok.getPurposeOfBooking());
        book.setStartTime(bok.getStartTime());

        model.addObject("book", book);
        model.addObject("kz",kz);
        return model;

    }

    @PostMapping("/updatebooking")
    public String setbooking(@Valid @ModelAttribute("book") Booking book, BindingResult result, RedirectAttributes ra){
        if(Integer.valueOf(book.getStartTime().substring(0, 2))<8||Integer.valueOf(book.getEndTime().substring(0, 2))>22||Integer.valueOf(book.getStartTime().substring(0, 2))>Integer.valueOf(book.getEndTime().substring(0, 2))){
            ra.addAttribute("bookingid", -book.getBookingid());
            return "redirect:/resident/updatebookings";
        }
        
        Facilities fac=facilitiesdao.findByid(book.getFacilityid());
        int amount=fac.getAmountPerHour()*(Integer.valueOf(book.getEndTime().substring(0, 2))-Integer.valueOf(book.getStartTime().substring(0, 2)));
        bookingdao.update(book.getBookingid(), amount, book.getStartTime(), 
        book.getEndTime(), book.getPhone(), book.getPurposeOfBooking());

        ra.addAttribute("kz",0);
        return "redirect:/resident/viewbookings";
    }

    @GetMapping("/viewbookings")
    public ModelAndView viewbookings(Principal principal, @RequestParam("kz") int kz){
        ModelAndView model=new ModelAndView("viewbookings");
        Resident resident=residentdao.findByid(Integer.valueOf(principal.getName()));
        List<Booking> booked=bookingdao.findByResidentid(resident.getResidentid());

        List<Boolean> test=new ArrayList<Boolean>(); 
        for(Booking book:booked){
            int date=Integer.valueOf(book.getDate().substring(0, 2));
            int month=Integer.valueOf(book.getDate().substring(3, 5));
            int year=Integer.valueOf(book.getDate().substring(6, 10));

            final int cur_month=Calendar.getInstance().get(Calendar.MONTH)+1;
            final int cur_year=Calendar.getInstance().get(Calendar.YEAR);
            int today=Calendar.getInstance().get(Calendar.DAY_OF_MONTH);
            
            if(cur_year>year||(cur_year==year && cur_month>month)||(cur_year==year && cur_month==month && today>date)) test.add(false);
            else test.add(true);

        }

        bookingdao.delete_null();

        model.addObject("bookings",booked);
        model.addObject("kz", kz);
        model.addObject("test",test);
        
        return model;
    }

    @GetMapping("/deletebooking/{bookingid}")
    public String deletebooking(@PathVariable(value="bookingid") int bookingid, RedirectAttributes ra){
        Booking booking=bookingdao.findByid(bookingid);
        int day=Calendar.getInstance().get(Calendar.DAY_OF_MONTH);

        int bookday=Integer.valueOf(booking.getDate().substring(0,2));
        if(bookday-day>10){
            bookingdao.delete(bookingid);
            ra.addAttribute("kz",0);
        }
        else ra.addAttribute("kz",1);
        return "redirect:/resident/viewbookings";
    }

}