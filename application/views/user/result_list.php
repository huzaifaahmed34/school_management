<body  onload="window.print()">
    
    <style type="text/css">
      td{
        text-align: center;
      }
    </style>
 <div class="content-wrapper" >
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       Class Result List
      </h1>
      <ol class="breadcrumb">
        <li><a href="<?php echo base_url() ?>"><i class="fas fa-arrow-alt-circle-right"></i> Home</a></li>
        <li><a href="#">Result</a></li>
        
    
        <li class="active"> Class Result List</li>
      </ol>
    </section>
    <?php $class=$this->uri->segment(3);?>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
        

          <div class="box box-success">
              <div class="box-header with-border">
               
                </div>
          
            <!-- /.box-header -->
            <div class="box-body">
              <div class="col-lg-12 text-center">
              <h2>Al-Hayat Foundation Model High School &reg;</h2>
              <h4>Hafiz Abad Colony &nbsp;&nbsp;&nbsp;&nbsp;<span> <img id="n"  src="<?php echo base_url()?>assets/img/d.png" width="100px" height="100px"></span>&nbsp;&nbsp;&nbsp;&nbsp;Bahawalnagar</h4>
            </div>
            <div class="col-xs-9">
Ref # _______________
            </div>
             <div class="col-xs-3">
Dated  _______________
            </div>
             <div class="col-lg-12 ">
              <table width="100%" border="1">
                <tr>
                  <td style="width: 25%;text-align: left;">Class : <?php $qry1=$this->db->query("select class from class where id=$class")->row();
                  echo $qry1->class?></td>
                   <td  style="width: 25%;text-align: left">Incharge : _____________ </td>
                    <td style="width: 25%;text-align: left">Month : <?php echo date('M');?></td>
                     <td style="width: 25%;text-align: left">Class % : ___________</td>
                </tr>
              </table>
<table width="100%" border="1">
  <tr>
    <td rowspan="2">Sr#</td>
     
      <td rowspan="2">Reg #</td>
      
      <td rowspan="2">Name</td>
      <td rowspan="2">Father 's Name</td>
      <td colspan="20">Subjects</td>
     
  </tr>

  <tr>
    <td>ENG</td>
      <td>MATH</td>
         <td>URDU</td>
       <?php 
       if($class<=2){
        ?>
         
                  <td>URDU ORAL</td>
                          <td>ISL ORAL </td>
                          <td>MATH ORAL</td>
                           <td>NAZRA</td>
                          <?php 
                        }
                             if($class>=3 AND $class < 11)
           {
                        ?>

                         
                             <td>GK</td>
                             <?php 

                           }  
                             if($class >=5 )
             {
                           ?>
                              <td>ISLAMIAT</td>
                            <?php }
                            ?>
          
             <?php
             if($class>=6)
             {
             ?>
                 
                     
         
                      <td>PST</td>
  <?php }  
if($class >=11 AND $class <=12)
               {?> <td>COMP/BIO</td>
                <?php 
              }
   if($class>=8 AND $class <=10)  
               {
                            ?>

                        <td>COMP/BIO</td>
                           <td>ARBC</td>
                  <td>AGR/H.ECO</td>
                  <?php 
                }
                else
               { if($class >=11 AND $class <=12)
               {?>
                          <td>PHYSICS</td>
                          <td>CHEMISTRY</td>

                         
                    
                          <?php 
                        }}
                        ?>
 <td>T.M</td>
                          <td>T.Ob</td>
                           <td>%</td>
  </tr>

  
 <?php
      $c=0;
          if(isset($res))
          { 
              foreach($res as $row)
              {

                  
           
     $c++;
                  $sthName=$row->name;
                  $fathername=$row->fathername;
                  $classId=$row->class_id;
                  $stdId=$row->std_id;
                  $reg_no=$row->reg_no;
                  $totalMarks=0;
                  $totalMarksPerSub=100;
                    
              
              $qry=$this->db->query("select * from result where std_id=$stdId");
              $run=$qry->result();
             $totalMarks=0;
             $totalMarksPerSub=0;
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
  <td><?php echo $c?></td>
  <td><?php echo $reg_no?></td>
  <td><?php echo $sthName ?></td>
  <td><?php echo $fathername ?></td>
  <td><?php echo $english ?></td>
  <td><?php echo $math ?></td>
   <td><?php echo $urdu ?></td>

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
            
       <td><?php echo $urdu_oral ?></td>
        <td><?php echo $english_oral ?></td>
         <td><?php echo $math_oral ?></td>
          <td><?php echo $nazra ?></td>
             <?php
             }

              if($classId >=3 AND $classId < 11)
           {
                foreach($run as $row)
              {
                  $gk=$row->gk;
                    $t_gk=$row->total_gk;
                   
                  
                    $sr++;
                  
              }
               $totalMarks=$totalMarks + ($gk);

              $totalMarksPerSub=$totalMarksPerSub + ($t_gk);


                  ?>
                  
                <td><?php echo $gk?></td>
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
              <td><?php echo $islamic_study?></td>

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
                
                
                <td><?php echo $pak_study?></td>
        <?php }
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

  
         <td><?php echo $computer?></td>

        <td><?php echo $arabic?></td>
          <td><?php echo $elective8?></td>
  <?php }

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
                
                        <td><?php echo $elective_matric?></td>
                      
              <td><?php echo $physics?></td>

        <td><?php echo $chemistry?></td>
         
           <?php 
    }
  }
    ?>
    <td><?php echo $totalMarks?></td>
<td><?php echo $totalMarksPerSub?></td>
<td><?php echo  round($totalMarks*100/$totalMarksPerSub,2)?></td>
<?php

$sr++;
}
}
?>
</tr>
</table>
     </div>       </div>
          </div>

        </div>
      </div>
    </section>
  </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>