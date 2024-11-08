<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Healthy Diet Tips</title>
    <link rel="stylesheet" href="styles.css">
    
    <style>
    .diet-section {
            background-color: #fff7e6; /* Light cream background for the section */
            padding: 30px;
            border-radius: 10px;
            margin-top: 40px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .diet-section h2 {
            font-size: 2rem;
            color: #008080; /* Teal color */
            margin-bottom: 20px;
        }

        .diet-section ul {
            list-style: none;
            padding: 0;
        }

        .diet-section li {
            font-size: 1.2rem;
            margin-bottom: 15px;
            line-height: 1.6;
        }

        .diet-section li::before {
            content: "✔️"; /* Checkmark for each list item */
            color: #ff6347; /* Tomato color for checkmark */
            margin-right: 10px;
        }
    h2{
    text-align: center;
            font-size: 2.5rem;
            color: #FF204E; /* Tomato color for main heading */
            margin-top: 20px;
    }
    </style>
    
</head>
<body>
  <h2>Healthy Diet Tips</h1>
        <img src="images/HealthyDiet1.jpeg" alt="Mediatation" style="margin-left: 650px;    width: 200px;
            height: 100px;
            object-fit: cover;
            border-radius: 8px;">
   <div class="diet-section">
        
        <ul>
            <li>Include a variety of foods in your diet, such as vegetables, fruits, whole grains, and lean proteins.</li>
            <li>Drink plenty of water and stay hydrated throughout the day.</li>
            <li>Avoid processed foods and limit sugar intake.</li>
            <li>Eat smaller portions more frequently to maintain energy levels.</li>
            <li>Incorporate healthy fats such as nuts, seeds, and olive oil.</li>
        </ul>
    </div>
<br><br><br>
      <h3 style="text-align:center; color: #902385;">Thank you for choosing BITS Diagnostics.</h3><br><br>
        
        <nav>
        <a href="home.jsp">Return to Home</a><br><br>
        </nav>
  <br><br>
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
