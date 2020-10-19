package com.dbms.scowa;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.mail.javamail.JavaMailSender;

import com.dbms.scowa.service.UserDetailsServiceImpl;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    UserDetailsServiceImpl userDetailsService;

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
        return bCryptPasswordEncoder;
    }

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
    }

    @Bean
    public AuthenticationManager customAuthenticationManager() throws Exception {
        return authenticationManager();
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {

        http.csrf().disable();

        http.authorizeRequests().antMatchers("/", "/login", "/logout").permitAll();

        http.authorizeRequests().antMatchers("/admin","/admin/**").access("hasAuthority('admin')");
        http.authorizeRequests().antMatchers("/resident", "/resident/**").access("hasAnyAuthority('resident','residentowner')");
        http.authorizeRequests().antMatchers("/owner", "/owner/**").access("hasAnyAuthority('owner','residentowner')");
        http.authorizeRequests().antMatchers("/staff/**").access("hasAuthority('staff')");
        http.authorizeRequests().antMatchers("/security", "/security/**").access("hasAnyAuthority('security')");
        http.authorizeRequests().antMatchers("/viewonly","/viewonly/**").access("hasAnyAuthority('resident','residentowner','staff','owner','admin')");
        http.authorizeRequests().antMatchers("/changepassword","/changepassword/**").access("hasAnyAuthority('resident','residentowner','staff','owner','admin','security')");
        http.authorizeRequests().antMatchers("/apartment", "/apartment/**").access("hasAnyAuthority('owner','residentowner','resident')");
        http.authorizeRequests().antMatchers("/forgot","/forgot/**").permitAll();

        http.authorizeRequests().and().formLogin().loginPage("/login").loginProcessingUrl("/j_spring_security_check")
                .defaultSuccessUrl("/welcome").usernameParameter("userid")
                .passwordParameter("password").and().logout().logoutUrl("/logout").logoutSuccessUrl("/");

    }
}