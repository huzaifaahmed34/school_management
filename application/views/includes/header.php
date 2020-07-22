<html>
<head>
  <?php 
  include('top.php')

  ?>

    <title>Al-Hayat</title>
    
  </head>

<nav class="navbar navbar-expand-lg pb-0 " id=navbar>
   <button class="navbar-toggler mt-3 " type="button" data-toggle="collapse" data-target="#collapsibleNavbar" >
    <span class="navbar-toggler-icon "><i id=toggle class="fa fa-bars"></i></span>
  </button>
  <a class="navbar-brand "    href="<?php echo base_url('')?>">
    <img id="n" src="<?php echo base_url()?>assets/img/d.png" width="100px" height="100px" class="img img-circle">
  </a>

  

   <div class="collapse navbar-collapse" id="collapsibleNavbar">
  <!-- Links -->

  <ul class="navbar-nav ml-auto mr-5">
 <li class="nav-item" >
      <a class="nav-link" id="home" href="<?php echo base_url('')?>">Home</a>
    </li>
        <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop2" data-toggle="dropdown">
     Academics
      </a>
      <div class="dropdown-menu " style="border-radius: 0px;background: #1667B9;border:1px solid white;">
        <a class="dropdown-item text-light" href="<?php echo site_url('Main/Attendance')?>">Attendance Report</a>
         <a class="dropdown-item text-light" href="<?php echo site_url('MyLogin/')?>">Admin Area</a>
        
      </div>
    </li>
      <li class="nav-item dropdown text-light" > 
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop3" data-toggle="dropdown">

        Result
      </a>
      <div class="dropdown-menu text-light" style="border-radius: 0px;background: #1667B9;border:1px solid white;">
        <a class="dropdown-item text-light" href="<?php echo site_url('Main/Result')?>">View Result</a>
      
        
      </div>
    </li>
    <li class="nav-item" >
      <a class="nav-link" id="nav-link" href="<?php echo site_url('Main/Syllabus')?>">Syllabus</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" id="nav-link1" href="#">Societies and Clubs</a>
    </li>
      <li class="nav-item">
      <a class="nav-link" id="nav-link2" href="#">Campus Network</a>
    </li>
          <li class="nav-item dropdown text-light" > 
      <a class="nav-link dropdown-toggle" href="#" id="admission" data-toggle="dropdown">
Admissions
      </a>
      <div class="dropdown-menu text-light" style="border-radius: 0px;background: #1667B9;border:1px solid white;">
        <a class="dropdown-item text-light" href="<?php echo site_url('Main/Admission')?>">Admission Form</a>
      
        
      </div>
    </li>

   <li class="nav-item">
      <a class="nav-link" href="#" id="nav-link4">Contact Us</a>
    </li>
    <!-- Dropdown -->
  
  </ul>

</div>

</nav>
</html>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script type="text/javascript">
      $('.navbar-toggler').click(function(){
        $('#collapsibleNavbar').toggle();

      });
    
  window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 80) {
              document.getElementById("home").style.color = "black";
                
         document.getElementById("navbardrop2").style.color = "black";
          document.getElementById("navbardrop3").style.color = "black";
              document.getElementById("admission").style.color = "black";
    document.getElementById("navbar").style.backgroundColor = "white";
     document.getElementById("navbar").style.boxShadow = "1px 1px 4px black";
       document.getElementById("nav-link4").style.color = "black";

         
      document.getElementById("navbar").style.paddingTop = "10";
     document.getElementById("nav-link").style.color = "black";
     document.getElementById("nav-link1").style.color = "black";
     document.getElementById("nav-link2").style.color = "black";
      document.getElementById("nav-link3").style.color = "black";
     
           document.getElementById("n").src = "<?php echo base_url()?>assets/img/f.png";
          document.getElementById("toggle").style.color = "black";
         
       
  } else {
    document.getElementById("admission").style.color = "white";
         document.getElementById("navbardrop3").style.color = "white";
  document.getElementById("home").style.color = "white";
         document.getElementById("navbardrop2").style.color = "white";
    document.getElementById("toggle").style.color = "white";
    document.getElementById("navbar").style.backgroundColor = "";
   document.getElementById("navbar").style.boxShadow = "";
      document.getElementById("nav-link4").style.color = "white";
        
        
     document.getElementById("navbar").style.paddingTop = "10px";
     document.getElementById("nav-link").style.color = "white";
     document.getElementById("nav-link1").style.color = "white";
     document.getElementById("nav-link2").style.color = "white";
      document.getElementById("nav-link3").style.color = "white";
  
          document.getElementById("n").src = "<?php echo base_url()?>assets/img/d.png";
   
  }
}
</script>

