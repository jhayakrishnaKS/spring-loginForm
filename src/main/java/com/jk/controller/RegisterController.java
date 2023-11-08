package com.jk.controller;

import com.jk.userdao.UserDao;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.SQLException;

@Controller
public class RegisterController {
    private UserDao userDao;
    public RegisterController() throws SQLException, ClassNotFoundException {
        userDao=new UserDao();
    }

    @RequestMapping("/register")
    public String register(@RequestParam("name")String name,
                           @RequestParam("username") String username,
                           @RequestParam("age") int age,
                           @RequestParam("password")String password,
                           @RequestParam("cpassword") String cpassword,
                           @RequestParam("gender")String gender,
                           @RequestParam("status")String status,
                           @RequestParam("OS") String[] checkbox){
        if(cpassword.equals(password)){
            Boolean regi = userDao.register(name,username,age,password,gender,status,checkbox);
        }
        return "index";
    }
}
