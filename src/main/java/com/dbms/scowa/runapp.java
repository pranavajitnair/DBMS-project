package com.dbms.scowa;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dbms.scowa.model.User;

@Controller
public class runapp{
    @RequestMapping("/")
    public String add(){
        System.out.println("Welcome");
        return "test";
    }
    @RequestMapping("/welcome")
    public ModelAndView main(){
        ModelAndView model= new ModelAndView("new");
        User user=new User();
        model.addObject("user",user);
        return model;
    }
    @RequestMapping("/test1")
    public String add1(){
        System.out.println("Welcome");
        return "test1";
    }
}