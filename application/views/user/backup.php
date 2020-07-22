<body><div class="content-wrapper" >
  <style type="text/css">
    p{
      font-size: 20px;
    }
  </style>

  
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
   Result
      </h1>
      <ol class="breadcrumb">
        <li><a href="<?php echo base_url(); ?>"><i class="fas fa-arrow-alt-circle-right"></i> Home</a></li>
         <li><a href="#">  Result </a></li>
        <li class="active">View Result</li>
      </ol>
    </section>
      

       
    <!-- Main content -->
    <section class="content">
  
      <!-- SELECT2 EXAMPLE -->
      <div class="box box-success">
        <div class="box-header witd-border">

          <h3 class="box-title">View Result</h3>
        </div>
            
   <div class="alert alert-success" style="display: none;"></div>
   
   <div class="alert alert-danger" style="display: none;"></div>
        
        <div class="box-body">
      
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2>AL HAYAT FOUNDATION MODEL HIGH SCHOOL  </h2>
        </div>
          <div class="col-lg-12 text-center">
  <img id="n"  src="<?php echo base_url()?>assets/img/d.png" widtd="100px" height="100px">
</div>
   <div class="col-lg-12 text-center">
          <h3>1st to 9td</h3>
 <h3>MARK SHEET ANNUAL EXAM <?php echo date('Y')?></h3>
        </div>
        <?php
          if(isset($res))
          {
              foreach($res as $row)
              {
                  $stdName=$row->name;
                  $fatderName=$row->fatdername;
                  $classId=$row->class_id;
                  $stdId=$row->std_id;
                  $totalMarks=100;
                  $remarks="Good Effort";
                  
              }
         
          ?>
         <div class="col-lg-12">
          <p>Certified Student Name:&nbsp;&nbsp;&nbsp; <strong><?php echo $stdName;?> </strong>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;SO/DO:&nbsp;&nbsp;&nbsp; <strong><?php echo $fatderName;?></strong>
 </p>
 
        </div>
         <div class="col-lg-12">
          <p>Date:&nbsp;&nbsp;&nbsp <strong> <?php echo date('d-M-Y');?> </strong>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp; Class: <strong><?php
              $qry=$tdis->db->query("select class as className from class where id=$classId");
             foreach($qry->result() as $row)
             {
                 echo $className=$row->className;
             }
              ;?>
              </strong>
 </p>
 
        </div>
        <div class=col-lg-12>
          <table border=1 widtd="100% " height=500px; style="margin-bottom: 30px; align:center ">

            <tr>
            <th class=text-center>S NO</th>
             <th class=text-center>Subject</th>
              <th class=text-center>Total Marks</th>
               <th class=text-center>Marks Obtained</th>
                <th class=text-center>&</th>
                 <th class=text-center>Remarks</th>
                  
          </tr>
           
           <?php 
              
              $qry=$tdis->db->query("select * from result where std_id=$stdId");
              $run=$qry->result();
              $sr=0;
                foreach($run as $row)
              {
                  $urdu=$row->urdu;
                  $english=$row->english;
                  $matd=$row->matd;
                    $sr++;
                  
              }
              ?>
           
            <tr>
           <td class=text-center><?php echo $sr;?></td>
             <td class="text-center">Urdu</td>
              <td><?php echo $totalMarks;?></td>
               <td><?php echo $urdu;?></td>
                <td></td>
                 <td><?php echo $remarks;?></td>
             </tr>
             
          <tr>
           <td class=text-center><?php echo $sr;?></td>
             <td class="text-center">English</td>
              <td><?php echo $totalMarks;?></td>
               <td><?php echo $english;?></td>
                <td></td>
                 <td><?php echo $remarks;?></td>
             </tr>
             
           <tr>
           <td class=text-center><?php echo $sr;?></td>
             <td class="text-center">Matd</td>
              <td><?php echo $totalMarks;?></td>
               <td><?php echo $matd;?></td>
                <td></td>
                 <td><?php echo $remarks;?></td>
             </tr>
           
          <?php 
           if($classId <=2)
                 {
            foreach($run as $row)
              {
                  $urdu_oral=$row->urdu_oral;
                  $english_oral=$row->english_oral;
                  $matd_oral=$row->matd_oral;
                  $nazra=$row->nazra;
                    $sr++;
                  
              }
         
            ?>
        
           <tr>
           <td class=text-center><?php echo $sr;?></td>
             <td class="text-center">Urdu Oral</td>
              <td><?php echo $totalMarks;?></td>
               <td><?php echo $urdu_oral;?></td>
                <td></td>
                 <td><?php echo $remarks;?></td>
             </tr>
         <tr>
           <td class=text-center><?php echo $sr;?></td>
             <td class="text-center">English Oral</td>
              <td><?php echo $totalMarks;?></td>
               <td><?php echo $english_oral;?></td>
                <td></td>
                 <td><?php echo $remarks;?></td>
             </tr>
             
           <tr>
           <td class=text-center><?php echo $sr;?></td>
             <td class="text-center">Matd Oral</td>
              <td><?php echo $totalMarks;?></td>
               <td><?php echo $matd_oral;?></td>
                <td></td>
                 <td><?php echo $remarks;?></td>
             </tr>
         <tr>
           <td class=text-center><?php echo $sr;?></td>
             <td class="text-center">Nazra</td>
              <td><?php echo $totalMarks;?></td>
               <td><?php echo $nazra;?></td>
                <td></td>
                 <td><?php echo $remarks;?></td>
             </tr>
                  <?php
           }
            if($classId >=3 AND $classId < 11)
           {
                foreach($run as $row)
              {
                  $gk=$row->gk;
                  
                    $sr++;
                  
              }
                  ?>
          
           <tr>
           <td class=text-center><?php echo $sr;?></td>
           <td class="text-center">GK</td>
           <td><?php echo $totalMarks;?></td>
           <td><?php echo $gk;?></td>
           <td></td>
           <td><?php echo $remarks;?></td>
           </tr>
            
             <?php
               }
                 if($classId >=5 )
             {
                foreach($run as $row)
              {
                  $islamic_study=$row->islamic_study;

                    $sr++;
                  
              }
              ?>
         
              <tr>
           <td class=text-center><?php echo $sr;?></td>
           <td class="text-center">Islamic Study</td>
           <td><?php echo $totalMarks;?></td>
           <td><?php echo $islamic_study;?></td>
           <td></td>
           <td><?php echo $remarks;?></td>
           </tr>
             
               <?php
               }
                if($classId >=6)
             {
                foreach($run as $row)
              {
                  $pak_study=$row->pak_study;

                    $sr++;
                  
              }
              ?>
              <tr>
           <td class=text-center><?php echo $sr;?></td>
           <td class="text-center">Pak Study</td>
           <td><?php echo $totalMarks;?></td>
           <td><?php echo $pak_study;?></td>
           <td></td>
           <td><?php echo $remarks;?></td>
           </tr>
         <?php
               }
                if($classId >=8 AND $classId <=10)  
               {
                foreach($run as $row)
              {
                  $arabic=$row->arabic;
                  $computer=$row->computer;
                  $elective8=$row->elective8;

                    $sr++;
                  
              }
               ?>
            <tr>
           <td class=text-center><?php echo $sr;?></td>
           <td class="text-center">Arabic</td>
           <td><?php echo $totalMarks;?></td>
           <td><?php echo $arabic;?></td>
           <td></td>
           <td><?php echo $remarks;?></td>
           </tr>
             
             <tr>
           <td class=text-center><?php echo $sr;?></td>
           <td class="text-center">Computer</td>
           <td><?php echo $totalMarks;?></td>
           <td><?php echo $computer;?></td>
           <td></td>
           <td><?php echo $remarks;?></td>
           </tr>
                 
            <tr>
           <td class=text-center><?php echo $sr;?></td>
           <td class="text-center">Agrriculture/Home Eco</td>
           <td><?php echo $totalMarks;?></td>
           <td><?php echo $elective8;?></td>
           <td></td>
           <td><?php echo $remarks;?></td>
           </tr>
            <?php
                }
               else
               { if($classId >=11 AND $classId <=12)
               {
                 foreach($run as $row)
              {
                  $physics=$row->physics;
                  $chemistry=$row->chemistry;
                  $elective_matric=$row->elective_matric;

                    $sr++;
                  
              }
               ?>
           <tr>
           <td class=text-center><?php echo $sr;?></td>
           <td class="text-center">Physics</td>
           <td><?php echo $totalMarks;?></td>
           <td><?php echo $physics;?></td>
           <td></td>
           <td><?php echo $remarks;?></td>
           </tr>
            
            <tr>
           <td class=text-center><?php echo $sr;?></td>
           <td class="text-center">Chemistry</td>
           <td><?php echo $totalMarks;?></td>
           <td><?php echo $chemistry;?></td>
           <td></td>
           <td><?php echo $remarks;?></td>
           </tr>
            
            <tr>
           <td class=text-center><?php echo $sr;?></td>
           <td class="text-center">Bio/Computer</td>
           <td><?php echo $totalMarks;?></td>
           <td><?php echo $elective_matric;?></td>
           <td></td>
           <td><?php echo $remarks;?></td>
           </tr>
             <?php
               }
               }
          
       
              ?>
          </table>
        </div>
<div class="col-lg-12 ">
<p>(In Words) __________________</p><br>
<p>Class Position _______________&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Signature of Principle ________________</p><br>
<p>Signature of Class Incharge _______________</p><br>
        
        </div>
</div>   
    <div class="row">
        <div class="col-md-3">
      </div>
      </div>
 

        
            
         
              <!-- /.form-group -->
            
  
    

            <!-- /.col -->
          </div>
          <!-- /.row -->
      
        </div>
        <!-- /.box-body -->
        
      </div>
      <!-- /.box -->

      <!-- /.row -->

    </section>
    <!-- /.content -->
       
  <?php
          }
    ?>
   
 
  </div>
 </body>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>