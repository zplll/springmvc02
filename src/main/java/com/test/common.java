package com.test;

import java.sql.*;

/**
 * Created by zipon on 2016/9/17.
 */
public class common {
    public static void mysqlexec(String sqlstr) throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        String url="jdbc:mysql://192.168.1.10:3306/qiu?user=root&password=888888";
        Connection conn= DriverManager.getConnection(url);
        Statement stmt=conn.createStatement();
        stmt.executeUpdate(sqlstr);
        System.out.println("执行完成");
    }
}
