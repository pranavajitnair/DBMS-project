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

import com.dbms.scowa.dao.Userdao;
import com.dbms.scowa.dao.Residentdao;
import com.dbms.scowa.dao.Facilitiesdao;
import com.dbms.scowa.dao.Ownerdao;
import com.dbms.scowa.dao.Staffdao;
import com.dbms.scowa.dao.Servicedao;
import com.dbms.scowa.dao.Projectdao;
import com.dbms.scowa.dao.Vendordao;
import com.dbms.scowa.dao.Paiddao;
import com.dbms.scowa.dao.Salarydao;

import com.dbms.scowa.model.User;
import com.dbms.scowa.model.Resident;
import com.dbms.scowa.model.Staff;
import com.dbms.scowa.model.Facilities;
import com.dbms.scowa.model.Owner;
import com.dbms.scowa.model.Service;
import com.dbms.scowa.model.Vendor;
import com.dbms.scowa.model.Project;
import com.dbms.scowa.model.Paid;
import com.dbms.scowa.model.Salary;

@Controller
@RequestMapping("/admin")
public class AdminController{

    @Autowired
    Residentdao residentdao;
    @Autowired
    Staffdao staffdao;
    @Autowired
    Ownerdao ownerdao;
    @Autowired
    Userdao userdao;
    @Autowired
    Projectdao projectdao;
    @Autowired
    Vendordao vendordao;
    @Autowired
    Servicedao servicedao;
    @Autowired
    Facilitiesdao facilitiesdao;
    @Autowired
    Paiddao paiddao;
    @Autowired
    Salarydao salarydao;

    @GetMapping("/listresidents")
    public ModelAndView listresidents(){
        ModelAndView model=new ModelAndView("listresidents");
        List<Resident> residents=residentdao.showall();
        model.addObject("residents",residents);
        return model;
    }

    @GetMapping("/listowners")
    public ModelAndView listowners(){
        ModelAndView model=new ModelAndView("listowners");
        List<Owner> owners=ownerdao.showall();
        model.addObject("owners",owners);
        return model;
    }

    @GetMapping("/liststaffs")
    public ModelAndView liststaffs(){
        ModelAndView model=new ModelAndView("liststaffs");
        List<Staff> staffs=staffdao.showall();
        model.addObject("staffs",staffs);
        return model;
    }

    @GetMapping("/deletesecownstaf/{userid}")
    public String delete(@PathVariable(value="userid") int userid){
        userdao.delete(userid);
        return "redirect:/admin/listowners";
    }

    @GetMapping("deleteres/{userid}")
    public String deleteres(@PathVariable(value="userid") int userid){
        Resident resident=residentdao.findByid(userid);
        boolean isowner=resident.getIsOwner();
        Owner owner=ownerdao.findByid(userid);

        if(isowner==true){
            residentdao.delete(userid);
            ownerdao.update1(userid, false);
            System.out.println(owner.getOwnerName());
        }
        else{
            userdao.delete(userid);
        }

        return "redirect:/admin/listresidents";
    }

    @PostMapping("/addservice")
    public String addservice(@ModelAttribute("service") Service service, BindingResult bindingResult){
        servicedao.save(service.getFund(), service.getMonthlyAmount(), service.getVendorid(), service.getName(), 
        service.getDescription(), service.getStartTime(), service.getEndTime(), service.getNumOfPeople());

        return "redirect:/admin/listservices";
    }

    @GetMapping("/addservice")
    public String getservice(Model model){
        model.addAttribute("service",new Service());

        return "addservice";
    }

    @GetMapping("/deleteservice/{serviceid}")
    public String deleteservice(@PathVariable(value="serviceid") int serviceid){
        servicedao.delete(serviceid);

        return "redirect:/admin/listservices";
    }

    @GetMapping("/updateservice/{serviceid}")
    public ModelAndView updateservice(@PathVariable(value="serviceid") final int serviceid){
        ModelAndView model=new ModelAndView("updateservice");
        Service service=new Service();
        Service ser=servicedao.findByid(serviceid);
        service.setDescription(ser.getDescription());
        service.setEndTime(ser.getEndTime());
        service.setFund(ser.getFund());
        service.setStartTime(ser.getStartTime());
        service.setMonthlyAmount(ser.getMonthlyAmount());
        service.setNumOfPeople(ser.getNumOfPeople());
        service.setName(ser.getName());
        service.setServiceid(ser.getServiceid());
        service.setVendorid(ser.getVendorid());

        model.addObject("service", service);
        return model;
    }

    @PostMapping("/updateservice")
    public String updatepostservice(@Valid @ModelAttribute("service") Service service,BindingResult result){
        servicedao.update(service.getServiceid(),service.getFund(),service.getMonthlyAmount(), service.getVendorid(), 
        service.getName(),service.getDescription(),service.getStartTime(), service.getEndTime(),service.getNumOfPeople());

        return "redirect:/admin/listservices";
    }

    @PostMapping("/addvendor")
    public String addvendor(@ModelAttribute("vendor") Vendor vendor, BindingResult bindingResult){
       vendordao.save(vendor.getName(), vendor.getPhone(), vendor.getEmail(), vendor.getOfficeDetails(), vendor.getStreet(), 
       vendor.getCity(), vendor.getPincode(), vendor.getState(), vendor.getCode(), vendor.getMonthlyAmount());

        return "redirect:/admin/listvendors";
    }

    @GetMapping("/addvendor")
    public String getvendor(Model model){
        model.addAttribute("vendor",new Vendor());

        return "addvendor";
    }

    @GetMapping("/deletevendor/{vendorid}")
    public String deletevendor(@PathVariable(value="vendorid") int vendorid){
        vendordao.delete(vendorid);

        return "redirect:/admin/listvendors";
    }

    @GetMapping("/updatevendor/{vendorid}")
    public ModelAndView updatevendor(@PathVariable(value="vendorid") final int vendorid){
        ModelAndView model=new ModelAndView("updatevendor");
        Vendor vendor=new Vendor();
        Vendor vend=vendordao.findByid(vendorid);
        vendor.setCity(vend.getCity());
        vendor.setCode(vend.getCode());
        vendor.setEmail(vend.getEmail());
        vendor.setMonthlyAmount(vend.getMonthlyAmount());
        vendor.setName(vend.getName());
        vendor.setOfficeDetails(vend.getOfficeDetails());
        vendor.setPhone(vend.getPhone());
        vendor.setPincode(vend.getPincode());
        vendor.setState(vend.getState());
        vendor.setStreet(vend.getStreet());
        vendor.setVendorid(vend.getVendorid());

        model.addObject("vendor", vendor);
        return model;
    }

    @PostMapping("/updatevendor")
    public String updatepostvendor(@Valid @ModelAttribute("vendor") Vendor vendor,BindingResult result){
        vendordao.update(vendor.getVendorid(), vendor.getName(), vendor.getPhone(), vendor.getEmail(), vendor.getOfficeDetails(), vendor.getStreet(), 
        vendor.getCity(), vendor.getPincode(), vendor.getState(), vendor.getCode(), vendor.getMonthlyAmount());

        return "redirect:/admin/listvendors";
    }

    @PostMapping("/addproject")
    public String addproject(@ModelAttribute("project") Project project, BindingResult bindingResult){
        projectdao.save(project.getFund(), project.getVendorid(), 
        project.getStartTime(), project.getEndTime(), project.getDescription());

        return "redirect:/admin/listprojects";
    }

    @GetMapping("/addproject")
    public String getproject(Model model){
        model.addAttribute("project",new Project());

        return "addproject";
    }

    @GetMapping("/deleteproject/{projectid}")
    public String deleteproject(@PathVariable(value="projectid") int projectid){
        projectdao.delete(projectid);

        return "redirect:/admin/listprojects";
    }

    @GetMapping("/updateproject/{projectid}")
    public ModelAndView updateproject(@PathVariable(value="projectid") final int projectid){
        ModelAndView model=new ModelAndView("updateproject");
        Project project=new Project();
        Project proj=projectdao.findByid(projectid);
        project.setDescription(proj.getDescription());
        project.setEndTime(proj.getEndTime());
        project.setFund(proj.getFund());
        project.setProjectid(proj.getProjectid());
        project.setStartTime(proj.getStartTime());
        project.setVendorid(proj.getVendorid());

        model.addObject("project",project);
        return model;
    }

    @PostMapping("/updateproject")
    public String updatepostproject(@Valid @ModelAttribute("project") Project project,BindingResult result){
        projectdao.update(project.getProjectid(), project.getFund(), project.getVendorid(), 
        project.getStartTime(), project.getEndTime(), project.getDescription());

        return "redirect:/admin/listprojects";
    }

    @GetMapping("/listprojects")
    public ModelAndView listprojects(){
        ModelAndView model=new ModelAndView("listprojects");
        List<Project> projects=projectdao.showall();
        model.addObject("projects",projects);
        return model;
    }

    @GetMapping("/listservices")
    public ModelAndView listservices(){
        ModelAndView model=new ModelAndView("listservices");
        List<Service> services=servicedao.showall();
        model.addObject("services",services);
        return model;
    }

    @GetMapping("/listvendors")
    public ModelAndView listvendors(){
        ModelAndView model=new ModelAndView("listvendors");
        List<Vendor> vendors=vendordao.showall();
        model.addObject("vendors",vendors);
        return model;
    }

    @PostMapping("/addfacilities")
    public String addfacilities(@ModelAttribute("facility") Facilities facility, BindingResult bindingResult){
        facilitiesdao.save(facility.getAmountPerHour(), facility.getFacilityName());

        return "redirect:/admin/listfacilities";
    }

    @GetMapping("/addfacilities")
    public String getfacilities(Model model){
        model.addAttribute("facility",new Facilities());

        return "addfacilities";
    }

    @GetMapping("/listfacilities")
    public ModelAndView listfacilities(){
        ModelAndView model=new ModelAndView("listfacilities");
        List<Facilities> facilities=facilitiesdao.showall();
        model.addObject("facilities", facilities);

        return model;
    }

    @GetMapping("/updatefacilities/{facilityid}")
    public ModelAndView updatefacilities(@PathVariable(value="facilityid") final int facilityid){
        ModelAndView model=new ModelAndView("updatefacilities");
        Facilities facilities=new Facilities();
        Facilities fac=facilitiesdao.findByid(facilityid);
        facilities.setFacilityName(fac.getFacilityName());
        facilities.setFacilityid(fac.getFacilityid());
        facilities.setAmountPerHour(fac.getAmountPerHour());

        model.addObject("facility",facilities);
        return model;
    }

    @PostMapping("/updatefacilities")
    public String updatepostfacilities(@Valid @ModelAttribute("facility") Facilities facility,BindingResult result){
        facilitiesdao.update(facility.getFacilityid(), facility.getFacilityName(), facility.getAmountPerHour());

        return "redirect:/admin/listfacilities";
    }

    @GetMapping("/deletefacilities/{facilityid}")
    public String deletefacilities(@PathVariable(value="facilityid") int facilityid){
        facilitiesdao.delete(facilityid);

        return "redirect:/admin/listfacilities";
    }

    @GetMapping("/makepayment")
    public String makepayment(@RequestParam("projectid") int projectid, 
    @RequestParam("vendorid") int vendorid, @RequestParam("amount") int amount){
        paiddao.save(projectid, vendorid, amount);

        return "redirect:/admin/listprojects";
    }

    @GetMapping("/viewpayments/{projectid}")
    public ModelAndView payments(@PathVariable("projectid") int projectid){
        List<Paid> payment=paiddao.findByproject(projectid);
        ModelAndView model=new ModelAndView("listpayments");

        model.addObject("payments", payment);
        return model;
    }

    @GetMapping("/paysalary")
    public String paysalary(@RequestParam("serviceid") int serviceid, 
    @RequestParam("vendorid") int vendorid, @RequestParam("salary") int salary, @RequestParam("monthyear") String monthyear){
        salarydao.save(serviceid, vendorid, salary, monthyear);

        return "redirect:/admin/listservices";
    }

    @GetMapping("/viewsalary")
    public ModelAndView viewsalary(@RequestParam("serviceid") int serviceid, @RequestParam("monthyear") String monthyear){
       List<Salary> sal=salarydao.findByid(monthyear, serviceid);
       ModelAndView model=new ModelAndView("viewsalary");
       model.addObject("salaries",sal);

       return model;
    }

}