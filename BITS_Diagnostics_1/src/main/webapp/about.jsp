<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - BITS Diagnostics</title>
    <link rel="stylesheet" href="styles.css">
    <style>
    section {
    background-color: #ffe6f0; /* Light Pink */
    padding: 30px;
    margin: 20px 0;
    border-radius: 10px;
}
          .alert {
  padding: 10px;
  background-color: #228B22; 
  color: white;
  text-align: center;
}
/* The close button */
.closebtn {
  margin-left: 15px;
  color: white;
  font-weight: bold;
  float: right;
  font-size: 22px;
  line-height: 20px;
  cursor: pointer;
  transition: 0.3s;
}

/* When moving the mouse over the close button */
.closebtn:hover {
  color: black;
}

 .blink {
  animation: blink 1s steps(1, end) infinite;
}

@keyframes blink {
  0% {
    opacity: 1;
  }
  50% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
    
    </style>
</head>
<body>
    
        <h1>BITS Diagnostics</h1>
        <h3 style=" text-align: center;">                     Unlock the secret to optimal health             </h3>
        
    
    <section >
        <h2>About BITS Diagnostics</h2>
        <p>
            BITS Diagnostics is a leading healthcare service provider, established with the mission to offer accessible and high-quality diagnostic and medical services. Founded in 2010, BITS Diagnostics has grown into a trusted name in the medical community, known for its commitment to excellence, cutting-edge technology, and patient-centered care.
        </p>
        
        <h3>Our Mission:</h3>
        <p>
            Our mission is to improve the health and well-being of our community by providing high-quality, affordable diagnostic and medical services. We believe that healthcare should be accessible to everyone, and we work tirelessly to ensure that our services meet the needs of our patients with compassion and professionalism.
        </p>

        <h3>Core Values:</h3>
        <ul>
            <li><strong>Patient-Centered Care:</strong> Every patient is treated with dignity, respect, and care.</li>
            <li><strong>Innovation:</strong> We leverage the latest medical technologies to offer advanced diagnostic solutions.</li>
            <li><strong>Quality:</strong> We maintain the highest standards of accuracy and reliability in our tests and consultations.</li>
            <li><strong>Accessibility:</strong> Our services are designed to be affordable and accessible to all.</li>
        </ul>

        <h3>What We Offer:</h3>
        <ul>
            <li>Medical Testing: A broad spectrum of tests, from routine blood work to advanced diagnostic procedures.</li>
            <li>Doctor Consultations: Consultations with highly qualified specialists in multiple fields.</li>
            <li>Health Packages: Comprehensive health check-up packages for all age groups.</li>
            <li>Vaccinations: Immunization services for adults and children.</li>
            <li>In-Clinic Consultation: Personalized care in our state-of-the-art clinics.</li>
            <li>Gym & Wellness: Offering gym and wellness programs to promote fitness and well-being.</li>
            <li>24/7 Support: We are here for you round-the-clock to address your health concerns.</li>
        </ul>

        <h3>Future Plans:</h3>
        <p>
            We are excited about the future of BITS Diagnostics and our ongoing efforts to expand and innovate:
        </p>
        <ul>
            <li><strong>Insurance Partnerships:</strong> We will soon be launching affordable health insurance plans.</li>
            <li><strong>New Branches:</strong> Expanding to Mumbai, Delhi, Bengaluru, Chennai, and Hyderabad.</li>
            <li><strong>Telemedicine:</strong> Developing a robust telemedicine platform for online consultations.</li>
            <li><strong>Innovative Diagnostics:</strong> Our R&D team is working on cutting-edge diagnostic tools.</li>
        </ul>
    </section>
   <section style="background-color:#dff0d8; padding: 30px; margin: 20px; border-radius: 10px; border: 5px solid black;">
  <div >
  <p style="text-size: bold";>
  Check below for more Packages and Exciting Offers:   
  <span class="blink" ><a href="offer.html" style="background-color: #ffcc00; color: #ffffff; padding: 10px 20px; 
       border-radius: 25px; font-weight: bold; text-decoration: none;" >  Click Here  </a>  </span>for Payment
</p>
  </div>
  </section>

<br><br>
    <nav>
        <a href="home.jsp">Return to Home</a>
        </nav>
        
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
</body>
</html>
