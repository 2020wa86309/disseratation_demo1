package com.bitsdiagnostics.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class DoctorListServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String date = request.getParameter("appointmentDate");
    String time = request.getParameter("appointmentTime");
    String name = request.getParameter("doctor");
    HttpSession session = request.getSession();
    String username = (String) session.getAttribute("name");

    Connection con = null;
    RequestDispatcher dispatcher = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bits_diagnostics", "dbadmin", "Password@24");

        // Insert appointment details into the database
        PreparedStatement patientStmt = con.prepareStatement("SELECT id,name FROM patients WHERE username = ?");
        patientStmt.setString(1, username);
        ResultSet patientRs = patientStmt.executeQuery();

        if (!patientRs.next()) {
            request.setAttribute("status", "Patient not found");
            PrintWriter pw= response.getWriter();
            pw.println("Username "+username+" Not found");
            dispatcher = request.getRequestDispatcher("appointment.jsp");
            dispatcher.forward(request, response);
            return;
        }

        int patientId = patientRs.getInt("id");
        //String patientName = patientRs.getString(name);
        // Fetch doctor ID
        PreparedStatement doctorStmt = con.prepareStatement("SELECT id FROM doctors WHERE name = ?");
        doctorStmt.setString(1, name);
        ResultSet doctorRs = doctorStmt.executeQuery();

        if (!doctorRs.next()) {
        	request.setAttribute("status", "success");
            request.setAttribute("date", date);
            request.setAttribute("time", time);
           // request.setAttribute("username", username);
            
            dispatcher = request.getRequestDispatcher("confirmation.jsp");
            dispatcher.forward(request, response);

            return;
        }

        int doctorId = doctorRs.getInt("id");

        // Insert appointment
        PreparedStatement appointmentStmt = con.prepareStatement(
            "INSERT INTO appointments(patient_id, doctor_id, date, time) VALUES(?, ?, ?, ?)"
        );
        appointmentStmt.setInt(2, patientId);
        appointmentStmt.setInt(3, doctorId);
        appointmentStmt.setString(4, date);
        appointmentStmt.setString(5, time);

        int rowCount = appointmentStmt.executeUpdate();



       // int rowCount = stmt.executeUpdate();

        // If rowCount > 0, the booking is successful; forward to confirmation.jsp
        if (rowCount > 0) {
            request.setAttribute("status", "success");
            request.setAttribute("name",name);
            request.setAttribute("date",date);
            request.setAttribute("time",time);
           // setAttribute("patientName", patientName);
            dispatcher = request.getRequestDispatcher("confirmation.jsp");
        } else {
            // If booking fails, show a failure message and stay on the same page
            request.setAttribute("status", "failed");
            dispatcher = request.getRequestDispatcher("appointment.jsp");
        }
        dispatcher.forward(request, response);

    } catch (ClassNotFoundException e) {
        e.printStackTrace();
        throw new ServletException("JDBC Driver not found", e);
    } catch (SQLException e) {
        e.printStackTrace();
        throw new ServletException("Database error occurred", e);
    } finally {
        try {
            if (con != null) {
                con.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
}
