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

public class AppointmentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        int patientId = (int) session.getAttribute("patientId");
        String appointmentDate = request.getParameter("appointmentDate");

        try (Connection conn = DBConnection.getConnection()) {
            String sql = "INSERT INTO appointments (patient_id, appointment_date) VALUES (?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, patientId);
            stmt.setString(2, appointmentDate);
            stmt.executeUpdate();

            response.sendRedirect("tests.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
