package com.bitsdiagnostics.servlet;

import java.io.IOException;
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

//@WebServlet("/ConfirmTestServlet")
public class ConfirmTestServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get test information from the form
        String testId = request.getParameter("test");
        String testDate = request.getParameter("testDate");
        String testTime = request.getParameter("testTime");

        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("name");

        Connection con = null;
        PreparedStatement patientStmt = null;
        PreparedStatement testStmt = null;
        ResultSet patientRs = null;
        ResultSet testRs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bits_diagnostics", "dbadmin", "Password@24");

            // Fetch patient ID based on the session's username
            String getPatientIdQuery = "SELECT id, name FROM patients WHERE username = ?";
            patientStmt = con.prepareStatement(getPatientIdQuery);
            patientStmt.setString(1, username);
            patientRs = patientStmt.executeQuery();

            if (patientRs.next()) {
                int patientId = patientRs.getInt("id");
                String patientName = patientRs.getString("name");

                // Insert test booking into the booked_tests table
                String insertBookingQuery = "INSERT INTO booked_tests(patient_id, test_id, date, time) VALUES(?, ?, ?, ?)";
                PreparedStatement bookingStmt = con.prepareStatement(insertBookingQuery);
                bookingStmt.setInt(1, patientId);
                bookingStmt.setString(2, testId);
                bookingStmt.setString(3, testDate);
                bookingStmt.setString(4, testTime);
                bookingStmt.executeUpdate();

                // Fetch test details
                String getTestDetailsQuery = "SELECT test_name, test_lab_name FROM list_tests WHERE id = ?";
                testStmt = con.prepareStatement(getTestDetailsQuery);
                testStmt.setString(1, testId);
                testRs = testStmt.executeQuery();

                if (testRs.next()) {
                    String testName = testRs.getString("test_name");
                    String testLabName = testRs.getString("test_lab_name");

                    // Set attributes for confirmation display
                    request.setAttribute("patientName", patientName);
                    request.setAttribute("testName", testName);
                    request.setAttribute("testLabName", testLabName);
                    request.setAttribute("testDate", testDate);
                    request.setAttribute("testTime", testTime);

                    // Forward to confirmation page
                    RequestDispatcher dispatcher = request.getRequestDispatcher("confirmationTest.jsp");
                    dispatcher.forward(request, response);
                }
            } else {
                throw new ServletException("Unable to find patient with username: " + username);
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            throw new ServletException("Error occurred while booking the test", e);
        } finally {
            try {
                if (patientRs != null) patientRs.close();
                if (testRs != null) testRs.close();
                if (patientStmt != null) patientStmt.close();
                if (testStmt != null) testStmt.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
