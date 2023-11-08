package com.jk.model;

public class User {
    public static String name;
    public static int age;
    public String userid;
    public String password;
    public static String gender;
    public String email;
    public static String Mstatus;
    public static String[] os;

    public static String[] getOs() {
        return os;
    }

    public static void setOs(String[] os) {
        User.os = os;
    }

    public static String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public static int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public static String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public static String getMstatus() {
        return Mstatus;
    }

    public static void setMstatus(String mstatus) {
        Mstatus = mstatus;
    }
}
