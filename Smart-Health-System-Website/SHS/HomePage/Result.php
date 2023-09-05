<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>Result</title>

<!-- Fonts -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="fonts/elegant-font/style.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.0/css/all.css">
<link rel="stylesheet" href="styles/bootstrap.css" />
<link rel="stylesheet" href="styles/main.css" />
<link href="../HomePage/styles/search.css" rel="stylesheet" type="text/css" />
</head>
<body>

<div class="mobile-nav-wrapper">
  <div class="mobile-menu-inner">
    <ul class="mobile-menu">
      <li class="scroll-to-section"><a href="../HomePage/index.html">Homepage</a></li>
      <li class="scroll-to-section"><a href="../HomePage/CheckSymptom.html">Search symptom</a></li>
      <li class="scroll-to-section"><a href="../HomePage/index.html#OurServices">Our Services</a></li>
      <li class="scroll-to-section"><a href="../HomePage/index.html#HealthAssistant">Health Assistant</a></li>
      
    </ul>
  </div>
</div>
<div class="mobile-menu-overlay"></div>

<!-- Header -->
<header class="site-header">
  <div class="container expanded">
    <div class="header-wrap">
      <div class="header-logo"> <img src="images/logo.png" style="max-width: 300px;" alt=""> </div>
      <div class="header-nav">
        <ul class="main-menu">
          <li class="scroll-to-section"><a href="../HomePage/index.html">Homepage</a></li>
          <li class="scroll-to-section"><a href="../HomePage/CheckSymptom.html">Search symptom</a></li>
          <li class="scroll-to-section"><a href="../HomePage/index.html#OurServices">Our Services</a></li>
          <li class="scroll-to-section"><a href="../HomePage/index.html#HealthAssistant">Health Assistant</a></li>
          
        </ul>
      </div>
      <div class="header-widgets">
        <ul class="right-menu">
          <li class="menu-item menu-search" ><a href = "../login/index.html">
            <div class="main-bordered-button chat-wrap" > <span>Log in/Sign in to live chat</span> </div>
          </a></li>
          <li class="menu-item menu-mobile-nav"> <a href="#" class="menu-bar" id="menu-show-mobile-nav"> <span class="hamburger"></span> </a> </li>
        </ul>
      </div>
    </div>
  </div>
</header>

<div class="page-bg">
</div>


    <div class="web_check" id="web_check">
       
       
       <div class="check-box">

    
    <div class="check_form">
        <form action="" name="checkform" accept-charset="utf-8" id="check_form" class="checkForm" method="post"><input type="hidden" name="did" value="0"/>
       <input type="hidden" name="to" value="log"/>
       
       <?php
       //embedded sql to retrieve data
       //select everything from incident where incident id = POST['incidentID']
       include('../login/connectdb.php');
       $Symptom1 = $_POST['Symptopm1'];
       $Symptom2 = $_POST['Symptopm2'];
       $Symptom3 = $_POST['Symptopm3'];
       $Symptom4 = $_POST['Symptopm4'];
       $sql = "SELECT Title, Definition, Treatment FROM Disease WHERE Symptom1 LIKE 
        '%{$Symptom1}%' OR Symptom2 LIKE '%{$Symptom2}%' OR Symptom3 LIKE '%{$Symptom3}%'
        OR Symptom4 LIKE '%{$Symptom4}%'";
 
       $result = $conn->query($sql);
 

       $row = $result -> fetch_assoc()
       ?>

        
        <div class="DiseaseName" id="DiseaseName">
            <label class="input-tips" for="p">Title:</label> 
        <div class="inputOuter" id="DiseaseNameArea"> 
            <textarea id="DiseaseName" name="DiseaseName" class="inputstyle" readonly="readonly">
            <?php echo $row["Title"]; ?>
          </textarea>
        </div>
        </div>



        
        <div class="Definition" id="Definition">
            <label class="input-tips" for="p">Definition:</label> 
            <div class="inputOuter" id="DefinitionArea"> 
                <textarea id="Definition" name="Definition" rows="4" cols="50" class="textareastyle" readonly="readonly">
                <?php echo $row["Definition"]; ?>
                </textarea>
            </div>
            </div>

            
            
            <div class="Treatment" id="Treatment" ">
                <label class="input-tips-last" for="p">Treatment:</label> 
                <div class="inputOuterArea" id="TreatmentArea"> 
                    <textarea id="Treatment" name="Treatment" rows="4" cols="50" class="textareastyle" readonly="readonly">
                    <?php echo $row["Treatment"]; ?>
                    </textarea>
                </div>
                </div>
        


       
        <div  style="padding-left:50px;margin-top:20px;"><a href="../HomePage/CheckSymptom.html">
            
            <input type="button" value="Search again" style="width:150px;margin-top: 90px;" class="button_blue"/></a>

        </div>

       
      </form>
   </div>
   
        </div>
       
    </div>
    







<!-- Scripts --> 
<script src="scripts/vendors/jquery-3.6.0.min.js"></script> 
<script src="scripts/vendors/jquery.hoverIntent.min.js"></script> 
<script src="scripts/vendors/perfect-scrollbar.min.js"></script> 
<script src="scripts/vendors/jquery.easing.min.js"></script> 
<script src="scripts/vendors/wow.min.js"></script> 
<script src="scripts/vendors/owl-carousel.js"></script> 
<script src="scripts/main.js"></script>
</body>
</html>