package com.jk.controller;

import com.jk.model.User;
import com.jk.userdao.UserDao;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.SQLException;
import java.util.Arrays;

@Controller
public class AuthController {
    private UserDao userDao;
    public AuthController() throws SQLException, ClassNotFoundException {
        userDao=new UserDao();
    }

    @RequestMapping("/login")
    public String login(@RequestParam("username") String username, @RequestParam("password") String password, Model model) {
        User valid = userDao.loginUser(username,password);
        if(valid!=null){
            String arrastr = Arrays.toString(User.getOs());

            model.addAttribute("name", User.getName());
            model.addAttribute("age", User.getAge());
            model.addAttribute("gender", User.getGender());
            model.addAttribute("mstatus",User.getMstatus());
            String dataWithoutBrackets = arrastr.substring(1, arrastr.length() - 1);
            String[] dataArray = dataWithoutBrackets.split(",");

            model.addAttribute("data", dataArray);
            return "home";
        }
        else {
            return "index";
        }
    }
    @RequestMapping("/signup")
    public String signup(){
        return "register";
    }


}
