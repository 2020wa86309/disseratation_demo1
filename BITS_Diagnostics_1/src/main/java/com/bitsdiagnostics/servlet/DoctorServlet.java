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
import com.bitsdiagnostics.servlet.Doctor;

public class DoctorServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final String DB_URL = "jdbc:mysql://localhost:3306/yourdatabase";
    private static final String DB_USER = "dbadmin";
    private static final String DB_PASSWORD = "password";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get the doctorId from the form
        String doctorId = request.getParameter("doctorId");

        // Initialize doctor object to hold details
        Doctor doctor = null;

        try (Connection con = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             PreparedStatement ps = con.prepareStatement("SELECT * FROM doctors WHERE id = ?")) {
            ps.setInt(1, Integer.parseInt(doctorId));
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                // Create a new Doctor object and populate it
                doctor = new Doctor();
                doctor.setId(rs.getInt("id"));
                doctor.setName(rs.getString("name"));
                doctor.setDegree(rs.getString("degree"));
                doctor.setSpecialization(rs.getString("specialization"));
                doctor.setYearsOfExperience(rs.getInt("years_of_experience"));
                doctor.setEmail(rs.getString("email"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        // Set the doctor object in the request
        request.setAttribute("doctor", doctor);

        // Forward to JSP page to display the details
        request.getRequestDispatcher("doctorDetail.jsp").forward(request, response);
    }
}
