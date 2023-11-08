package com.jk.userdao;

import com.jk.dbconnection.Dbconnection;
import com.jk.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;

public class UserDao {
    Connection con;

    public UserDao() throws SQLException, ClassNotFoundException {
        con=Dbconnection.getconnection();
    }

    public static final String SELECT_USER = "SELECT * FROM user WHERE email=? AND password=?;";
    public static final String INSERT_USER = "INSERT INTO user (email, password, name, age, gender, maritalstatus, os) VALUES (?,?,?,?,?,?,?);";

    public User loginUser(String username, String password) {
        User user = null;

        try {
            PreparedStatement ps1 = con.prepareStatement(SELECT_USER);
            ps1.setString(1, username);
            ps1.setString(2, password);
            ResultSet rs = ps1.executeQuery();
            if (rs.next()) {
                user = new User();
                user.setUserid(String.valueOf(rs.getInt("id")));
                user.setName(rs.getString("name"));
                user.setPassword(rs.getString("password"));
                user.setEmail(rs.getString("email"));
                user.setAge(rs.getInt("age"));
                user.setGender(rs.getString("gender"));
                User.setMstatus(rs.getString("maritalstatus"));
                User.setOs(new String[]{rs.getString("os")});
                return user;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    public Boolean register(String name, String username, int age, String password, String gender, String status, String[] checkbox) {
        try {
            PreparedStatement ps= con.prepareStatement(INSERT_USER);
            ps.setString(1,username);
            ps.setString(2,password);
            ps.setString(3,name);
            ps.setString(4, String.valueOf(age));
            ps.setString(5,gender);
            ps.setString(6,status);
            ps.setString(7, Arrays.toString(checkbox));
            ps.executeUpdate();
            return true;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
}
