<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>

<html>

<head>
    <meta charset="UTF-8">
    <title>Test Confirmation</title>
    
</head>
<body>
<div  style="background-color: rgb(0, 128, 64), 255, 0; /* White background for form */
    padding: 40px;
    border-radius: 10px;
    box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.1);
    max-width: 400px;
    width: 100%;
     margin-left: 550px;
     margin-top: 100px;">
    <header>
        <h2>Test Confirmation</h2>
    </header>

    <section>
        <p>Your test has been successfully scheduled.</p>
       <p>Patient Name: ${patientName}</p>
    <p>Test Name: ${testName}</p>
    <p>Test Lab Location: ${testLabName}</p>
    <p>Date: ${testDate}</p>
    <p>Time: ${testTime}</p>
        <p>Thank you for choosing BITS Diagnostics.</p>
        
        <nav>
        <a href="home.jsp">Return to Home</a>
        </nav>
        
    </section>
    </div>
</body>

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
