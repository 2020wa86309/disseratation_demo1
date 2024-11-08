<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.bitsdiagnostics.servlet.Doctor" %>
<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Doctor Details - BITS Diagnostics</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            color: #333;
            padding: 20px;
        }
        .doctor-details {
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin: auto;
            max-width: 600px;
        }
        h2 {
            color: #5a5a5a;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ddd;
        }
        th {
            background-color: #9ACD32;
        }
        .back-button {
            margin-top: 20px;
            padding: 10px 15px;
            color: #fff;
            background-color: #007bff;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            display: inline-block;
        }
        .back-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<%
    // Fetch doctor details from request attribute
    Doctor doctor = (Doctor) request.getAttribute("doctor");

    if (doctor != null) {
%><br><br>
        <div class="doctor-details">
            <h2>Doctor Details</h2>
            <table>
                <tr>
                    <th>ID</th>
                    <td><%= doctor.getId() %></td>
                </tr>
                <tr>
                    <th>Name</th>
                    <td><%= doctor.getName() %></td>
                </tr>
                <tr>
                    <th>Specialization</th>
                    <td><%= doctor.getSpecialization() %></td>
                </tr>
                <tr>
                    <th>Degree</th>
                    <td><%= doctor.getDegree() %></td>
                </tr>
                <tr>
                    <th>Years of Experience</th>
                    <td><%= doctor.getYearsOfExperience() %></td>
                </tr>
                <tr>
                    <th>Email</th>
                    <td><%= doctor.getEmail() %></td>
                </tr>
                <tr>
                    <th>Clinic Hours</th>
                    <td><%= doctor.getClinicHours() %></td>
                </tr>
                <tr>
                    <th>Status</th>
                    <td><%= doctor.getAvailability() %></td>
                </tr>
                <tr>
                    <th>Fee</th>
                    <td>₹ <%= doctor.getFee() %>/-</td>
                </tr>
            </table>
            <a class="back-button" href="doctors.jsp">Back to Doctors List</a>
        </div>
<%
    } else {
%>
        <div class="doctor-details">
            <h2>No doctor details available</h2>
            <p>Please select a doctor to view their details.</p>
            <a class="back-button" href="doctors.jsp">Back to Doctors List</a>
        </div>
<%
    }
%>
<h3 style="text-align:center; color: #902385;">Thank you for choosing BITS Diagnostics.</h3><br><br>
</body>

<br><br><br>


<footer style="background-color: #333; color: white; padding: 20px; text-align: center;">
  <div>
    <a href="privacy-policy.html" style="color: white; margin-right: 15px;">Privacy Policy</a>
    <a href="terms-of-service.html" style="color: white; margin-right: 15px;">Terms of Service</a>
    <a href="faq.html" style="color: white; margin-right: 15px;">FAQs</a>
    <a href="contact-us.html" style="color: white;">Contact Us</a>
    <a href="emergency.html" style="color: white;">Emergency Service</a>
  </div>
  <div style="margin-top: 10px;">
    <p>Follow us:</p>
    <img src="images/fb.png"; alt="Facebook" target="_blank"; style="color: 'white'; margin-right: 15px; width:20px; height: 20px">
     <img src="images/x.png"; alt="Facebook" target="_blank"; style="color: 'white'; margin-right: 15px;width:30px; height: 20px">
  </div>

        <p>&copy; 2024 BITS Diagnostics</p>
 </footer>
</html>
