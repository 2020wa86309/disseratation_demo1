/*package com.bitsdiagnostics.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    private static final String URL = "jdbc:mysql://localhost:3306/BITS_Diagnostics";
    private static final String USER = "root";
    private static final String PASSWORD = "Password@24";

    public static Connection getConnection() {
            Class.forName("com.mysql.cj.jdbc.Driver"); 
            
       // } catch (ClassNotFoundException e) {
          //  e.printStackTrace();
            //e.getStackTrace();
       // }
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}
/