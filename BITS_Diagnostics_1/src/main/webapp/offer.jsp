<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>

<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
* {
  box-sizing: border-box;
}

.columns {
  float: left;
  width: 33.3%;
  padding: 8px;
}

.price {
  list-style-type: none;
  border: 1px solid #eee;
  margin: 0;
  padding: 0;
  -webkit-transition: 0.3s;
  transition: 0.3s;
}

.price:hover {
  box-shadow: 0 8px 12px 0 rgba(0,0,0,0.2)
}

.price .header {
  background-color: #111;
  color: white;
  font-size: 25px;
}

.price li {
  border-bottom: 1px solid #eee;
  padding: 20px;
  text-align: center;
}

.price .grey {
  background-color: #eee;
  font-size: 20px;
}

.button {
  background-color: #04AA6D;
  border: none;
  color: white;
  padding: 10px 25px;
  text-align: center;
  text-decoration: none;
  font-size: 18px;
}

@media only screen and (max-width: 600px) {
  .columns {
    width: 100%;
  }
}
h2{
 text-align: center;
    color: #6667AB;
    font-size: 25px;
}

h1{
 text-align: center;
    color: #ff4081; /* Pink */
    font-size: 3.5rem;
}

header {
    background-color: #6a1b9a; /* Violet */
    color: white;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 10px 30px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}
header img {
    width: 180px; /* Increased size for  */
}


a:hover, a:active {
  background-color: green;
}
</style>

    <marquee behavior="scroll" direction="left" scrollamount="5" style="background-color: #C8EE90; color: #333; font-weight: bold; padding: 10px;">
 " Welcome to BITS Diagnostics - Your Health is Our Priority!" | "Get 24/7 Support from Expert Doctors" | "Book Appointments & Schedule Tests Easily!"
</marquee>
</head>
<body>

        

<h1 style="text-align:center">Exciting Health Offers</h1>
<h4 style="text-align:center">Renewed Health Packages including (%)GST on affordable price</h3>

<div class="columns">
  <ul class="price">
    <li class="header">Basic</li>
    <li class="grey">&#8377 2999/ year</li>
    <li>5 Free Test(Any)</li>
    <li>Home Visit Not Available</li>
    <li>24 x 7 Consultation Available</li>
    <li>10% discount on each Appointment</li>
    <li class="grey"><a href="#" class="button">Book Now</a></li>
  </ul>
</div>

<div class="columns">
  <ul class="price">
    <li class="header" style="background-color:#04AA6D">Pro</li>
    <li class="grey">&#8377 3999/ year</li>
    <li>10 Free Test(Any) for next 6 Months</li>
    <li>Home Visit Available</li>
    <li>24 x 7 Consultation Available</li>
    <li>12% discount on each Appointment</li>
    <li class="grey"><a href="#" class="button">Book Now</a></li>
  </ul>
</div>

<div class="columns">
  <ul class="price">
    <li class="header">Premium</li>
    <li class="grey">&#8377 5999/ year</li>
   <li>10 Free Test(Any) for a year</li>
    <li>Home Visit Available</li>
    <li>24 x 7 Consultation Available</li>
    <li>20% discount on each Appointment</li>
    <li class="grey"><a href="#" class="button">Book Now</a></li>
  </ul>
  <br><br><br><br>
</div>
<br><br>
<br><br>
</h4><br><br>
  <a style=" background-color: #f44336;
  color: white;
  padding: 14px 25px;
  margin-left: 680px;
  text-align: center;
  text-decoration: none;
  display: inline-block;"href="home.jsp">Return to Home</a>
        
</body>
<br><br><br><br>
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

    