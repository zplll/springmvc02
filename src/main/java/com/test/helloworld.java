package com.test;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;


/**
 * Created by zipon on 2016/9/4.
 */
@Controller

public class helloworld {

    @RequestMapping("/hhh")
    public String hello()
    {
        System.out.println("hello");
        return "helloworld";
    }
    @RequestMapping("sss")
    public String succ(){
        System.out.println("成功了");
        return  "success";
    }
}
