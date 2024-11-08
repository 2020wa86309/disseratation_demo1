<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Appointment Confirmation</title>
   <style type="text/css">
   .alert {
   padding: 10px;
  background-color: green; 
  color: white;
   text-align: center;
     margin-left: 100px;
  margin-right: 100px;
}
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

.closebtn:hover {
  color: black;
}
   .alert.info {background-color: #008000;}
   </style>
</head>
<body><br><br>
<div class="alert">
  <span class="closebtn">&times;</span>  
  <strong>Success!</strong> Your Appointment has been booked. See Below!!
</div><br>
    <h1>Appointment Confirmation</h1>
    <h4  style="text-align: center;">Your Appointment has been booked</h4>
   <div  style="text-align: center;" >
    <p>User: ${name}</p>
    <p>Date: ${date}</p>
    <p>Time: ${time}</p>
      <h3 style=" color: #902385;">Thank you for choosing BITS Diagnostics.</h3>
    <br>
    </div>
    <nav>
        <a href="home.jsp">Return to Home</a>
     
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
        </nav>
        
</body><br>
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

