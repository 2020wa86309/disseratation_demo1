package com.bitsdiagnostics.servlet;

import java.io.IOException;
//import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        HttpSession session = request.getSession();
        RequestDispatcher dispatcher = null;
        
        Connection con = null;

        try {
            // Load the MySQL driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Establish the connection
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bits_diagnostics", "dbadmin", "Password@24");
            
            // Create SQL query to check username and password
            PreparedStatement smt = con.prepareStatement("SELECT * FROM patients WHERE username = ? AND password = ?");
            smt.setString(1, username);
            smt.setString(2, password);
            
            ResultSet rs = smt.executeQuery();
            
            if (rs.next()) {
                System.out.println("Login successful for user: " + username);
                session.setAttribute("name", rs.getString("username"));
                dispatcher = request.getRequestDispatcher("home.jsp");
            } else {
                System.out.println("Login failed for user: " + username);
                request.setAttribute("status", "failed");
                dispatcher = request.getRequestDispatcher("login.jsp");
            }
            
            dispatcher.forward(request, response);
            
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            throw new ServletException("Database connection problem", e);
        } finally {
            // Close the connection if it was established
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
