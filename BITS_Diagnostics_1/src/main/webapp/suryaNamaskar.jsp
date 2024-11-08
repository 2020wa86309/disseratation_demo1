<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<html>
<head>
    <title>Suryanamaskar (Sun Salutation) Steps</title>
    <link rel="stylesheet" href="style.css">
<style>
body {
            font-family: 'Arial', sans-serif;
            background-color: #f5f5f5; /* Light gray background */
            margin: 0;
            padding: 0;
            color: #333;
        }

        h1 {
            text-align: center;
            font-size: 2.5rem;
            color: #ff6347; /* Tomato color for main heading */
            margin-top: 20px;
        }

        .container {
            max-width: 900px;
            margin: 0 auto;
            padding: 20px;
        }

        .step-list {
            list-style: none;
            padding: 0;
        }

        .step-list li {
            background: white;
            margin-bottom: 15px;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            display: flex;
            align-items: center;
        }

        .step-list li:hover {
            background-color: #FFB0B0; /* Slight hover effect */
        }

        .step-number {
            background-color: #091057; /* Tomato color */
            color: white;
            font-size: 1.5rem;
            font-weight: bold;
            width: 50px;
            height: 50px;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            margin-right: 20px;
        }

        .step-content {
            font-size: 1.2rem;
        }

        /* Responsive */
        @media (max-width: 768px) {
            h1 {
                font-size: 2rem;
            }

            .step-list li {
                flex-direction: column;
                text-align: center;
            }

            .step-number {
                margin-bottom: 10px;
            }
        }
    </style>
</head>
<body>
    <h1>Suryanamaskar (Sun Salutation) Steps</h1>
    <img src="images/Hatha-Yoga-Surya-Namskar.png" alt="Suryanamaskar" >
    <div class="container">
        <ul class="step-list">
            <li>
                <div class="step-number">1</div>
                <div class="step-content">
                    **Pranamasana (Prayer Pose)**: Stand straight with feet together, palms in front of your chest, in a prayer position.
                </div>
            </li>
       <li>
                <div class="step-number">2</div>
                <div class="step-content">
                    **Hasta Uttanasana (Raised Arms Pose)**: Lift your arms up and back, stretching your whole body.
                </div>
            </li>
            <li>
                <div class="step-number">3</div>
                <div class="step-content">
                    **Hasta Padasana (Hand to Foot Pose)**: Bend forward to touch your toes, keeping your spine straight.
                </div>
            </li>
        <li>
        		<div class="step-number">4</div>
                <div class="step-content">
                    **Ashwa Sanchalanasana (Equestrian Pose):**: Inhale, stretch your right leg back, keep your left foot between your hands.
                </div> 
          </li>
        <li><div class="step-number">5</div>
                <div class="step-content">
                    **Dandasana (Stick Pose):**: Exhale and bring your left leg back to meet the right leg in a plank position.
                </div>  
        </li>
        <li><div class="step-number">6</div>
                <div class="step-content">
                    ** Ashtanga Namaskara (Salute with Eight Parts Pose):**: Lower your knees, chest, and chin to the floor while keeping your hips raised.
                </div> 
                
         </li>
         
        <li><div class="step-number">7</div>
                <div class="step-content">
                    **Bhujangasana (Cobra Pose):**: Inhale and slide your chest forward, lifting it into Cobra Pose.
                </div> 
                
        </li>
            
        <li><div class="step-number">8</div>
                <div class="step-content">
                    ** Adho Mukha Svanasana (Downward Facing Dog Pose):**: Exhale and lift your hips to form an inverted "V" shape.
                </div>
        </li>
        <li><div class="step-number">9</div>
                <div class="step-content">
                    **Ashwa Sanchalanasana (Equestrian Pose):**: Inhale, stretch & bring your right foot forward between your hands.
                </div>
        </li>
        <li><div class="step-number">10</div>
                <div class="step-content">
                    **Padahastasana (Hand to Foot Pose):**: Exhale and bring your left foot forward, bending from the hips.
                </div> 
        </li>
        <li><div class="step-number">11</div>
                <div class="step-content">
                    **Hasta Uttanasana (Raised Arms Pose):** Inhale and raise your arms upward while arching your back.
                </div>
        </li>
        <li><div class="step-number">12</div>
                <div class="step-content">
                    **Pranamasana (Prayer Pose):**: Exhale and bring your hands back to the prayer position.
                </div> 
		 </li>
    </ol>
    
    
    
    <br><br><br>
        <p style="text-align: center;">Thank you for choosing BITS Diagnostics.</p>
        
        <nav>
        <a href="home.jsp">Return to Home</a>
        </nav>
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
