<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home - BITS Diagnostics</title>
    <link rel="stylesheet" href="styles.css"> 
<style>
        /* Container with two columns: main content on the left, QR code on the right */
        .container {
            display: flex;
            justify-content: space-between;
            
        }

        /* Left column (main content) styling */
        .main-content {
            flex: 1;
            margin-right: 20px;
        }

        /* Right column (QR code section) styling */
        .qr-code {
            width: 200px;
            text-align: right;
        }

        .qr-code img {
            width: 150px;
            height: 150px;
        }

        footer {
            background-color: #333;
            color: white;
            padding: 20px;
            text-align: center;
        }

        footer a {
            color: white;
            margin-right: 15px;
        }

        footer div {
            margin-top: 10px;
        }
        .alert {
  padding: 10px;
  background-color: #228B22; 
  color: white;
  text-align: center;
  margin-left: 100px;
  margin-right: 100px;
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
 welcome-section {
 background-color: #FFE5B4; /* Light Pink */
    padding: 30px;
    margin: 20px ;
    border-radius: 10px;
 }
    </style>
    
</head>


<body>
    
<br><br>

<div class="alert">
  <span class="closebtn">&times;</span>  
  <strong>Success!</strong> You have successfully logged in to your account!!
</div>

        <marquee behavior="scroll" direction="left" scrollamount="5" style="background-color: #f0f0f0; color: #333; font-weight: bold; padding: 10px;">
        "Book your appointment today and get priority consultation!" | "Get 24/7 Support from Expert Doctors" | "Get your test results delivered to your inbox."
    </marquee>    
 
  
    
       
        <h4 style="margin-left: 500px; display: flex;"> Welcome, <%= session.getAttribute("name") %>. What would you like to do today?</h4>
   
     <nav>
    <br>
        <a href="appointment.jsp">Book Appointment</a>
        <a href="tests.jsp">Schedule Test</a>
        <a href="DashboardServlet">Dashboard</a>
        <a href="yogaBenefits.html">Yoga</a> <!-- Route to index.html -->
        <a href="doctors.jsp">Doctors</a>
        <a href="logout.jsp">Logout</a>
        <a href="offer.jsp">Take Subscription</a>
    </nav>
    <br><br>
    <div class="container">
        <!-- Main content on the left side -->
        <div style="backgound-color: #EC5800; color: #333; padding: 10px; border-radius:20px;text-align:center;">
           
             <h2 style="background-color: #EC5800; color: #333; font-weight: bold; padding: 10px; border-radius:20px;text-align:center;animation: blink 3s steps(1, end) infinite;">
        Winter Special: Book a Consultation Today and Get 10% Off on Health Packages!
    </h2>    
            
            <p>We provide expert medical diagnostics services.</p>
             <p>Future plans include introducing insurance facilities, expanding branches to Mumbai, Delhi, Bengaluru, Chennai, Hyderabad, and implementing innovative healthcare solutions for holistic care.
      We are a modern and customer-centric healthcare service provider, focusing on delivering high-quality diagnostic and consultation services. It is designed to offer a wide range of medical solutions, from routine health check-ups to specialized diagnostic tests. We aims to combine cutting-edge technology with skilled healthcare professionals to provide accurate, timely, and affordable healthcare services to patients.</p>
       <h3>What We Offer:</h3>
        <ul>
            <ul>Medical Testing: A broad spectrum of tests, from routine blood work to advanced diagnostic procedures.</ul>
            <ul>Doctor Consultations: Consultations with highly qualified specialists in multiple fields.</ul>
            <ul>Health Packages: Comprehensive health check-up packages for all age groups.</ul>
            <ul>Vaccinations: Immunization services for adults and children.</ul>
            <ul>Home-Visit & Clinic Consultation: Personalized care in our state-of-the-art clinics.</ul>
            <ul>Gym & Wellness: Offering gym and wellness programs to promote fitness and well-being.</ul>
           <ul>24/7 Support: We are here for you round-the-clock to address your health concerns.</ul>
        </ul> </div>
          </div>
          <section style="background-color:#dff0d8; padding: 30px; margin: 20px; border-radius: 10px; border: 5px solid black;">
  <div >
  <p style="text-size: bold";>
  Check below for more Packages and Exciting Offers:   
  <span class="blink" ><a href="offer.jsp" style="background-color: #ffcc00; color: #ffffff; padding: 10px 20px; 
       border-radius: 25px; font-weight: bold; text-decoration: none;" >  Click Here  </a>  </span>for Payment
</p>
  </div>
  </section>

  
<script>
var close = document.getElementsByClassName("closebtn");
var i;

for (i = 0; i < close.length; i++) {
  close[i].onclick = function(){
    var div = this.parentElement;
    div.style.opacity = "0";
    setTimeout(function(){ div.style.display = "none"; }, 600);
  }
}
</script>
  <h3 style="text-align:center; color: #902385;">Thank you for choosing BITS Diagnostics.</h3><br><br>
</body>
<footer style="background-color: #333; color: white; padding: 10px; text-align: center;">
  <div>
    <a href="privacy-policy.html" style="color: white; margin-right: 15px;">Privacy Policy</a>
    <a href="terms-of-service.html" style="color: white; margin-right: 15px;">Terms of Service</a>
    <a href="faq.html" style="color: white; margin-right: 15px;">FAQs</a>
    <a href="contact-us.html" style="color: white;">Contact Us</a>
    <a href="emergency.html" style="color: white;">Emergency Service</a>
  </div>
  <div style="margin-top: 5px;">
    <p>Follow us:</p>
    <img src="images/fb.png"; alt="Facebook" target="_blank"; style="color: 'white'; margin-right: 15px; width:20px; height: 20px">
     <img src="images/x.png"; alt="Facebook" target="_blank"; style="color: 'white'; margin-right: 15px;width:30px; height: 20px">
  </div>

        <p>&copy; 2024 BITS Diagnostics</p>
 </footer>
</html>
