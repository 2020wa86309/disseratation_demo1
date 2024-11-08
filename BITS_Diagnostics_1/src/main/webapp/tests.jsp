<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Schedule Test</title>
    
</head>
<body>
<div style="background-color: rgb(0, 128, 64), 255, 0; /* White background for form */
    padding: 40px;
    border-radius: 10px;
    box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.1);
    max-width: 400px;
    width: 100%;
     margin-left: 550px;
     margin-top: 50px; border-color: #673AB7;  color: #008000"     >
     <header>
    <h2 style="font-size: 24px;
    margin-bottom: 30px; text-align:center; color: #9acd32;">
        Schedule a Test
    </h2></header><br><br>
    <form action="ConfirmTestServlet" method="post">
  
        <label for="test">Select Test:</label>
        <select id="test" name="test">
            <option value="">SELECT</option>
            <!-- Add test names dynamically here -->
            <option value="1">CBC</option>
            <option value="2">Blood Sugar</option>
            <option value="3">Cholesterol</option>
            <option value="4">Thyroid Test</option>
            <option value="5">Liver Function Test</option>
            <option value="6">Kidney Function Test</option>
           	<option value="7">Urinalysis</option> 
           	<option value="8">X-Ray</option>
           	<option value="9">MRI Scan</option>
           	<option value="10">CT Scan</option>       
           	<option value="11">Antigen</option>   
           	<option value="12">RTPCR</option>     
           	<option value="13">Hb(Hemoglobin)</option>    
           	<option value="15">ThyroidStimulatingHormone (TSH)</option> 
           	<option value="16">Complete Urine Examination</option>                    
        </select>
<br><br>
        <label for="testDate"> Date:</label>
            <input type="date" id="testDate" name="testDate" required>
<br><br>
            <label for="testTime"> Time:</label>
            <input type="time" id="testTime" name="testTime" required>
           
<br><br><br><br>
            <input type="submit" value="Confirm Test" type="submit" style="  width: 100%;
    background-color: #FF4081; /* Pink button */
    padding: 15px;
    margin-top: 20px;
    font-size: 18px;">
       
      </form>
     </div>
</body>

<footer>
        <p>&copy; 2024 BITS Diagnostics</p>
 </footer>
</html>
