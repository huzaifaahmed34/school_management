<link rel="stylesheet" href="<?php echo base_url('assets/css/style.css');?>">
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
           <img src="<?php echo base_url();?>assets/img/8.jpeg" class="img-circle mb-5" alt="User Image" width=50px height=50px; style="margin-left:40px;margin-top: -10px">
        <div class="pull-left image" >
          <img src="<?php echo base_url();?>assets/dist/img/user1-128x128.png" class="img-circle" alt="User Image " style="margin-top:50px;" >
        </div>
        <div class="pull-left info" style="top:70px;">
          <p><?php 
                  if(isset($_SESSION['user_name']))
                  {
                      echo $full_name=$_SESSION['full_name'];
                  }else{
                      
                      echo "No session active." ;
                  }
                  ?>
            </p>
        </div>
      </div>
      
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class=" ">
          <a href="<?php echo site_url('Dashboard')?>">
            <i class="fa fa-desktop"></i> <span>Dashboard</span>
          </a>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-gear"></i> <span>Setup </span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
         
         
        <li class="treeview">
          <a href="#">
            <i class="far fa-building"></i> <span>&nbsp&nbsp Classes</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            
             <li><a href="<?php echo site_url('Setup/classView');?>"><i class="far fa-dot-circle"></i>&nbsp&nbspShow Classes</a></li>
          </ul>
        </li>
              <li class="treeview">
          <a href="#">
            <i class="far fa-building"></i> <span>&nbsp&nbsp Section</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            
             <li><a href="<?php echo site_url('Setup/section_View');?>"><i class="far fa-dot-circle"></i>&nbsp&nbspShow Section</a></li>
          </ul>
        
        </li>
<li class="treeview">
          <a href="#">
            <i class="far fa-building"></i> <span>&nbsp&nbsp Session </span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            
             <li><a href="<?php echo site_url('Setup/sessionView');?>"><i class="far fa-dot-circle"></i>&nbsp&nbspShow Session</a></li>
          </ul>
        </li>


          <li class="treeview">
          <a href="#">
            <i class="far fa-building"></i> <span>&nbsp&nbsp Post</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            
             <li><a href="<?php echo site_url('Setup/post');?>"><i class="far fa-dot-circle"></i>&nbsp&nbspShow Post</a></li>
          </ul>
        </li>
          <li class="treeview">
          <a href="#">
            <i class="far fa-building"></i> <span>&nbsp&nbsp Heroes</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <?php 
         
            $qry=$this->db->query("select * from class where is_deleted=0");
            $r=$qry->result();

             

            foreach($r as $row1){
$m=$row1->id;
            ?>
             <li  class="dropdown  .dropdown-menu-right">
              <button  class=dropbtn><?php echo $row1->class ?></button><?php
                $qry1=$this->db->query("select s.id,c.class,s.section from section as s,class as c where s.class_id=c.id and s.is_deleted=0 and c.is_deleted=0 and s.class_id='$m'");
            $r1=$qry1->result(); ?>
                    <div class="dropdown-content">
                       <?php foreach($r1 as $row){ ?>
    <a href="<?php echo site_url()?>/Setup/heroes/<?php echo $row->id.'/'.$row1->id ?>"><?php echo $row->section ?></a>
 <?php } ?>
  </div>
             </li><br>
           <?php }
           ?>
          </ul>
        </li>
          <li class="treeview">
          <a href="#">
            <i class="far fa-building"></i> <span>&nbsp&nbsp Fee Collection</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
            <ul class="treeview-menu">
             <?php 
         
            $qry=$this->db->query("select * from class where is_deleted=0");
            $r=$qry->result();

             

            foreach($r as $row1){
$m=$row1->id;
            ?>
             <li  class="dropdown  .dropdown-menu-right"><button  class=dropbtn><?php echo $row1->class ?></button><?php
                $qry1=$this->db->query("select s.id,c.class,s.section from section as s,class as c where s.class_id=c.id and s.is_deleted=0 and c.is_deleted=0 and s.class_id='$m'");
            $r1=$qry1->result(); ?>
                    <div class="dropdown-content">
                       <?php foreach($r1 as $row){ ?>
    <a href="<?php echo site_url()?>/Setup/fees/<?php echo $row->id.'/'.$row1->id ?>"><?php echo $row->section ?></a>
 <?php } ?>
  </div>
             </li><br>
           <?php }
           ?>
          </ul>        </li>
           <li class="treeview">
          <a href="#">
            <i class="far fa-building"></i> <span>&nbsp&nbsp Syllabus</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            
             <li><a href="<?php echo site_url('Setup/syllabus');?>"><i class="far fa-dot-circle"></i>&nbsp&nbspShow Syllabus</a></li>
          </ul>
        </li>
                 
           <li class="treeview">
          <a href="#">
            <i class="far fa-building"></i> <span>&nbsp&nbsp Qualification</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            
             <li><a href="<?php echo site_url('Setup/Qualification');?>"><i class="far fa-dot-circle"></i>&nbsp&nbspShow Qualification</a></li>
          </ul>
        </li>
                             
           <li class="treeview">
          <a href="#">
            <i class="far fa-building"></i> <span>&nbsp&nbsp Degree</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            
             <li><a href="<?php echo site_url('Setup/Degree');?>"><i class="far fa-dot-circle"></i>&nbsp&nbspShow Degree</a></li>
          </ul>
        </li>
        
      </ul>
    </li>

      <li class="treeview">
          <a href="#">
            <i class="fa fa-plus"></i> <span>Registration </span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            
         
           <li class="treeview">
          <a href="#">
            <i class="far fa-user"></i> <span>&nbsp&nbsp Student Registration</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
             <li><a href="<?php echo site_url('Registration/add_students');?>"><i class="far fa-dot-circle"></i>&nbsp&nbspAdd Students</a></li>
             <li><a href="<?php echo site_url('Registration/student_registration');?>"><i class="far fa-dot-circle"></i>&nbsp&nbspShow Student </a></li>
            
          </ul>
        </li>
           <li class="treeview">
          <a href="#">
            <i class="far fa-user"></i> <span>&nbsp&nbsp Staff Registration</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
             <li><a href="<?php echo site_url('Registration/add_Staff');?>"><i class="far fa-dot-circle"></i>&nbsp&nbspAdd Staff</a></li>
             <li><a href="<?php echo site_url('Registration/Staff_registration');?>"><i class="far fa-dot-circle"></i>&nbsp&nbspShow Staff </a></li>
          </ul>
        </li>

                 
          
        
      </ul>
    </li>

        <li class="treeview">
          <a href="#">
            <i class="fas fa-check"></i> <span>&nbsp Attendance </span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            
         
           <li class="treeview">
          <a href="#">
            <i class="far fa-user"></i> <span>&nbsp&nbsp Student Attendance</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
             <?php 
         
            $qry=$this->db->query("select * from class where is_deleted=0");
            $r=$qry->result();

             

            foreach($r as $row1){
$m=$row1->id;
            ?>
             <li  class="dropdown  .dropdown-menu-right"><button  class=dropbtn><?php echo $row1->class ?></button><?php
                $qry1=$this->db->query("select s.id,c.class,s.section from section as s,class as c where s.class_id=c.id and s.is_deleted=0 and c.is_deleted=0 and s.class_id='$m'");
            $r1=$qry1->result(); ?>
                    <div class="dropdown-content">
                       <?php foreach($r1 as $row){ ?>
    <a href="<?php echo site_url()?>/Attendance/Student_Attendance/<?php echo $row->id.'/'.$row1->id ?>"><?php echo $row->section ?></a>
 <?php } ?>
  </div>
             </li><br>
           <?php }
           ?>
          </ul>
        </li>
           <li class="treeview">
          <a href="#">
            <i class="far fa-user"></i> <span>&nbsp&nbsp Staff Attendance</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            
             <li><a href="<?php echo site_url('Attendance/Staff_Attendance');?>"><i class="far fa-dot-circle"></i>&nbsp&nbspShow Staff Attendance</a></li>
          </ul>
        </li>
         <li class="treeview">
          <a href="#">
            <i class="far fa-building"></i> <span>&nbsp&nbsp Roznamcha</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            
             <li><a href="<?php echo site_url('Attendance/roznamcha');?>"><i class="far fa-dot-circle"></i>&nbsp&nbspStudent Roznamcha</a></li>  <li><a href="<?php echo site_url('Attendance/tch_roznamcha');?>"><i class="far fa-dot-circle"></i>&nbsp&nbspStaff Roznamcha</a></li>
          </ul>
        </li>


                 
          
        
      </ul>
    </li>

      <li class="treeview">
          <a href="#">
            <i class="fa fa-file"></i> <span>Result </span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            
         
  
      <li class="treeview">
          <a href="#">
            <i class="fas fa-plus"></i> <span>&nbsp;&nbsp;&nbsp; Add Result </span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
         
            
           <ul class="treeview-menu" style="margin-left: 20px;">
       <?php 
         
            $qry=$this->db->query("select * from class where is_deleted=0");
            $r=$qry->result();

             

            foreach($r as $row1){
$m=$row1->id;
            ?>
             <li  class="dropdown  .dropdown-menu-right"><button  class=dropbtn><?php echo $row1->class ?></button><?php
                $qry1=$this->db->query("select s.id,c.class,s.section from section as s,class as c where s.class_id=c.id and s.is_deleted=0 and c.is_deleted=0 and s.class_id='$m'");
            $r1=$qry1->result(); ?>
                    <div class="dropdown-content">
                       <?php foreach($r1 as $row){ ?>
    <a href="<?php echo site_url()?>/Result/resultview/<?php echo $row->id.'/'.$row1->id ?>"><?php echo $row->section ?></a>
 <?php } ?>
  </div>
             </li><br>
           <?php }
           ?>
          </ul>
            

     
    </li>
      
      
      <li class="treeview">
          <a href="#">
            <i class="fas fa-plus"></i> <span>&nbsp;&nbsp;&nbsp; Generate Result </span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
         
            
           <ul class="treeview-menu" style="margin-left: 20px;">
       <?php 
         
            $qry=$this->db->query("select * from class where is_deleted=0");
            $r=$qry->result();

             

            foreach($r as $row1){
            $m=$row1->id;
            ?>
             <li  class="dropdown  .dropdown-menu-right"><button  class=dropbtn><?php echo $row1->class ?></button><?php
                $qry1=$this->db->query("select s.id,c.class,s.section from section as s,class as c where s.class_id=c.id and s.is_deleted=0 and c.is_deleted=0 and s.class_id='$m'");
            $r1=$qry1->result(); ?>
                    <div class="dropdown-content">
                       <?php foreach($r1 as $row){ ?>
    <a href="<?php echo site_url()?>/Result/generateResult/<?php echo $row->id.'/'.$row1->id ?>"><?php echo $row->section ?></a>
 <?php } ?>
  </div>
             </li><br>
           <?php }
           ?>
          </ul>
            

     
    </li>
      
       
        
            
        
        </li>
          
        
      </ul>
    </li>
   

  <li class="treeview">
          <a href="#">
            <i class="fas fa-files-o"></i> <span>&nbsp;&nbsp;&nbsp;Payroll </span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            
         
           <li class="treeview">
          <a href="#">
            <i class="far fa-building"></i> <span>&nbsp&nbsp Expense</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            
             <li><a href="<?php echo site_url('Payroll/Expense_view');?>"><i class="far fa-dot-circle"></i>&nbsp&nbspShow Expense</a></li>
          </ul>
        </li>
           <li class="treeview">
          <a href="#">
            <i class="far fa-building"></i> <span>&nbsp&nbsp Pay Slips</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            
             <li><a href="<?php echo site_url('Payroll/Pay_slips');?>"><i class="far fa-dot-circle"></i>&nbsp&nbsp Pay Slips</a></li>
          </ul>
        </li>

    
      </ul>
    </li>
          <li class="treeview">
          <a href="#">
            <i class="fas fa-files-o"></i> <span>&nbsp;&nbsp;&nbsp;Certificate </span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
       
         
          <ul class="treeview-menu">
          <li class="">
          <a href="<?php echo site_url('Certificate/character_certificate');?>">
            <i class="far fa-user"></i> <span>&nbsp&nbspCharacter Certificate</span>
            <span class="pull-right-container">
             
            </span>
          </a>
        </li>
       
          <li class="">
          <a href="<?php echo site_url('Certificate/generateSchoolLeavingCertificate');?>">
            <i class="far fa-user"></i> <span>&nbsp&nbspSchool Leaving Certificate</span>
            <span class="pull-right-container">
             
            </span>
          </a></li>
     
          <li class="">
          <a href="<?php echo site_url('Certificate/generateServiceCertificate');?>">
            <i class="far fa-user"></i> <span>&nbsp&nbspService Certificate</span>
            <span class="pull-right-container">
             
            </span>
          </a>
        </li>
      </ul>
          
        </li>

   
 
                 
          
    
    </section>
    <!-- /.sidebar -->
  </aside>