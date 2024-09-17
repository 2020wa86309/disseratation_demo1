package com.bitsdiagnostics.servlets;

import com.bitsdiagnostics.utils.DBConnection;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class TestBookingServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        int patientId = (int) session.getAttribute("patientId");
        String test = request.getParameter("test");
        String appointmentDate = request.getParameter("appointmentDate");

        try (Connection conn = DBConnection.getConnection()) {
            String sql = "UPDATE appointments SET test = ? WHERE patient_id = ? AND appointment_date = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, test);
            stmt.setInt(2, patientId);
            stmt.setString(3, appointmentDate);
            stmt.executeUpdate();

            response.sendRedirect("confirmation.jsp?test=" + test + "&date=" + appointmentDate);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
