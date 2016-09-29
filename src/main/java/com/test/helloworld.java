package com.test;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;
import org.json.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.nio.charset.Charset;
import java.sql.ResultSet;
import java.sql.SQLException;

import static com.test.common.mysqlselect;

/**
 * Created by zipon on 2016/9/4.
 */
@Controller

public class helloworld {
    //Logger log=Logger.getLogger(helloworld.class);
    static Logger log=Logger.getLogger(helloworld.class);


    @RequestMapping("/hhh")
    public String hello()
    {
        PropertyConfigurator.configure("config/properties/log4j.properties");
        log.debug("打开helloworld页面！");
        System.out.println("hello");
        return "helloworld";
    }
    @RequestMapping("sss")
    public String succ(){
        System.out.println("成功了");
        return  "success";
    }

    @RequestMapping("zhuce")
    public String zhuce(HttpServletRequest request) throws SQLException, ClassNotFoundException {
        String reqname=request.getParameter("username");
        String reqpassws=request.getParameter("password");
        String sqlstr="insert into user_info(username,passwd,createtime) values ('"+reqname+"','"+reqpassws+"',now());";
        common.mysqlexec(sqlstr);
        return "login";
    }

    @RequestMapping("login")
    @ResponseBody
    public String loginCtrl(@RequestParam String username,@RequestParam  String password){
        JSONObject resdata=new JSONObject();
        resdata.put("username",username);
        resdata.put("password",password);
        String sqlstr="select * from user_info where username='"+username+"' and passwd='"+password+"';";
        try {
            ResultSet rs= common.mysqlselect(sqlstr);
            if(rs.next()){
                resdata.put("msg","congratulations , login success!");
            }
            else {
                resdata.put("msg","login erron , check your username and password!");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return String.valueOf(resdata);
    }
    public static void threadTest(){
        Runnable th=new Runnable() {
            public void run() {
                System.out.println("run();");
                for (int i=0;i<1000;i++){
                    System.out.println(i);
                }
            }
        };
        Thread th1=new Thread(th);
        th1.start();
    }
    public static void  main(String[] args){
        //log.debug("123");
        threadTest();
        threadTest();

    }
}
