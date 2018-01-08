package com.xspace.controller;

import com.xspace.model.Conectar;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

public class HomeController {
    
    private JdbcTemplate jdbcTemplate;
    
    public HomeController(){
        Conectar con = new Conectar(); 
        this.jdbcTemplate = new JdbcTemplate(con.conectar());
        
    }
    
    @RequestMapping("home.htm")
    public ModelAndView home(){
        ModelAndView mav = new ModelAndView();
        
        //sql
        String sql = "select * from usuarios order by id desc";
        List datos = this.jdbcTemplate.queryForList(sql);
        
        //pasar parametros a la vista
        mav.addObject("datos",datos);
        
        
        mav.setViewName("home");
        return mav;
        
        
    }
}
