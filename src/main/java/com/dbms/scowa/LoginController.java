package com.dbms.scowa;

import com.dbms.scowa.model.User;
import com.dbms.scowa.model.Resident;

import com.dbms.scowa.service.UserService;
import com.dbms.scowa.service.SecurityService;
import com.dbms.scowa.service.UserService;

import com.dbms.scowa.dao.Ownerdao;
import com.dbms.scowa.dao.Residentdao;
import com.dbms.scowa.dao.Apartmentdao;
import com.dbms.scowa.dao.ForgotPassdao;
import com.dbms.scowa.dao.Userdao;
import com.dbms.scowa.dao.Staffdao;
import com.dbms.scowa.dao.Vendordao;
import com.dbms.scowa.dao.Servicedao;
import com.dbms.scowa.dao.Projectdao;
import com.dbms.scowa.model.Apartment;
import com.dbms.scowa.model.ForgotPass;
import com.dbms.scowa.model.Owner;
import com.dbms.scowa.model.Resident;
import com.dbms.scowa.model.Project;
import com.dbms.scowa.model.Vendor;
import com.dbms.scowa.model.Service;
import com.dbms.scowa.model.Password;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;

import java.util.Calendar;
import java.util.List;
import java.util.Random;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

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
    @Autowired
    private Projectdao projectdao;
    @Autowired
    private Vendordao vendordao;
    @Autowired
    private Servicedao servicedao;
    @Autowired
    private Apartmentdao apartmentdao;
    @Autowired
    private Userdao userdao;
    @Autowired
    private ForgotPassdao passdao;
    
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;
    @Autowired
    private JavaMailSender mailSender;

    @RequestMapping("/")
    public String add(){
        return "test";
    }

    private String getSaltString() {
        String SALTCHARS="ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
        StringBuilder salt=new StringBuilder();
        Random rnd=new Random();
        while (salt.length()<18){ 
            int index=(int)(rnd.nextFloat()*SALTCHARS.length());
            salt.append(SALTCHARS.charAt(index));
        }
        String saltStr=salt.toString();
        return saltStr;
    }

    @GetMapping("/admin/register")
    public String register(Model model){
        User user=userdao.getmax();
        User user1=new User();
        String pass=this.getSaltString();
        user1.setUserid(user.getUserid()+1);
        user1.setPassword(pass);
        model.addAttribute("user",user1);

        return "register";
    }

    @GetMapping("/login")
    public String login(Model model){
        model.addAttribute("user", new User());

        return "login";
    }

    @GetMapping("/forgot/updatepassword")
    public String updatepassword(@RequestParam("userid") int userid, HttpServletRequest request){
        User user=userService.findByid(userid);
        String token=UUID.randomUUID().toString()+"lettheidbe="+Integer.toString(userid);
        String appUrl=request.getScheme()+"://"+request.getServerName()+":"+Integer.toString(request.getServerPort())+"/forgot/resetpassword";
        String url=appUrl+"?token="+token;
        passdao.save(userid, token);
        
        SimpleMailMessage email = new SimpleMailMessage();
        email.setTo(user.getUsername());
        email.setSubject("Link to Change Password");
        email.setText("Click on the link below to change your password\n"+url);	
		mailSender.send(email);

        return "gavelink";
    }

    @GetMapping("/forgot/resetpassword")
    public ModelAndView reset(@RequestParam("token") String token){
        ForgotPass pass=passdao.findByid(token);
        User user=userService.findByid(pass.getUserid());
        User user1=new User();
        user1.setUserid(user.getUserid());
        ModelAndView model=new ModelAndView("forgotpassword");

        model.addObject("user", user1);

        return model;
    }

    @PostMapping("/forgot/postpassword")
    public String postpassword(@ModelAttribute("user") User user,BindingResult bindingResult){
        userService.updatepass(user.getUserid(),user.getPassword());
        passdao.delete();

        return "redirect:/";
    }

    @PostMapping("/admin/register")
    public String register(@ModelAttribute("user") User user, BindingResult bindingResult){
        
        int day=Calendar.getInstance().get(Calendar.DAY_OF_MONTH);
        int year=Calendar.getInstance().get(Calendar.YEAR);
        int month=Calendar.getInstance().get(Calendar.MONTH)+1;
        String day1=Integer.toString(day);
        String month1=Integer.toString(month);
        String year1=Integer.toString(year);
        if(day<10) day1="0"+day1;
        if(month<10) month1="0"+month1;
        String date=day1+"/"+month1+"/"+year1;

        SimpleMailMessage email = new SimpleMailMessage();
        email.setTo(user.getUsername());
        email.setSubject("Userid and Password for SCOWA");
        email.setText("Please update your password after first login\n"+"Your login id="+user.getUserid()+"\n"+"your password="+user.getPassword());	
		mailSender.send(email);

        userService.save(user);
        String type=user.getUserType();
        if(type.equals("staff")){
            staffdao.save(user.getUserid(),date);
        }
        else if(type.equals("resident")){
            residentdao.save(user.getUserid());
        }
        else if(type.equals("owner")){
            ownerdao.save(user.getUserid(),date);
        }
        else if(type.equals("residentowner")){
            ownerdao.save(user.getUserid(),date);
            residentdao.save(user.getUserid());
            Resident resident=residentdao.findByid(user.getUserid());
            Owner owner=ownerdao.findByid(user.getUserid());

            residentdao.update(resident.getResidentName(), -1, resident.getCode(), 
            resident.getNumOfMembers(), resident.getPhone(), true, resident.getUserid());

            ownerdao.update(owner.getCity(),owner.getOwnerName(), owner.getDateOfPurchase(), 
            owner.getCode(),owner.getHouseDetails(), owner.getStreet(), owner.getState(),
            owner.getPincode(), owner.getCountry(),owner.getPhone(), 
            -1,true, owner.getUserid());
        }

        return "admin";
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
            return "redirect:/security/listguests";
        }
        else if(user.getUserType().equals("staff")){
            return "redirect:/staff/home";
        }
        return "redirect:/admin/home";
    }

    @GetMapping("/viewonly/projects")
    public ModelAndView viewprojects(Principal principal){
        ModelAndView model=new ModelAndView("viewprojects");
        List<Project> projects=projectdao.showall();
        model.addObject("projects",projects);

        User user=userService.findByid(Integer.valueOf(principal.getName()));
        String type=user.getUserType();

        int kz=0;
        if(type.equals("resident")) kz=1;
        else if(type.equals("residentowner")) kz=2;
        else if(type.equals("owner")) kz=3;
        else if(type.equals("staff")) kz=4;
        model.addObject("kz", kz);

        return model;
    }

    @GetMapping("/viewonly/services")
    public ModelAndView viewservices(Principal principal){
        ModelAndView model=new ModelAndView("viewservices");
        List<Service> services=servicedao.showall();
        model.addObject("services",services);

        User user=userService.findByid(Integer.valueOf(principal.getName()));
        String type=user.getUserType();

        int kz=0;
        if(type.equals("resident")) kz=1;
        else if(type.equals("residentowner")) kz=2;
        else if(type.equals("owner")) kz=3;
        else if(type.equals("staff")) kz=4;
        model.addObject("kz", kz);

        return model;
    }

    @GetMapping("/viewonly/vendors")
    public ModelAndView viewvendors(Principal principal){
        ModelAndView model=new ModelAndView("viewvendors");
        List<Vendor> vendors=vendordao.showall();
        model.addObject("vendors",vendors);

        User user=userService.findByid(Integer.valueOf(principal.getName()));
        String type=user.getUserType();

        int kz=0;
        if(type.equals("resident")) kz=1;
        else if(type.equals("residentowner")) kz=2;
        else if(type.equals("owner")) kz=3;
        else if(type.equals("staff")) kz=4;
        model.addObject("kz", kz);

        return model;
    }

    @GetMapping("/changepassword")
    public String changepassword(Model model, @RequestParam("kz") int kz){
        model.addAttribute("password",new Password());

        return "changepassword";
    }

    @PostMapping("/changepassword")
    public String changepassword(@ModelAttribute("password") Password password, BindingResult bindingResult, Principal principal, RedirectAttributes ra){

            User user=userService.findByid(Integer.valueOf(principal.getName()));
            boolean matches=bCryptPasswordEncoder.matches(password.getOp(), user.getPassword());
            if(matches==true){
                if(password.getNp1().equals(password.getNp2())){
                    userService.updatepass(user.getUserid(), password.getNp2());

                    return "redirect:/welcome";
                }
            }
            
            ra.addAttribute("kz", 1);
            return "redirect:/changepassword";
    }

    @GetMapping("/apartment/view")
    public ModelAndView viewapartment(@RequestParam("tower") String tower, @RequestParam("flat") String flat, Principal principal){
        Apartment apartment=apartmentdao.findByName(tower, flat);
        ModelAndView model=new ModelAndView("viewapartment");
        model.addObject("apartment", apartment);

        User user=userService.findByid(Integer.valueOf(principal.getName()));
        String type=user.getUserType();

        int kz=0;
        if(type.equals("resident")) kz=1;
        else if(type.equals("residentowner")) kz=2;
        else if(type.equals("owner")) kz=3;
        model.addObject("kz", kz);
        
        return model;
    }

    @GetMapping("/apartment/find")
    public String findapartment(){
        return "apartment";
    }

}