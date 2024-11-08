<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
.dashboard-container{
    background-color: rgb(0, 128, 64), 255, 0; /* White background for form */
    padding: 40px;
    border-radius: 10px;
    box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.1);
    max-width: 400px;
    width: 100%;
     margin-left: 550px;
}
.options{
	background-color: rgb(0, 128, 64), 255, 0; /* White background for form */
    padding: 40px;
    border-radius: 10px;
    box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.1);
    max-width: 400px;
    width: 100%;
     margin-left: 550px;
}
.body{
margin: 0;
            padding: 0;
            height: 100vh;
            background-image: url('background.jpg'); /* Replace with your image */
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            background-attachment: fixed; /* Keeps the image fixed on scroll */
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: Arial, sans-serif;
            text-align:center;
}

.h1{
text-align: center;
    color: #ff4081; /* Pink */
    font-size: 2.5rem;
}
 a {
    color: #fff;
    background-color: #FFC2D9; 
    padding: 12px 20px;
    border-radius: 5px;
    margin: 0 10px;
    display: inline-block;
}

 a:hover {
    background-color: #7CB9E8; /* Lighter Green */
    border-radius: 20px;
}

</style>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
   
   <div class="overlay">
        <h2  style=" text-align: center;">Welcome </h2><h1>${name}</h1>
        <p style=" text-align: center;"><strong>Email:</strong> ${email}</p>
        <p style=" text-align: center;"><strong>Contact Number:</strong> ${mobile_number}</p><br><br>
        <h2 style=" text-align: center;">Your Appointments</h2>
        <!-- Display past appointments here -->
        
        <!-- Navigation Links -->
        <nav>
          
           <a href="dietTips.jsp">Healthy Diet Tips</a> | 
           <a href="meditation.jsp">Meditation Techniques</a> | 
           <a href="recipes.jsp">Healthy Recipes</a>|<br>
        </nav>
    </div>
<br><br>
    <!-- Options -->
    <div class="options">
        <h2>Live Better Everyday</h2>
        <p>High quality health information and guidance</p>
        <ul>
            <li><a href="dietTips.jsp">Healthy Diet Tips</a></li><br>
            <li><a href="meditation.jsp">Meditation Types and Steps</a></li><br>
            <li><a href="recipes.jsp">Healthy Recipes</a></li><br>
            <li><a href="mentalHealthMusic.jsp">Mental Health Music</a></li><br>
            <li><a href="yogaBenefits.jsp">Benefits of Yoga</a></li><br><br>
            <li><a href="suryaNamaskar.jsp">Surya Namaskar Steps</a></li><br>
        </ul>

        <!-- YouTube Links for Calm Music -->
        <h3>Calm Music</h3>
        <p>Relax with some soothing music:</p>
        <ul>
            <li><a href="https://www.youtube.com/watch?v=TJQPA_pbwnc">Morning bliss Raag Bhairav | Pandit Venkatesh Kumar</a></li><br>
            <li><a href="https://www.youtube.com/watch?v=48mL3jer5Do">Relaxing rain music, sleep induction music</a></li><br>
             <li><a href="https://www.youtube.com/watch?v=RzoO756PvL8">Voice of the moon</a></li><br>
             <li><a href="https://www.youtube.com/watch?v=tByA8vHEFk4"> Raag Rang video</a></li>
        </ul>
    </div>
   <br>
<nav class="nav-container">
    <a href="home.jsp">Home</a> |
    <a href="about.jsp"> About Us</a>| 
    <a href="logout.jsp"> Logout</a>| 
    <a href="appointment.jsp">Appointment Booking</a> |
    <a href="test.jsp">Book Test</a>
</nav>
<br><br><br>
<h3 style="text-align:center; color: #902385;">Thank you for choosing BITS Diagnostics.</h3><br><br>
  
</body>

<br><br>
<br>
<footer>
<div>
 <a href="privacy-policy.html" style="background-color:#333; color: white;margin-right: 15px;">Privacy Policy</a>
    <a href="terms-of-service.html" style="background-color:#333; color: white; margin-right: 15px;">Terms of Service</a>
    <a href="faq.html" style=" background-color:#333; color: white; margin-right: 15px;">FAQs</a>
    <a href="contact-us.html" style="background-color:#333; color: white;">Contact Us</a>
    <a href="emergency.html" style=" background-color:#333; color: white;">Emergency Service</a>
    <p>Follow us:</p>
    <img src="images/fb.png"; alt="Facebook" target="_blank"; style="color: 'white'; margin-right: 15px; width:20px; height: 20px">
     <img src="images/x.png"; alt="Facebook" target="_blank"; style="color: 'white'; margin-right: 15px;width:30px; height: 20px">
  </div>

        <p>&copy; 2024 BITS Diagnostics</p>
 </footer>
</html>
