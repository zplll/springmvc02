package com.test;

import org.json.JSONObject;

/**
 * Created by zipon on 2016/9/24.
 */
public class ResData extends JSONObject {
    private String code;
    private String msg;
    private JSONObject data;
    public JSONObject creResData(){
        JSONObject tempdata=new JSONObject();
        tempdata.put("code",code);
        tempdata.put("msg",msg);
        tempdata.put("data",data);
        return  tempdata;
    }
}
