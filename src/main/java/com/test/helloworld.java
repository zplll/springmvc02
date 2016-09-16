package com.test;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;
import org.apache.log4j.jmx.LoggerDynamicMBean;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.sql.SQLException;


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
        return "success";
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
