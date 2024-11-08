package com.bitsdiagnostics.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DoctorDetails extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Fetch the selected doctor ID from the form
        String doctorId = request.getParameter("doctorId");

        // Initialize database connection parameters
        String url = "jdbc:mysql://localhost:3306/bits_diagnostics";
        String username = "dbadmin";
        String password = "Password@24";
        Connection conn = null;

        try {
            // Load MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish a connection to the database
            conn = DriverManager.getConnection(url, username, password);

            // Prepare SQL query to fetch doctor details
            String sql = "SELECT * FROM doctors WHERE id = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, Integer.parseInt(doctorId)); // Ensure doctorId is valid

            ResultSet rs = stmt.executeQuery();

            // If doctor details are found
            if (rs.next()) {
                Doctor doctor = new Doctor(
                    rs.getInt("id"),
                    rs.getString("name"),
                    rs.getString("specialization"),
                    rs.getString("degree"),
                    rs.getInt("years_of_experience"),
                    rs.getString("email"),
                    rs.getString("clinicHours"),
                    rs.getString("status"), // Consider renaming "status" in the database to "availability"
                    rs.getDouble("fee")
                );

                // Set doctor details as request attribute
                request.setAttribute("doctor", doctor);

                // Forward the request to show details JSP
                request.getRequestDispatcher("doctorDetail.jsp").forward(request, response);
            } else {
                // If no doctor is found
                response.getWriter().println("Doctor not found.");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Database connection error: " + e.getMessage());
        } finally {
            try {
                if (conn != null) conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
