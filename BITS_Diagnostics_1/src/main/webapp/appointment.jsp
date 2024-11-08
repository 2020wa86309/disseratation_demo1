<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file="header.jsp" %>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Appointment - BITS Diagnostics</title>
  <style>
 .alert {
  padding: 0px;
  background-color: #FFAA33; 
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
  font-size: 20px;
  line-height: 50px;
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
}
            
  </style>
  
</head>
<body>

<br><br>
<br>
<div class="alert">
  <span class="closebtn">&times;</span>  
  <strong>Note:</strong> Please enter required fields below.
  <p>Click on the "x" symbol to close the alert message.</p>
</div>
   <div  style="background-color: rgb(0, 128, 64), 255, 0; /* White background for form */
    padding: 40px;
    border-radius: 10px;
    box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.1);
    max-width: 400px;
    width: 100%;
     margin-left: 550px;
     margin-top: 50px;color: #008000">

     <header style="font-size: 18px;
    margin-bottom: 10px; text-align:center;
     text-color: #630330;">
    
    <h2 style="font-size: 18px;
    color: #9acd32;">
        Book an Appointment
    </h2></header><br>

     <form action="ConfirmAppointmentServlet" method="post">
    <label for="appointmentDate">Appointment Date:</label>
    <input type="date" id="appointmentDate" name="appointmentDate" required><br><br>

    <label for="appointmentTime">Appointment Time:</label>
    <input type="time" id="appointmentTime" name="appointmentTime" required><br><br>
      <label for="doctor">Select Doctor:</label>
     
    <select name="doctor" required>
	        <option value="" disabled selected>SELECT</option>
                <option value="1">Dr. Rajesh Verma - Cardiology</option>
                <option value="2">Dr. Kavita Mehta - Oncology</option>
                <option value="3">Dr. Sunita Rao - Gynecology</option>
                <option value="4">Dr. Rajesh Gupta - Cardiology</option>
                <option value="5">Dr. Neeta Sharma - Pediatrics</option>
                <option value="6">Dr. Vikram Singh - Orthopedics</option>
                <option value="7">Dr. Priya Desai - Dermatology</option>
                <option value="8">Dr. Amit Kumar - Internal Medicine</option>
                <option value="9">Dr. Manoj Sinha - Neurology</option>
                <option value="10">Dr. Aarti Gupta - ENT</option>
                <option value="11">Dr. Sanjay Rao- General Surgery</option>
                <option value="12">Dr. K.G.Shevtekar - General Surgery</option>
        </select>
<br>
<br>

    <button type="submit" style="  width: 100%;
    background-color: #FF4081; /* Pink button */
    padding: 15px;
    margin-top: 20px;
    font-size: 20px;
    border-radius: 10px;">Confirm Appointment</button>
</form>

 </div>
 


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
<br>


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