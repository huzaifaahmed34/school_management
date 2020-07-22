<body>

<style type="text/css">
  th{
    text-align: center!important;
  }
</style>

  <div class="container-fluid  text-white pt-5" style="background: #1667B9;">
  <div class="container " ><div class="row pt-5">
    <div class=col-12 >
    
    <br></div>
    
</div>

  </div>
</div>

  <style type="text/css">
    p{
      font-size: 15px;
    }
  </style>

  
    <!-- Content Header (Page header) -->


       
    <!-- Main content -->
    <div class="container"  style="margin-top: 20px" id=con>
  
      <!-- SELECT2 EXAMPLE -->
     
    
            
   <div class="alert alert-success" style="display: none;"></div>
   
   <div class="alert alert-danger" style="display: none;"></div>
        
        <div class="box-body" >
      
      <div class="row" >
        <div class="col-lg-12 text-center">
          <h2>AL HAYAT FOUNDATION MODEL HIGH SCHOOL  </h2>
        </div>
          <div class="col-lg-12 text-center">
  <img id="n"  src="<?php echo base_url()?>assets/img/d.png" width="100px" height="100px">
</div>
   <div class="col-lg-12 text-center">
          <h3>1st to 9th</h3>
 <h3>MARK SHEET EXAM <?php echo date('Y')?></h3>
        </div>
        <?php
            if(isset($res))
          {
              foreach($res as $row)
              {$date=$row->created_on;
                  $sthName=$row->name;
                  $fathername=$row->fathername;
                  $classId=$row->class_id;
                  $stdId=$row->std_id;
                  $totalMarks=0;
                  $totalMarksPerSub=0;
                  $remarks="Good Effort";
                  
              }
         
          ?>
         <div class="col-lg-12">
          <p>Certified Student Name:&nbsp;&nbsp;&nbsp; <strong><?php echo $sthName;?> </strong>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;SO/DO:&nbsp;&nbsp;&nbsp; <strong><?php echo $fathername;?></strong>
         </p>
 
        </div>
         <div class="col-lg-12">
          <p>Date:&nbsp;&nbsp;&nbsp <strong> <?php echo date('d-M-Y',strtotime($date));?> </strong>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp; Class: <strong><?php
              $qry=$this->db->query("select class as className from class where id=$classId");
             foreach($qry->result() as $row)
             {
                 echo $className=$row->className;
             }
              ;?>
              </strong>
 </p>
 
        </div>
        <div class=col-lg-12>
          <table class="table table-striped" width="100% " height=500px; style="margin-bottom: 30px; ">

            <tr>
            <th class=text-center>S NO</th>
             <th class=text-center>Subject</th>
              <th class=text-center>Total Marks</th>
               <th class=text-center>Marks Obtained</th>
                <th class=text-center>%</th>
                 <th class=text-center>Remarks</th>
                  
          </tr>
           
           <?php 
              
              $qry=$this->db->query("select * from result where std_id=$stdId");
              $run=$qry->result();
             $totalMarks=0;
               $sr=0;
                foreach($run as $row)
              {
                  $urdu=$row->urdu;
                  $english=$row->english;
                  $math=$row->math;
                    $t_urdu=$row->total_urdu;
                  $t_english=$row->total_english;
                  $t_math=$row->total_math;
                 
                  }   $totalMarks=$urdu +$english + $math;
                   $totalMarksPerSub=$t_urdu +$t_english + $t_math;
          
              ?>
           
            <tr>
           <th class=text-center><?php echo "1"?></th>
             <th class="text-center">Urdu</th>
              <th><?php echo $t_urdu;?></th>
               <th><?php echo $urdu;?></th>
                <th></th>
                 <th><?php echo $remarks;?></th>
             </tr>
             
          <tr>
           <th class=text-center><?php echo  "2";?></th>
             <th class="text-center">English</th>
              <th><?php echo $t_english;?></th>
               <th><?php echo $english;?></th>
                <th></th>
                 <th><?php echo $remarks;?></th>
             </tr>
             
           <tr>
           <th class=text-center><?php echo  "3";?></th>
             <th class="text-center">Math</th>
              <th><?php echo $t_math;?></th>
               <th><?php echo $math;?></th>
                <th></th>
                 <th><?php echo $remarks;?></th>
             </tr>
           
          <?php 
          
           if($classId <=2)
                 {
            foreach($run as $row)
              {
                  $urdu_oral=$row->urdu_oral;
                  $english_oral=$row->english_oral;
                  $math_oral=$row->math_oral;
                  $nazra=$row->nazra;

                  $t_urdu_oral=$row->total_urduoral;
                  $t_english_oral=$row->total_englishoral;
                  $t_math_oral=$row->total_mathoral;
                  $t_nazra=$row->total_nazra;
                
             

                  
              }   $totalMarks=$totalMarks +($urdu_oral + $english_oral + $math_oral + $nazra);

               $totalMarksPerSub=$totalMarksPerSub +($t_urdu_oral + $t_english_oral + $t_math_oral + $t_nazra);
        
            ?>
        
           <tr>
           <th class=text-center><?php echo  "4";?></th>
             <th class="text-center">Urdu Oral</th>
              <th><?php echo $t_urdu_oral;?></th>
               <th><?php echo $urdu_oral;?></th>
                <th></th>
                 <th><?php echo $remarks;?></th>
             </tr>
         <tr>
           <th class=text-center><?php echo  "5";?></th>
             <th class="text-center">English Oral</th>
              <th><?php echo $t_english_oral;?></th>
               <th><?php echo $english_oral;?></th>
                <th></th>
                 <th><?php echo $remarks;?></th>
             </tr>
             
           <tr>
           <th class=text-center><?php echo  "6";?></th>
             <th class="text-center">Math Oral</th>
              <th><?php echo $t_math_oral;?></th>
               <th><?php echo $math_oral;?></th>
                <th></th>
                 <th><?php echo $remarks;?></th>
             </tr>
         <tr>
           <th class=text-center><?php echo  "7";?></th>
             <th class="text-center">Nazra</th>
              <th><?php echo $t_nazra;?></th>
               <th><?php echo $nazra;?></th>
                <th></th>
                 <th><?php echo $remarks;?></th>
             </tr>
                  <?php
           }
            if($classId >=3 AND $classId < 11)
           {
                foreach($run as $row)
              {
                  $gk=$row->gk;
                    $t_gk=$row->total_gk;
                   
                  
                    $sr++;
                  
              } $totalMarks=$totalMarks + ($gk);

              $totalMarksPerSub=$totalMarksPerSub + ($t_gk);


                  ?>
          
           <tr>
           <th class=text-center><?php echo  "4";?></th>
           <th class="text-center">GK</th>
           <th><?php echo $t_gk;?></th>
           <th><?php echo $gk;?></th>
           <th></th>
           <th><?php echo $remarks;?></th>
           </tr>
            
             <?php
               }
                 if($classId >=5 )
             {
                foreach($run as $row)
              {
                  $islamic_study=$row->islamic_study;
                 $t_islamic_study=$row->total_islamic_study;
                
                    $sr++;
                  
              }  $totalMarks=$totalMarks + $islamic_study;
              $totalMarksPerSub=$totalMarksPerSub + $t_islamic_study;
              ?>
         
              <tr>
           <th class=text-center><?php echo  "5";?></th>
           <th class="text-center">Islamic Study</th>
           <th><?php echo $t_islamic_study;?></th>
           <th><?php echo $islamic_study;?></th>
           <th></th>
           <th><?php echo $remarks;?></th>
           </tr>
             
               <?php
               }
                if($classId >=6)
             {
                foreach($run as $row)
              {
                  $pak_study=$row->pak_study;
                  $t_pak_study=$row->total_pak_study;
                        
                   
                    $sr++;
                  
              } $totalMarks=$totalMarks + $pak_study;
              $totalMarksPerSub=$totalMarksPerSub + $t_pak_study;
              ?>
              <tr>
           <th class=text-center><?php echo  "6";?></th>
           <th class="text-center">Pak Study</th>
           <th><?php echo $t_pak_study;?></th>
           <th><?php echo $pak_study;?></th>
           <th></th>
           <th><?php echo $remarks;?></th>
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
                        
                  $t_arabic=$row->total_arabic;
                  $t_computer=$row->total_computer;
                  $t_elective8=$row->total_elective8;
                   
                    $sr++;
                  
              }  $totalMarks=$totalMarks + ($arabic + $computer + $elective8);
               $totalMarksPerSub=$totalMarksPerSub + ($t_arabic + $t_computer + $t_elective8);
               ?>
            <tr>
           <th class=text-center><?php echo  "7";?></th>
           <th class="text-center">Arabic</th>
           <th><?php echo $t_arabic;?></th>
           <th><?php echo $arabic;?></th>
           <th></th>
           <th><?php echo $remarks;?></th>
           </tr>
             
             <tr>
           <th class=text-center><?php echo  "8";?></th>
           <th class="text-center">Computer</th>
           <th><?php echo $t_computer;?></th>
           <th><?php echo $computer;?></th>
           <th></th>
           <th><?php echo $remarks;?></th>
           </tr>
                 
            <tr>
           <th class=text-center><?php echo  "9";?></th>
           <th class="text-center">Agrriculture/Home Eco</th>
           <th><?php echo $t_elective8;?></th>
           <th><?php echo $elective8;?></th>
           <th></th>
           <th><?php echo $remarks;?></th>
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
                   $t_physics=$row->total_physics;
                  $t_chemistry=$row->total_chemistry;
                  $t_elective_matric=$row->total_elective_matric;
               
                    $sr++;
                  
              }
               $totalMarks=$totalMarks +($physics + $chemistry + $elective_matric);
                   $totalMarksPerSub=$totalMarksPerSub +($t_physics + $t_chemistry + $t_elective_matric);
               ?>
           <tr>
           <th class=text-center><?php echo  "7";?></th>
           <th class="text-center">Physics</th>
           <th><?php echo $t_physics;?></th>
           <th><?php echo $physics;?></th>
           <th></th>
           <th><?php echo $remarks;?></th>
           </tr>
            
            <tr>
           <th class=text-center><?php echo  "8";?></th>
           <th class="text-center">Chemistry</th>
           <th><?php echo $t_chemistry;?></th>
           <th><?php echo $chemistry;?></th>
           <th></th>
           <th><?php echo $remarks;?></th>
           </tr>
            
            <tr>
           <th class=text-center><?php echo  "9";?></th>
           <th class="text-center">Bio/Computer</th>
           <th><?php echo $t_elective_matric;?></th>
           <th><?php echo $elective_matric;?></th>
           <th></th>
           <th><?php echo $remarks;?></th>
           </tr>
             <?php
               }
               }
          
       
              ?>
            <tr>
           <th class=text-center></th>
           <th class="text-center">Total Marks :</th>
           <th> <?php echo $totalMarksPerSub;?></th>
           <th><strong> <?php echo $totalMarks;?></strong></th>
           <th> <?php echo round(($totalMarks*100)/$totalMarksPerSub,2);?> %</th>
           <th></th>
           </tr>
          </table>
        </div>
<div class="col-lg-10 ">

<p>Class Position _______________&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Signature of Principle ________________</p><br>
<p>Signature of Class Incharge _______________</p><br>
        
        </div></div></div>
      </div>

        <div class=container>
        <div class="col-lg-12 mb-4 px-0">
            <button class="btn btn-primary px-5" style="margin-right:10px" id="btnPrint" >Print</button>
        </div>
</div>   
    <div class="row">
        <div class="col-md-3">
      </div>
      </div>
 

        
            
         
              <!-- /.form-group -->
            
  
          
  <?php
          }
    ?>
   

            <!-- /.col -->
          </div>
          <!-- /.row -->
      
        </div>
        <!-- /.box-body -->
        </div>
 

 

 </body>
      
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
   <script type="text/javascript">
$(function(){
  
      function print() {
   
  printJS({
    printable: 'con',
    type: 'html',
    targetStyles: ['*']
 })
}

document.getElementById('btnPrint').addEventListener ("click", print);
<?php
include('user/print.php');
?>
});  
</script>