
 <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       Student Roznamcha
      </h1>
      <ol class="breadcrumb">
        <li><a href="<?php echo base_url() ?>"><i class="fas fa-arrow-alt-circle-right"></i> Home</a></li>
        <li><a href="#">Attendance</a></li>
        <li><a href="#">Roznamcha</a></li>
    
        <li class="active">Student Roznamcha</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
        

          <div class="box box-success">
              <div class="box-header with-border">
               
                </div>
          
            <!-- /.box-header -->
            <div class="box-body">
              
<div class=row><div class=col-md-9 style="margin-left: -2''px">
  </div>
    <div class=col-md-1 style="margin-bottom: 2''px;">
 <button type="button" class="btn btn-primary" onclick="printJS('con', 'html')">
    Print Report
 </button></div>
 <div class=col-md-12>

<table border="1" class="tabl" id=con >
  <tr >
    <td colspan="6"  width="400" > SCHOOL NAME<br><b>AL-HAYAT FOUNDATION GIRLS MODEL HIGH SCHOOL</b></td>

    <td colspan="3" width="200" class="text-center"> SCHOOL CODE </td>
    <td colspan="3" width="200" class="text-center"> DATE : <u><?php echo date('d-M-Y')?></u></td>
  </tr>

  <tr>
    <td colspan="6"></td>
    <td colspan="3" class="text-center"><b>PRESENT</b></td>
    <td colspan="3" class="text-center"><b>ABSENT</b></td>
  </tr>
  <tr>
    <td>No</td>
    <td>CLASS</td>
    <td>SECTION</td>
    <td>BOYS</td>
    <td>GIRLS</td>
    <td>TOTAL</td>
    <td>BOYS</td>
    <td>GIRLS</td>
    <td>TOTAL</td>
    <td>BOYS</td>
    <td>GIRLS</td>
    <TD>TOTAL</TD>
  
  </tr>
<!----Class 1 A --->
<?php


$cl11huztotal_m='';
$cl11huztotal_f='';
$cl11huztotal='';
$cl11huzpresent_m='';
$cl11huzpresent_f='';
$cl11huzpresent='';
$cl11huzabsent_f='';
$cl11huzabsent='';
$cl11huzabsent_m='';

$cl12huztotal_m='';
$cl12huztotal_f='';
$cl12huztotal='';
$cl12huzpresent_m='';
$cl12huzpresent_f='';
$cl12huzpresent='';
$cl12huzabsent_f='';
$cl12huzabsent='';
$cl12huzabsent_m='';













$cl11total_m='';
$cl11total_f='';
$cl11total='';
$cl11present_m='';
$cl11present_f='';
$cl11present='';
$cl11absent_f='';
$cl11absent='';
$cl11absent_m='';

$cl12total_m='';
$cl12total_f='';
$cl12total='';
$cl12present_m='';
$cl12present_f='';
$cl12present='';
$cl12absent_f='';
$cl12absent='';
$cl12absent_m='';

$cl13total_m='';
$cl13total_f='';
$cl13total='';
$cl13present_m='';
$cl13present_f='';
$cl13present='';
$cl13absent_f='';
$cl13absent='';
$cl13absent_m='';

$cl14total_m='';
$cl14total_f='';
$cl14total='';
$cl14present_m='';
$cl14present_f='';
$cl14present='';
$cl14absent_f='';
$cl14absent='';
$cl14absent_m='';

$cl15total_m='';
$cl15total_f='';
$cl15total='';
$cl15present_m='';
$cl15present_f='';
$cl15present='';
$cl15absent_f='';
$cl15absent='';
$cl15absent_m='';

$cl16total_m='';
$cl16total_f='';
$cl16total='';
$cl16present_m='';
$cl16present_f='';
$cl16present='';
$cl16absent_f='';
$cl16absent='';
$cl16absent_m='';


$cl17total_m='';
$cl17total_f='';
$cl17total='';
$cl17present_m='';
$cl17present_f='';
$cl17present='';
$cl17absent_f='';
$cl17absent='';
$cl17absent_m='';

$cl18total_m='';
$cl18total_f='';
$cl18total='';
$cl18present_m='';
$cl18present_f='';
$cl18present='';
$cl18absent_f='';
$cl18absent='';
$cl18absent_m='';

$cl19total_m='';
$cl19total_f='';
$cl19total='';
$cl19present_m='';
$cl19present_f='';
$cl19present='';
$cl19absent_f='';
$cl19absent='';
$cl19absent_m='';

$cl111total_m='';
$cl111total_f='';
$cl111total='';
$cl111present_m='';
$cl111present_f='';
$cl111present='';
$cl111absent_f='';
$cl111absent='';
$cl111absent_m='';

$cl112total_m='';
$cl112total_f='';
$cl112total='';
$cl112present_m='';
$cl112present_f='';
$cl112present='';
$cl112absent_f='';
$cl112absent='';
$cl112absent_m='';

$cl113total_m='';
$cl113total_f='';
$cl113total='';
$cl113present_m='';
$cl113present_f='';
$cl113present='';
$cl113absent_f='';
$cl113absent='';
$cl113absent_m='';

$cl114total_m='';
$cl114total_f='';
$cl114total='';
$cl114present_m='';
$cl114present_f='';
$cl114present='';
$cl114absent_f='';
$cl114absent='';
$cl114absent_m='';



$cl115total_m='';
$cl115total_f='';
$cl115total='';
$cl115present_m='';
$cl115present_f='';
$cl115present='';
$cl115absent_f='';
$cl115absent='';
$cl115absent_m='';

$cl116total_m='';
$cl116total_f='';
$cl116total='';
$cl116present_m='';
$cl116present_f='';
$cl116present='';
$cl116absent_f='';
$cl116absent='';
$cl116absent_m='';

$cl117total_m='';
$cl117total_f='';
$cl117total='';
$cl117present_m='';
$cl117present_f='';
$cl117present='';
$cl117absent_f='';
$cl117absent='';
$cl117absent_m='';

$cl118total_m='';
$cl118total_f='';
$cl118total='';
$cl118present_m='';
$cl118present_f='';
$cl118present='';
$cl118absent_f='';
$cl118absent='';
$cl118absent_m='';

$cl119total_m='';
$cl119total_f='';
$cl119total='';
$cl119present_m='';
$cl119present_f='';
$cl119present='';
$cl119absent_f='';
$cl119absent='';
$cl119absent_m='';

$cl11atotal_m='';
$cl11atotal_f='';
$cl11atotal='';
$cl11apresent_m='';
$cl11apresent_f='';
$cl11apresent='';
$cl11aabsent_f='';
$cl11aabsent='';
$cl11aabsent_m='';

$cl11btotal_m='';
$cl11btotal_f='';
$cl11btotal='';
$cl11bpresent_m='';
$cl11bpresent_f='';
$cl11bpresent='';
$cl11babsent_f='';
$cl11babsent='';
$cl11babsent_m='';

$cl11ctotal_m='';
$cl11ctotal_f='';
$cl11ctotal='';
$cl11cpresent_m='';
$cl11cpresent_f='';
$cl11cpresent='';
$cl11cabsent_f='';
$cl11cabsent='';
$cl11cabsent_m='';

$cl11dtotal_m='';
$cl11dtotal_f='';
$cl11dtotal='';
$cl11dpresent_m='';
$cl11dpresent_f='';
$cl11dpresent='';
$cl11dabsent_f='';
$cl11dabsent='';
$cl11dabsent_m='';

$cl11etotal_m='';
$cl11etotal_f='';
$cl11etotal='';
$cl11epresent_m='';
$cl11epresent_f='';
$cl11epresent='';
$cl11eabsent_f='';
$cl11eabsent='';
$cl11eabsent_m='';

$cl11ftotal_m='';
$cl11ftotal_f='';
$cl11ftotal='';
$cl11fpresent_m='';
$cl11fpresent_f='';
$cl11fpresent='';
$cl11fabsent_f='';
$cl11fabsent='';
$cl11fabsent_m='';

$cl11gtotal_m='';
$cl11gtotal_f='';
$cl11gtotal='';
$cl11gpresent_m='';
$cl11gpresent_f='';
$cl11gpresent='';
$cl11gabsent_f='';
$cl11gabsent='';
$cl11gabsent_m='';

$cl11htotal_m='';
$cl11htotal_f='';
$cl11htotal='';
$cl11hpresent_m='';
$cl11hpresent_f='';
$cl11hpresent='';
$cl11habsent_f='';
$cl11habsent='';
$cl11habsent_m='';

$cl11itotal_m='';
$cl11itotal_f='';
$cl11itotal='';
$cl11ipresent_m='';
$cl11ipresent_f='';
$cl11ipresent='';
$cl11iabsent_f='';
$cl11iabsent='';
$cl11iabsent_m='';

$cl11jtotal_m='';
$cl11jtotal_f='';
$cl11jtotal='';
$cl11jpresent_m='';
$cl11jpresent_f='';
$cl11jpresent='';
$cl11jabsent_f='';
$cl11jabsent='';
$cl11jabsent_m='';

$cl11ktotal_m='';
$cl11ktotal_f='';
$cl11ktotal='';
$cl11kpresent_m='';
$cl11kpresent_f='';
$cl11kpresent='';
$cl11kabsent_f='';
$cl11kabsent='';
$cl11kabsent_m='';

$cl11ltotal_m='';
$cl11ltotal_f='';
$cl11ltotal='';
$cl11lpresent_m='';
$cl11lpresent_f='';
$cl11lpresent='';
$cl11labsent_f='';
$cl11labsent='';
$cl11labsent_m='';

$cl11mtotal_m='';
$cl11mtotal_f='';
$cl11mtotal='';
$cl11mpresent_m='';
$cl11mpresent_f='';
$cl11mpresent='';
$cl11mabsent_f='';
$cl11mabsent='';
$cl11mabsent_m='';


$cl11ntotal_m='';
$cl11ntotal_f='';
$cl11ntotal='';
$cl11npresent_m='';
$cl11npresent_f='';
$cl11npresent='';
$cl11nabsent_f='';
$cl11nabsent='';
$cl11nabsent_m='';

$cl11ototal_m='';
$cl11ototal_f='';
$cl11ototal='';
$cl11opresent_m='';
$cl11opresent_f='';
$cl11opresent='';
$cl11oabsent_f='';
$cl11oabsent='';
$cl11oabsent_m='';

$cl11ptotal_m='';
$cl11ptotal_f='';
$cl11ptotal='';
$cl11ppresent_m='';
$cl11ppresent_f='';
$cl11ppresent='';
$cl11pabsent_f='';
$cl11pabsent='';
$cl11pabsent_m='';


?>
<tr>
  <?php
  $date=date('Y-m-d');
  foreach($data31 as $data){
    if($data->gender=='male' and $data->Date==$date){
    $cl11total_m++;}
     if($data->gender=='female' and $data->Date==$date){
    $cl11total_f++;}

     if($data->Date==$date){
    $cl11total++;}
     if($data->gender=='male' and $data->attendance=='Present' and $data->Date==$date){
    $cl11present_m++;}
     if($data->gender=='female'  and $data->attendance=='Present' and $data->Date==$date){
$cl11present_f++;}
     if($data->attendance=='Present' and $data->Date==$date){
   $cl11present++;}

      if($data->gender=='male' and $data->attendance=='Absent' and $data->Date==$date){
    $cl11absent_m++;}
     if($data->gender=='female'  and $data->attendance=='Absent' and $data->Date==$date){
$cl11absent_f++;}


     if($data->attendance=='Absent' and $data->Date==$date){
   $cl11absent++;}

     }?>
    <td>1</td>
    <td>Nursery</td>
    <td>A</td>
    <td><?php echo $cl11total_m; ?></td>
    <td><?php echo $cl11total_f; ?></td>
    <td><?php echo $cl11total; ?></td>
    <td><?php echo $cl11present_m; ?></td>
    <td><?php echo $cl11present_f; ?></td>
    <td><?php echo $cl11present; ?></td>
    <td><?php echo $cl11absent_m; ?></td>
    <td><?php echo $cl11absent_f; ?></td>
    <td><?php echo $cl11absent; ?></td>

</tr>






<tr>
  <?php
  $date=date('Y-m-d');
  foreach($data32 as $data){
    if($data->gender=='male' and $data->Date==$date){
    $cl11huztotal_m++;}
     if($data->gender=='female' and $data->Date==$date){
    $cl11huztotal_f++;}

     if($data->Date==$date){
    $cl11huztotal++;}
     if($data->gender=='male' and $data->attendance=='Present' and $data->Date==$date){
    $cl11huzpresent_m++;}
     if($data->gender=='female'  and $data->attendance=='Present' and $data->Date==$date){
$cl11huzpresent_f++;}
     if($data->attendance=='Present' and $data->Date==$date){
   $cl11huzpresent++;}

      if($data->gender=='male' and $data->attendance=='Absent' and $data->Date==$date){
    $cl11huzabsent_m++;}
     if($data->gender=='female'  and $data->attendance=='Absent' and $data->Date==$date){
$cl11huzabsent_f++;}


     if($data->attendance=='Absent' and $data->Date==$date){
   $cl11huzabsent++;}

     }?>
    <td>2</td>
    <td>Nursery</td>
    <td>B</td>
    <td><?php echo $cl11huztotal_m; ?></td>
    <td><?php echo $cl11huztotal_f; ?></td>
    <td><?php echo $cl11huztotal; ?></td>
    <td><?php echo $cl11huzpresent_m; ?></td>
    <td><?php echo $cl11huzpresent_f; ?></td>
    <td><?php echo $cl11huzpresent; ?></td>
    <td><?php echo $cl11huzabsent_m; ?></td>
    <td><?php echo $cl11huzabsent_f; ?></td>
    <td><?php echo $cl11huzabsent; ?></td>

</tr>






<tr>
  <?php
  $date=date('Y-m-d');
  foreach($data30 as $data){
    if($data->gender=='male' and $data->Date==$date){
    $cl12total_m++;}
     if($data->gender=='female' and $data->Date==$date){
    $cl12total_f++;}

     if($data->Date==$date){
    $cl12total++;}
     if($data->gender=='male' and $data->attendance=='Present' and $data->Date==$date){
    $cl12present_m++;}
     if($data->gender=='female'  and $data->attendance=='Present' and $data->Date==$date){
$cl12present_f++;}
     if($data->attendance=='Present' and $data->Date==$date){
   $cl12present++;}

      if($data->gender=='male' and $data->attendance=='Absent' and $data->Date==$date){
    $cl12absent_m++;}
     if($data->gender=='female'  and $data->attendance=='Absent' and $data->Date==$date){
$cl12absent_f++;}


     if($data->attendance=='Absent' and $data->Date==$date){
   $cl12absent++;}

     }?>
    <td>3</td>
    <td>Prep</td>
    <td>A</td>
    <td><?php echo $cl12total_m; ?></td>
    <td><?php echo $cl12total_f; ?></td>
    <td><?php echo $cl12total; ?></td>
    <td><?php echo $cl12present_m; ?></td>
    <td><?php echo $cl12present_f; ?></td>
    <td><?php echo $cl12present; ?></td>
    <td><?php echo $cl12absent_m; ?></td>
    <td><?php echo $cl12absent_f; ?></td>
    <td><?php echo $cl12absent; ?></td>
</tr>








<tr>
  <?php
  $date=date('Y-m-d');
  foreach($data33 as $data){
    if($data->gender=='male' and $data->Date==$date){
    $cl12huztotal_m++;}
     if($data->gender=='female' and $data->Date==$date){
    $cl12huztotal_f++;}

     if($data->Date==$date){
    $cl12huztotal++;}
     if($data->gender=='male' and $data->attendance=='Present' and $data->Date==$date){
    $cl12huzpresent_m++;}
     if($data->gender=='female'  and $data->attendance=='Present' and $data->Date==$date){
$cl12huzpresent_f++;}
     if($data->attendance=='Present' and $data->Date==$date){
   $cl12huzpresent++;}

      if($data->gender=='male' and $data->attendance=='Absent' and $data->Date==$date){
    $cl12huzabsent_m++;}
     if($data->gender=='female'  and $data->attendance=='Absent' and $data->Date==$date){
$cl12huzabsent_f++;}


     if($data->attendance=='Absent' and $data->Date==$date){
   $cl12huzabsent++;}

     }?>
    <td>4</td>
    <td>Prep</td>
    <td>B</td>
    <td><?php echo $cl12huztotal_m; ?></td>
    <td><?php echo $cl12huztotal_f; ?></td>
    <td><?php echo $cl12huztotal; ?></td>
    <td><?php echo $cl12huzpresent_m; ?></td>
    <td><?php echo $cl12huzpresent_f; ?></td>
    <td><?php echo $cl12huzpresent; ?></td>
    <td><?php echo $cl12huzabsent_m; ?></td>
    <td><?php echo $cl12huzabsent_f; ?></td>
    <td><?php echo $cl12huzabsent; ?></td>
</tr>





<tr>
  <?php
  $date=date('Y-m-d');
  foreach($dat as $data){
    if($data->gender=='male' and $data->Date==$date){
    $cl13total_m++;}
     if($data->gender=='female' and $data->Date==$date){
    $cl13total_f++;}

     if($data->Date==$date){
    $cl13total++;}
     if($data->gender=='male' and $data->attendance=='Present' and $data->Date==$date){
    $cl13present_m++;}
     if($data->gender=='female'  and $data->attendance=='Present' and $data->Date==$date){
$cl13present_f++;}
     if($data->attendance=='Present' and $data->Date==$date){
   $cl13present++;}

      if($data->gender=='male' and $data->attendance=='Absent' and $data->Date==$date){
    $cl13absent_m++;}
     if($data->gender=='female'  and $data->attendance=='Absent' and $data->Date==$date){
$cl13absent_f++;}


     if($data->attendance=='Absent' and $data->Date==$date){
   $cl13absent++;}

     }?>
    <td>5</td>
    <td>One</td>
    <td>A</td>
    <td><?php echo $cl13total_m; ?></td>
    <td><?php echo $cl13total_f; ?></td>
    <td><?php echo $cl13total; ?></td>
    <td><?php echo $cl13present_m; ?></td>
    <td><?php echo $cl13present_f; ?></td>
    <td><?php echo $cl13present; ?></td>
    <td><?php echo $cl13absent_m; ?></td>
    <td><?php echo $cl13absent_f; ?></td>
    <td><?php echo $cl13absent; ?></td>

</tr><tr>
  <?php
  $date=date('Y-m-d');
  foreach($data1 as $data){
    if($data->gender=='male' and $data->Date==$date){
    $cl14total_m++;}
     if($data->gender=='female' and $data->Date==$date){
    $cl14total_f++;}

     if($data->Date==$date){
    $cl14total++;}
     if($data->gender=='male' and $data->attendance=='Present' and $data->Date==$date){
    $cl14present_m++;}
     if($data->gender=='female'  and $data->attendance=='Present' and $data->Date==$date){
$cl14present_f++;}
     if($data->attendance=='Present' and $data->Date==$date){
   $cl14present++;}

      if($data->gender=='male' and $data->attendance=='Absent' and $data->Date==$date){
    $cl14absent_m++;}
     if($data->gender=='female'  and $data->attendance=='Absent' and $data->Date==$date){
$cl14absent_f++;}


     if($data->attendance=='Absent' and $data->Date==$date){
   $cl14absent++;}

     }?>
    <td>6</td>
    <td>One</td>
    <td>B</td>
    <td><?php echo $cl14total_m; ?></td>
    <td><?php echo $cl14total_f; ?></td>
    <td><?php echo $cl14total; ?></td>
    <td><?php echo $cl14present_m; ?></td>
    <td><?php echo $cl14present_f; ?></td>
    <td><?php echo $cl14present; ?></td>
    <td><?php echo $cl14absent_m; ?></td>
    <td><?php echo $cl14absent_f; ?></td>
    <td><?php echo $cl14absent; ?></td>
</tr><tr>
  <?php
  $date=date('Y-m-d');
  foreach($data2 as $data){
    if($data->gender=='male' and $data->Date==$date){
    $cl15total_m++;}
     if($data->gender=='female' and $data->Date==$date){
    $cl15total_f++;}

     if($data->Date==$date){
    $cl15total++;}
     if($data->gender=='male' and $data->attendance=='Present' and $data->Date==$date){
    $cl15present_m++;}
     if($data->gender=='female'  and $data->attendance=='Present' and $data->Date==$date){
$cl15present_f++;}
     if($data->attendance=='Present' and $data->Date==$date){
   $cl15present++;}

      if($data->gender=='male' and $data->attendance=='Absent' and $data->Date==$date){
    $cl15absent_m++;}
     if($data->gender=='female'  and $data->attendance=='Absent' and $data->Date==$date){
$cl15absent_f++;}


     if($data->attendance=='Absent' and $data->Date==$date){
   $cl15absent++;}

     }?>
    <td>7</td>
    <td>One</td>
    <td>C</td>
    <td><?php echo $cl15total_m; ?></td>
    <td><?php echo $cl15total_f; ?></td>
    <td><?php echo $cl15total; ?></td>
    <td><?php echo $cl15present_m; ?></td>
    <td><?php echo $cl15present_f; ?></td>
    <td><?php echo $cl15present; ?></td>
    <td><?php echo $cl15absent_m; ?></td>
    <td><?php echo $cl15absent_f; ?></td>
    <td><?php echo $cl15absent; ?></td>
</tr><tr>
  <?php
  $date=date('Y-m-d');
  foreach($data3 as $data){
    if($data->gender=='male' and $data->Date==$date){
    $cl16total_m++;}
     if($data->gender=='female' and $data->Date==$date){
    $cl16total_f++;}

     if($data->Date==$date){
    $cl16total++;}
     if($data->gender=='male' and $data->attendance=='Present' and $data->Date==$date){
    $cl16present_m++;}
     if($data->gender=='female'  and $data->attendance=='Present' and $data->Date==$date){
$cl16present_f++;}
     if($data->attendance=='Present' and $data->Date==$date){
   $cl16present++;}

      if($data->gender=='male' and $data->attendance=='Absent' and $data->Date==$date){
    $cl16absent_m++;}
     if($data->gender=='female'  and $data->attendance=='Absent' and $data->Date==$date){
$cl16absent_f++;}


     if($data->attendance=='Absent' and $data->Date==$date){
   $cl16absent++;}

     }?>
    <td>8</td>
    <td>Two</td>
    <td>A</td>
    <td><?php echo $cl16total_m; ?></td>
    <td><?php echo $cl16total_f; ?></td>
    <td><?php echo $cl16total; ?></td>
    <td><?php echo $cl16present_m; ?></td>
    <td><?php echo $cl16present_f; ?></td>
    <td><?php echo $cl16present; ?></td>
    <td><?php echo $cl16absent_m; ?></td>
    <td><?php echo $cl16absent_f; ?></td>
    <td><?php echo $cl16absent; ?></td>
</tr><tr>
  <?php
  $date=date('Y-m-d');
  foreach($data4 as $data){
    if($data->gender=='male' and $data->Date==$date){
    $cl17total_m++;}
     if($data->gender=='female' and $data->Date==$date){
    $cl17total_f++;}

     if($data->Date==$date){
    $cl17total++;}
     if($data->gender=='male' and $data->attendance=='Present' and $data->Date==$date){
    $cl17present_m++;}
     if($data->gender=='female'  and $data->attendance=='Present' and $data->Date==$date){
$cl17present_f++;}
     if($data->attendance=='Present' and $data->Date==$date){
   $cl17present++;}

      if($data->gender=='male' and $data->attendance=='Absent' and $data->Date==$date){
    $cl17absent_m++;}
     if($data->gender=='female'  and $data->attendance=='Absent' and $data->Date==$date){
$cl17absent_f++;}


     if($data->attendance=='Absent' and $data->Date==$date){
   $cl17absent++;}

     }?>
    <td>9</td>
    <td>Two</td>
    <td>B</td>
    <td><?php echo $cl17total_m; ?></td>
    <td><?php echo $cl17total_f; ?></td>
    <td><?php echo $cl17total; ?></td>
    <td><?php echo $cl17present_m; ?></td>
    <td><?php echo $cl17present_f; ?></td>
    <td><?php echo $cl17present; ?></td>
    <td><?php echo $cl17absent_m; ?></td>
    <td><?php echo $cl17absent_f; ?></td>
    <td><?php echo $cl17absent; ?></td>
</tr><tr>
  <?php
  $date=date('Y-m-d');
  foreach($data5 as $data){
    if($data->gender=='male' and $data->Date==$date){
    $cl18total_m++;}
     if($data->gender=='female' and $data->Date==$date){
    $cl18total_f++;}

     if($data->Date==$date){
    $cl18total++;}
     if($data->gender=='male' and $data->attendance=='Present' and $data->Date==$date){
    $cl18present_m++;}
     if($data->gender=='female'  and $data->attendance=='Present' and $data->Date==$date){
$cl18present_f++;}
     if($data->attendance=='Present' and $data->Date==$date){
   $cl18present++;}

      if($data->gender=='male' and $data->attendance=='Absent' and $data->Date==$date){
    $cl18absent_m++;}
     if($data->gender=='female'  and $data->attendance=='Absent' and $data->Date==$date){
$cl18absent_f++;}


     if($data->attendance=='Absent' and $data->Date==$date){
   $cl18absent++;}

     }?>
    <td>10</td>
    <td>Two</td>
    <td>C</td>
    <td><?php echo $cl18total_m; ?></td>
    <td><?php echo $cl18total_f; ?></td>
    <td><?php echo $cl18total; ?></td>
    <td><?php echo $cl18present_m; ?></td>
    <td><?php echo $cl18present_f; ?></td>
    <td><?php echo $cl18present; ?></td>
    <td><?php echo $cl18absent_m; ?></td>
    <td><?php echo $cl18absent_f; ?></td>
    <td><?php echo $cl18absent; ?></td>
</tr><tr>
  <?php
  $date=date('Y-m-d');
  foreach($data6 as $data){
    if($data->gender=='male' and $data->Date==$date){
    $cl19total_m++;}
     if($data->gender=='female' and $data->Date==$date){
    $cl19total_f++;}

     if($data->Date==$date){
    $cl19total++;}
     if($data->gender=='male' and $data->attendance=='Present' and $data->Date==$date){
    $cl19present_m++;}
     if($data->gender=='female'  and $data->attendance=='Present' and $data->Date==$date){
$cl19present_f++;}
     if($data->attendance=='Present' and $data->Date==$date){
   $cl19present++;}

      if($data->gender=='male' and $data->attendance=='Absent' and $data->Date==$date){
    $cl19absent_m++;}
     if($data->gender=='female'  and $data->attendance=='Absent' and $data->Date==$date){
$cl19absent_f++;}


     if($data->attendance=='Absent' and $data->Date==$date){
   $cl19absent++;}

     }?>
    <td>11</td>
    <td>Three</td>
    <td>A</td>
    <td><?php echo $cl19total_m; ?></td>
    <td><?php echo $cl19total_f; ?></td>
    <td><?php echo $cl19total; ?></td>
    <td><?php echo $cl19present_m; ?></td>
    <td><?php echo $cl19present_f; ?></td>
    <td><?php echo $cl19present; ?></td>
    <td><?php echo $cl19absent_m; ?></td>
    <td><?php echo $cl19absent_f; ?></td>
    <td><?php echo $cl19absent; ?></td>

</tr><tr>
  <?php
  $date=date('Y-m-d');
  foreach($data7 as $data){
    if($data->gender=='male' and $data->Date==$date){
    $cl111total_m++;}
     if($data->gender=='female' and $data->Date==$date){
    $cl11total_f++;}

     if($data->Date==$date){
    $cl111total++;}
     if($data->gender=='male' and $data->attendance=='Present' and $data->Date==$date){
    $cl111present_m++;}
     if($data->gender=='female'  and $data->attendance=='Present' and $data->Date==$date){
$cl111present_f++;}
     if($data->attendance=='Present' and $data->Date==$date){
   $cl111present++;}

      if($data->gender=='male' and $data->attendance=='Absent' and $data->Date==$date){
    $cl111absent_m++;}
     if($data->gender=='female'  and $data->attendance=='Absent' and $data->Date==$date){
$cl111absent_f++;}


     if($data->attendance=='Absent' and $data->Date==$date){
   $cl111absent++;}

     }?>
    <td>12</td>
    <td>Three</td>
    <td>B</td>
    <td><?php echo $cl111total_m; ?></td>
    <td><?php echo $cl111total_f; ?></td>
    <td><?php echo $cl111total; ?></td>
    <td><?php echo $cl111present_m; ?></td>
    <td><?php echo $cl111present_f; ?></td>
    <td><?php echo $cl111present; ?></td>
    <td><?php echo $cl111absent_m; ?></td>
    <td><?php echo $cl111absent_f; ?></td>
    <td><?php echo $cl111absent; ?></td>

</tr><tr>
  <?php
  $date=date('Y-m-d');
  foreach($data8 as $data){
    if($data->gender=='male' and $data->Date==$date){
    $cl112total_m++;}
     if($data->gender=='female' and $data->Date==$date){
    $cl112total_f++;}

     if($data->Date==$date){
    $cl112total++;}
     if($data->gender=='male' and $data->attendance=='Present' and $data->Date==$date){
    $cl112present_m++;}
     if($data->gender=='female'  and $data->attendance=='Present' and $data->Date==$date){
$cl112present_f++;}
     if($data->attendance=='Present' and $data->Date==$date){
   $cl112present++;}

      if($data->gender=='male' and $data->attendance=='Absent' and $data->Date==$date){
    $cl112absent_m++;}
     if($data->gender=='female'  and $data->attendance=='Absent' and $data->Date==$date){
$cl112absent_f++;}


     if($data->attendance=='Absent' and $data->Date==$date){
   $cl112absent++;}

     }?>
    <td>13</td>
    <td>Three</td>
    <td>C</td>
    <td><?php echo $cl112total_m; ?></td>
    <td><?php echo $cl112total_f; ?></td>
    <td><?php echo $cl112total; ?></td>
    <td><?php echo $cl112present_m; ?></td>
    <td><?php echo $cl112present_f; ?></td>
    <td><?php echo $cl112present; ?></td>
    <td><?php echo $cl112absent_m; ?></td>
    <td><?php echo $cl112absent_f; ?></td>
    <td><?php echo $cl112absent; ?></td>

</tr><tr>
  <?php
  $date=date('Y-m-d');
  foreach($data9 as $data){
    if($data->gender=='male' and $data->Date==$date){
    $cl113total_m++;}
     if($data->gender=='female' and $data->Date==$date){
    $cl113total_f++;}

     if($data->Date==$date){
    $cl113total++;}
     if($data->gender=='male' and $data->attendance=='Present' and $data->Date==$date){
    $cl113present_m++;}
     if($data->gender=='female'  and $data->attendance=='Present' and $data->Date==$date){
$cl113present_f++;}
     if($data->attendance=='Present' and $data->Date==$date){
   $cl113present++;}

      if($data->gender=='male' and $data->attendance=='Absent' and $data->Date==$date){
    $cl113absent_m++;}
     if($data->gender=='female'  and $data->attendance=='Absent' and $data->Date==$date){
$cl113absent_f++;}


     if($data->attendance=='Absent' and $data->Date==$date){
   $cl113absent++;}

     }?>
    <td>14</td>
    <td>Four</td>
    <td>A</td>
    <td><?php echo $cl113total_m; ?></td>
    <td><?php echo $cl113total_f; ?></td>
    <td><?php echo $cl113total; ?></td>
    <td><?php echo $cl113present_m; ?></td>
    <td><?php echo $cl113present_f; ?></td>
    <td><?php echo $cl113present; ?></td>
    <td><?php echo $cl113absent_m; ?></td>
    <td><?php echo $cl113absent_f; ?></td>
    <td><?php echo $cl113absent; ?></td>

</tr><tr>
  <?php
  $date=date('Y-m-d');
  foreach($data10 as $data){
    if($data->gender=='male' and $data->Date==$date){
    $cl114total_m++;}
     if($data->gender=='female' and $data->Date==$date){
    $cl114total_f++;}

     if($data->Date==$date){
    $cl114total++;}
     if($data->gender=='male' and $data->attendance=='Present' and $data->Date==$date){
    $cl114present_m++;}
     if($data->gender=='female'  and $data->attendance=='Present' and $data->Date==$date){
$cl114present_f++;}
     if($data->attendance=='Present' and $data->Date==$date){
   $cl114present++;}

      if($data->gender=='male' and $data->attendance=='Absent' and $data->Date==$date){
    $cl114absent_m++;}
     if($data->gender=='female'  and $data->attendance=='Absent' and $data->Date==$date){
$cl114absent_f++;}


     if($data->attendance=='Absent' and $data->Date==$date){
   $cl114absent++;}

     }?>
    <td>15</td>
    <td>Four</td>
    <td>B</td>
    <td><?php echo $cl114total_m; ?></td>
    <td><?php echo $cl114total_f; ?></td>
    <td><?php echo $cl114total; ?></td>
    <td><?php echo $cl114present_m; ?></td>
    <td><?php echo $cl114present_f; ?></td>
    <td><?php echo $cl114present; ?></td>
    <td><?php echo $cl114absent_m; ?></td>
    <td><?php echo $cl114absent_f; ?></td>
    <td><?php echo $cl114absent; ?></td>

</tr><tr>
  <?php
  $date=date('Y-m-d');
  foreach($data11 as $data){
    if($data->gender=='male' and $data->Date==$date){
    $cl115total_m++;}
     if($data->gender=='female' and $data->Date==$date){
    $cl115total_f++;}

     if($data->Date==$date){
    $cl115total++;}
     if($data->gender=='male' and $data->attendance=='Present' and $data->Date==$date){
    $cl115present_m++;}
     if($data->gender=='female'  and $data->attendance=='Present' and $data->Date==$date){
$cl115present_f++;}
     if($data->attendance=='Present' and $data->Date==$date){
   $cl115present++;}

      if($data->gender=='male' and $data->attendance=='Absent' and $data->Date==$date){
    $cl115absent_m++;}
     if($data->gender=='female'  and $data->attendance=='Absent' and $data->Date==$date){
$cl115absent_f++;}


     if($data->attendance=='Absent' and $data->Date==$date){
   $cl115absent++;}

     }?>
    <td>16</td>
    <td>Four</td>
    <td>C</td>
    <td><?php echo $cl115total_m; ?></td>
    <td><?php echo $cl115total_f; ?></td>
    <td><?php echo $cl115total; ?></td>
    <td><?php echo $cl115present_m; ?></td>
    <td><?php echo $cl115present_f; ?></td>
    <td><?php echo $cl115present; ?></td>
    <td><?php echo $cl115absent_m; ?></td>
    <td><?php echo $cl115absent_f; ?></td>
    <td><?php echo $cl115absent; ?></td>

</tr><tr>
  <?php
  $date=date('Y-m-d');
  foreach($data12 as $data){
    if($data->gender=='male' and $data->Date==$date){
    $cl116total_m++;}
     if($data->gender=='female' and $data->Date==$date){
    $cl116total_f++;}

     if($data->Date==$date){
    $cl116total++;}
     if($data->gender=='male' and $data->attendance=='Present' and $data->Date==$date){
    $cl116present_m++;}
     if($data->gender=='female'  and $data->attendance=='Present' and $data->Date==$date){
$cl116present_f++;}
     if($data->attendance=='Present' and $data->Date==$date){
   $cl116present++;}

      if($data->gender=='male' and $data->attendance=='Absent' and $data->Date==$date){
    $cl116absent_m++;}
     if($data->gender=='female'  and $data->attendance=='Absent' and $data->Date==$date){
$cl116absent_f++;}


     if($data->attendance=='Absent' and $data->Date==$date){
   $cl116absent++;}

     }?>
    <td>17</td>
    <td>Five</td>
    <td>A</td>
    <td><?php echo $cl116total_m; ?></td>
    <td><?php echo $cl116total_f; ?></td>
    <td><?php echo $cl116total; ?></td>
    <td><?php echo $cl116present_m; ?></td>
    <td><?php echo $cl116present_f; ?></td>
    <td><?php echo $cl116present; ?></td>
    <td><?php echo $cl116absent_m; ?></td>
    <td><?php echo $cl116absent_f; ?></td>
    <td><?php echo $cl116absent; ?></td>

</tr><tr>
  <?php
  $date=date('Y-m-d');
  foreach($data13 as $data){
    if($data->gender=='male' and $data->Date==$date){
    $cl117total_m++;}
     if($data->gender=='female' and $data->Date==$date){
    $cl117total_f++;}

     if($data->Date==$date){
    $cl117total++;}
     if($data->gender=='male' and $data->attendance=='Present' and $data->Date==$date){
    $cl117present_m++;}
     if($data->gender=='female'  and $data->attendance=='Present' and $data->Date==$date){
$cl117present_f++;}
     if($data->attendance=='Present' and $data->Date==$date){
   $cl117present++;}

      if($data->gender=='male' and $data->attendance=='Absent' and $data->Date==$date){
    $cl117absent_m++;}
     if($data->gender=='female'  and $data->attendance=='Absent' and $data->Date==$date){
$cl117absent_f++;}


     if($data->attendance=='Absent' and $data->Date==$date){
   $cl117absent++;}

     }?>
    <td>18</td>
    <td>Five</td>
    <td>B</td>
    <td><?php echo $cl117total_m; ?></td>
    <td><?php echo $cl117total_f; ?></td>
    <td><?php echo $cl117total; ?></td>
    <td><?php echo $cl117present_m; ?></td>
    <td><?php echo $cl117present_f; ?></td>
    <td><?php echo $cl117present; ?></td>
    <td><?php echo $cl117absent_m; ?></td>
    <td><?php echo $cl117absent_f; ?></td>
    <td><?php echo $cl117absent; ?></td>

</tr><tr>
  <?php
  $date=date('Y-m-d');
  foreach($data14 as $data){
    if($data->gender=='male' and $data->Date==$date){
    $cl118total_m++;}
     if($data->gender=='female' and $data->Date==$date){
    $cl118total_f++;}

     if($data->Date==$date){
    $cl118total++;}
     if($data->gender=='male' and $data->attendance=='Present' and $data->Date==$date){
    $cl118present_m++;}
     if($data->gender=='female'  and $data->attendance=='Present' and $data->Date==$date){
$cl118present_f++;}
     if($data->attendance=='Present' and $data->Date==$date){
   $cl118present++;}

      if($data->gender=='male' and $data->attendance=='Absent' and $data->Date==$date){
    $cl118absent_m++;}
     if($data->gender=='female'  and $data->attendance=='Absent' and $data->Date==$date){
$cl118absent_f++;}


     if($data->attendance=='Absent' and $data->Date==$date){
   $cl118absent++;}

     }?>
    <td>19</td>
    <td>Five</td>
    <td>C</td>
    <td><?php echo $cl118total_m; ?></td>
    <td><?php echo $cl118total_f; ?></td>
    <td><?php echo $cl118total; ?></td>
    <td><?php echo $cl118present_m; ?></td>
    <td><?php echo $cl118present_f; ?></td>
    <td><?php echo $cl118present; ?></td>
    <td><?php echo $cl118absent_m; ?></td>
    <td><?php echo $cl118absent_f; ?></td>
    <td><?php echo $cl118absent; ?></td>

</tr><tr>
  <?php
  $date=date('Y-m-d');
  foreach($data15 as $data){
    if($data->gender=='male' and $data->Date==$date){
    $cl119total_m++;}
     if($data->gender=='female' and $data->Date==$date){
    $cl119total_f++;}

     if($data->Date==$date){
    $cl119total++;}
     if($data->gender=='male' and $data->attendance=='Present' and $data->Date==$date){
    $cl119present_m++;}
     if($data->gender=='female'  and $data->attendance=='Present' and $data->Date==$date){
$cl119present_f++;}
     if($data->attendance=='Present' and $data->Date==$date){
   $cl119present++;}

      if($data->gender=='male' and $data->attendance=='Absent' and $data->Date==$date){
    $cl119absent_m++;}
     if($data->gender=='female'  and $data->attendance=='Absent' and $data->Date==$date){
$cl119absent_f++;}


     if($data->attendance=='Absent' and $data->Date==$date){
   $cl119absent++;}

     }?>
    <td>20</td>
    <td>Six</td>
    <td>A</td>
    <td><?php echo $cl119total_m; ?></td>
    <td><?php echo $cl119total_f; ?></td>
    <td><?php echo $cl119total; ?></td>
    <td><?php echo $cl119present_m; ?></td>
    <td><?php echo $cl119present_f; ?></td>
    <td><?php echo $cl119present; ?></td>
    <td><?php echo $cl119absent_m; ?></td>
    <td><?php echo $cl119absent_f; ?></td>
    <td><?php echo $cl119absent; ?></td>

</tr><tr>
  <?php
  $date=date('Y-m-d');
  foreach($data16 as $data){
    if($data->gender=='male' and $data->Date==$date){
    $cl11atotal_m++;}
     if($data->gender=='female' and $data->Date==$date){
    $cl11atotal_f++;}

     if($data->Date==$date){
    $cl11atotal++;}
     if($data->gender=='male' and $data->attendance=='Present' and $data->Date==$date){
    $cl11apresent_m++;}
     if($data->gender=='female'  and $data->attendance=='Present' and $data->Date==$date){
$cl11apresent_f++;}
     if($data->attendance=='Present' and $data->Date==$date){
   $cl11apresent++;}

      if($data->gender=='male' and $data->attendance=='Absent' and $data->Date==$date){
    $cl11aabsent_m++;}
     if($data->gender=='female'  and $data->attendance=='Absent' and $data->Date==$date){
$cl11aabsent_f++;}


     if($data->attendance=='Absent' and $data->Date==$date){
   $cl11aabsent++;}

     }?>
    <td>21</td>
    <td>Six</td>
    <td>B</td>
    <td><?php echo $cl11atotal_m; ?></td>
    <td><?php echo $cl11atotal_f; ?></td>
    <td><?php echo $cl11atotal; ?></td>
    <td><?php echo $cl11apresent_m; ?></td>
    <td><?php echo $cl11apresent_f; ?></td>
    <td><?php echo $cl11apresent; ?></td>
    <td><?php echo $cl11aabsent_m; ?></td>
    <td><?php echo $cl11aabsent_f; ?></td>
    <td><?php echo $cl11aabsent; ?></td>
</tr><tr>
  <?php
  $date=date('Y-m-d');
  foreach($data17 as $data){
    if($data->gender=='male' and $data->Date==$date){
    $cl11btotal_m++;}
     if($data->gender=='female' and $data->Date==$date){
    $cl11btotal_f++;}

     if($data->Date==$date){
    $cl11btotal++;}
     if($data->gender=='male' and $data->attendance=='Present' and $data->Date==$date){
    $cl11bpresent_m++;}
     if($data->gender=='female'  and $data->attendance=='Present' and $data->Date==$date){
$cl11bpresent_f++;}
     if($data->attendance=='Present' and $data->Date==$date){
   $cl11bpresent++;}

      if($data->gender=='male' and $data->attendance=='Absent' and $data->Date==$date){
    $cl11babsent_m++;}
     if($data->gender=='female'  and $data->attendance=='Absent' and $data->Date==$date){
$cl11babsent_f++;}


     if($data->attendance=='Absent' and $data->Date==$date){
   $cl11babsent++;}

     }?>
    <td>22</td>
    <td>Six</td>
    <td>C</td>
    <td><?php echo $cl11btotal_m; ?></td>
    <td><?php echo $cl11btotal_f; ?></td>
    <td><?php echo $cl11btotal; ?></td>
    <td><?php echo $cl11bpresent_m; ?></td>
    <td><?php echo $cl11bpresent_f; ?></td>
    <td><?php echo $cl11bpresent; ?></td>
    <td><?php echo $cl11babsent_m; ?></td>
    <td><?php echo $cl11babsent_f; ?></td>
    <td><?php echo $cl11babsent; ?></td>

</tr><tr>
  <?php
  $date=date('Y-m-d');
  foreach($data18 as $data){
    if($data->gender=='male' and $data->Date==$date){
    $cl11ctotal_m++;}
     if($data->gender=='female' and $data->Date==$date){
    $cl11ctotal_f++;}

     if($data->Date==$date){
    $cl11ctotal++;}
     if($data->gender=='male' and $data->attendance=='Present' and $data->Date==$date){
    $cl11cpresent_m++;}
     if($data->gender=='female'  and $data->attendance=='Present' and $data->Date==$date){
$cl11cpresent_f++;}
     if($data->attendance=='Present' and $data->Date==$date){
   $cl11cpresent++;}

      if($data->gender=='male' and $data->attendance=='Absent' and $data->Date==$date){
    $cl11cabsent_m++;}
     if($data->gender=='female'  and $data->attendance=='Absent' and $data->Date==$date){
$cl11cabsent_f++;}


     if($data->attendance=='Absent' and $data->Date==$date){
   $cl11cabsent++;}

     }?>
    <td>23</td>
    <td>Seven</td>
    <td>A</td>
    <td><?php echo $cl11ctotal_m; ?></td>
    <td><?php echo $cl11ctotal_f; ?></td>
    <td><?php echo $cl11ctotal; ?></td>
    <td><?php echo $cl11cpresent_m; ?></td>
    <td><?php echo $cl11cpresent_f; ?></td>
    <td><?php echo $cl11cpresent; ?></td>
    <td><?php echo $cl11cabsent_m; ?></td>
    <td><?php echo $cl11cabsent_f; ?></td>
    <td><?php echo $cl11cabsent; ?></td>

</tr><tr>
  <?php
  $date=date('Y-m-d');
  foreach($data19 as $data){
    if($data->gender=='male' and $data->Date==$date){
    $cl11dtotal_m++;}
     if($data->gender=='female' and $data->Date==$date){
    $cl11dtotal_f++;}

     if($data->Date==$date){
    $cl11dtotal++;}
     if($data->gender=='male' and $data->attendance=='Present' and $data->Date==$date){
    $cl11dpresent_m++;}
     if($data->gender=='female'  and $data->attendance=='Present' and $data->Date==$date){
$cl11dpresent_f++;}
     if($data->attendance=='Present' and $data->Date==$date){
   $cl11dpresent++;}

      if($data->gender=='male' and $data->attendance=='Absent' and $data->Date==$date){
    $cl11dabsent_m++;}
     if($data->gender=='female'  and $data->attendance=='Absent' and $data->Date==$date){
$cl11dabsent_f++;}


     if($data->attendance=='Absent' and $data->Date==$date){
   $cl11dabsent++;}

     }?>
    <td>24</td>
    <td>Seven</td>
    <td>B</td>
    <td><?php echo $cl11dtotal_m; ?></td>
    <td><?php echo $cl11dtotal_f; ?></td>
    <td><?php echo $cl11dtotal; ?></td>
    <td><?php echo $cl11dpresent_m; ?></td>
    <td><?php echo $cl11dpresent_f; ?></td>
    <td><?php echo $cl11dpresent; ?></td>
    <td><?php echo $cl11dabsent_m; ?></td>
    <td><?php echo $cl11dabsent_f; ?></td>
    <td><?php echo $cl11dabsent; ?></td>

</tr><tr>
  <?php
  $date=date('Y-m-d');
  foreach($data20 as $data){
    if($data->gender=='male' and $data->Date==$date){
    $cl11etotal_m++;}
     if($data->gender=='female' and $data->Date==$date){
    $cl11etotal_f++;}

     if($data->Date==$date){
    $cl11etotal++;}
     if($data->gender=='male' and $data->attendance=='Present' and $data->Date==$date){
    $cl11epresent_m++;}
     if($data->gender=='female'  and $data->attendance=='Present' and $data->Date==$date){
$cl11epresent_f++;}
     if($data->attendance=='Present' and $data->Date==$date){
   $cl11epresent++;}

      if($data->gender=='male' and $data->attendance=='Absent' and $data->Date==$date){
    $cl11eabsent_m++;}
     if($data->gender=='female'  and $data->attendance=='Absent' and $data->Date==$date){
$cl11eabsent_f++;}


     if($data->attendance=='Absent' and $data->Date==$date){
   $cl11eabsent++;}

     }?>
    <td>25</td>
    <td>Seven</td>
    <td>C</td>
    <td><?php echo $cl11etotal_m; ?></td>
    <td><?php echo $cl11etotal_f; ?></td>
    <td><?php echo $cl11etotal; ?></td>
    <td><?php echo $cl11epresent_m; ?></td>
    <td><?php echo $cl11epresent_f; ?></td>
    <td><?php echo $cl11epresent; ?></td>
    <td><?php echo $cl11eabsent_m; ?></td>
    <td><?php echo $cl11eabsent_f; ?></td>
    <td><?php echo $cl11eabsent; ?></td>

</tr><tr>
  <?php
  $date=date('Y-m-d');
  foreach($data21 as $data){
    if($data->gender=='male' and $data->Date==$date){
    $cl11ftotal_m++;}
     if($data->gender=='female' and $data->Date==$date){
    $cl11ftotal_f++;}

     if($data->Date==$date){
    $cl11ftotal++;}
     if($data->gender=='male' and $data->attendance=='Present' and $data->Date==$date){
    $cl11fpresent_m++;}
     if($data->gender=='female'  and $data->attendance=='Present' and $data->Date==$date){
$cl11fpresent_f++;}
     if($data->attendance=='Present' and $data->Date==$date){
   $cl11fpresent++;}

      if($data->gender=='male' and $data->attendance=='Absent' and $data->Date==$date){
    $cl11fabsent_m++;}
     if($data->gender=='female'  and $data->attendance=='Absent' and $data->Date==$date){
$cl11fabsent_f++;}


     if($data->attendance=='Absent' and $data->Date==$date){
   $cl11fabsent++;}

     }?>
    <td>26</td>
    <td>Eight</td>
    <td>A</td>
    <td><?php echo $cl11ftotal_m; ?></td>
    <td><?php echo $cl11ftotal_f; ?></td>
    <td><?php echo $cl11ftotal; ?></td>
    <td><?php echo $cl11fpresent_m; ?></td>
    <td><?php echo $cl11fpresent_f; ?></td>
    <td><?php echo $cl11fpresent; ?></td>
    <td><?php echo $cl11fabsent_m; ?></td>
    <td><?php echo $cl11fabsent_f; ?></td>
    <td><?php echo $cl11fabsent; ?></td>

</tr><tr>
  <?php
  $date=date('Y-m-d');
  foreach($data22 as $data){
    if($data->gender=='male' and $data->Date==$date){
    $cl11gtotal_m++;}
     if($data->gender=='female' and $data->Date==$date){
    $cl11gtotal_f++;}

     if($data->Date==$date){
    $cl11gtotal++;}
     if($data->gender=='male' and $data->attendance=='Present' and $data->Date==$date){
    $cl11gpresent_m++;}
     if($data->gender=='female'  and $data->attendance=='Present' and $data->Date==$date){
$cl11gpresent_f++;}
     if($data->attendance=='Present' and $data->Date==$date){
   $cl11gpresent++;}

      if($data->gender=='male' and $data->attendance=='Absent' and $data->Date==$date){
    $cl11gabsent_m++;}
     if($data->gender=='female'  and $data->attendance=='Absent' and $data->Date==$date){
$cl11gabsent_f++;}


     if($data->attendance=='Absent' and $data->Date==$date){
   $cl11gabsent++;}

     }?>
    <td>27</td>
    <td>Eight</td>
    <td>B</td>
    <td><?php echo $cl11gtotal_m; ?></td>
    <td><?php echo $cl11gtotal_f; ?></td>
    <td><?php echo $cl11gtotal; ?></td>
    <td><?php echo $cl11gpresent_m; ?></td>
    <td><?php echo $cl11gpresent_f; ?></td>
    <td><?php echo $cl11gpresent; ?></td>
    <td><?php echo $cl11gabsent_m; ?></td>
    <td><?php echo $cl11gabsent_f; ?></td>
    <td><?php echo $cl11gabsent; ?></td>

</tr><tr>
  <?php
  $date=date('Y-m-d');
  foreach($data23 as $data){
    if($data->gender=='male' and $data->Date==$date){
    $cl11htotal_m++;}
     if($data->gender=='female' and $data->Date==$date){
    $cl11htotal_f++;}

     if($data->Date==$date){
    $cl11htotal++;}
     if($data->gender=='male' and $data->attendance=='Present' and $data->Date==$date){
    $cl11hpresent_m++;}
     if($data->gender=='female'  and $data->attendance=='Present' and $data->Date==$date){
$cl11hpresent_f++;}
     if($data->attendance=='Present' and $data->Date==$date){
   $cl11hpresent++;}

      if($data->gender=='male' and $data->attendance=='Absent' and $data->Date==$date){
    $cl11habsent_m++;}
     if($data->gender=='female'  and $data->attendance=='Absent' and $data->Date==$date){
$cl11habsent_f++;}


     if($data->attendance=='Absent' and $data->Date==$date){
   $cl11habsent++;}

     }?>
    <td>28</td>
    <td>Eight</td>
    <td>C</td>
    <td><?php echo $cl11htotal_m; ?></td>
    <td><?php echo $cl11htotal_f; ?></td>
    <td><?php echo $cl11htotal; ?></td>
    <td><?php echo $cl11hpresent_m; ?></td>
    <td><?php echo $cl11hpresent_f; ?></td>
    <td><?php echo $cl11hpresent; ?></td>
    <td><?php echo $cl11habsent_m; ?></td>
    <td><?php echo $cl11habsent_f; ?></td>
    <td><?php echo $cl11habsent; ?></td>

</tr><tr>
  <?php
  $date=date('Y-m-d');
  foreach($data24 as $data){
    if($data->gender=='male' and $data->Date==$date){
    $cl11itotal_m++;}
     if($data->gender=='female' and $data->Date==$date){
    $cl11itotal_f++;}

     if($data->Date==$date){
    $cl11itotal++;}
     if($data->gender=='male' and $data->attendance=='Present' and $data->Date==$date){
    $cl11ipresent_m++;}
     if($data->gender=='female'  and $data->attendance=='Present' and $data->Date==$date){
$cl11ipresent_f++;}
     if($data->attendance=='Present' and $data->Date==$date){
   $cl11ipresent++;}

      if($data->gender=='male' and $data->attendance=='Absent' and $data->Date==$date){
    $cl11iabsent_m++;}
     if($data->gender=='female'  and $data->attendance=='Absent' and $data->Date==$date){
$cl11iabsent_f++;}


     if($data->attendance=='Absent' and $data->Date==$date){
   $cl11iabsent++;}

     }?>
    <td>29</td>
    <td>Nine</td>
    <td>A</td>
    <td><?php echo $cl11itotal_m; ?></td>
    <td><?php echo $cl11itotal_f; ?></td>
    <td><?php echo $cl11itotal; ?></td>
    <td><?php echo $cl11ipresent_m; ?></td>
    <td><?php echo $cl11ipresent_f; ?></td>
    <td><?php echo $cl11ipresent; ?></td>
    <td><?php echo $cl11iabsent_m; ?></td>
    <td><?php echo $cl11iabsent_f; ?></td>
    <td><?php echo $cl11iabsent; ?></td>

</tr><tr>
  <?php
  $date=date('Y-m-d');
  foreach($data25 as $data){
    if($data->gender=='male' and $data->Date==$date){
    $cl11jtotal_m++;}
     if($data->gender=='female' and $data->Date==$date){
    $cl11jtotal_f++;}

     if($data->Date==$date){
    $cl11jtotal++;}
     if($data->gender=='male' and $data->attendance=='Present' and $data->Date==$date){
    $cl11jpresent_m++;}
     if($data->gender=='female'  and $data->attendance=='Present' and $data->Date==$date){
$cl11jpresent_f++;}
     if($data->attendance=='Present' and $data->Date==$date){
   $cl11jpresent++;}

      if($data->gender=='male' and $data->attendance=='Absent' and $data->Date==$date){
    $cl11jabsent_m++;}
     if($data->gender=='female'  and $data->attendance=='Absent' and $data->Date==$date){
$cl11jabsent_f++;}


     if($data->attendance=='Absent' and $data->Date==$date){
   $cl11jabsent++;}

     }?>
    <td>30</td>
    <td>Nine</td>
    <td>B</td>
    <td><?php echo $cl11jtotal_m; ?></td>
    <td><?php echo $cl11jtotal_f; ?></td>
    <td><?php echo $cl11jtotal; ?></td>
    <td><?php echo $cl11jpresent_m; ?></td>
    <td><?php echo $cl11jpresent_f; ?></td>
    <td><?php echo $cl11jpresent; ?></td>
    <td><?php echo $cl11jabsent_m; ?></td>
    <td><?php echo $cl11jabsent_f; ?></td>
    <td><?php echo $cl11jabsent; ?></td>

</tr><tr>
  <?php
  $date=date('Y-m-d');
  foreach($data26 as $data){
    if($data->gender=='male' and $data->Date==$date){
    $cl11ktotal_m++;}
     if($data->gender=='female' and $data->Date==$date){
    $cl11ktotal_f++;}

     if($data->Date==$date){
    $cl11ktotal++;}
     if($data->gender=='male' and $data->attendance=='Present' and $data->Date==$date){
    $cl11kpresent_m++;}
     if($data->gender=='female'  and $data->attendance=='Present' and $data->Date==$date){
$cl11kpresent_f++;}
     if($data->attendance=='Present' and $data->Date==$date){
   $cl11kpresent++;}

      if($data->gender=='male' and $data->attendance=='Absent' and $data->Date==$date){
    $cl11kabsent_m++;}
     if($data->gender=='female'  and $data->attendance=='Absent' and $data->Date==$date){
$cl11kabsent_f++;}


     if($data->attendance=='Absent' and $data->Date==$date){
   $cl11kabsent++;}

     }?>
    <td>31</td>
    <td>Nine</td>
    <td>C</td>
    <td><?php echo $cl11ktotal_m; ?></td>
    <td><?php echo $cl11ktotal_f; ?></td>
    <td><?php echo $cl11ktotal; ?></td>
    <td><?php echo $cl11kpresent_m; ?></td>
    <td><?php echo $cl11kpresent_f; ?></td>
    <td><?php echo $cl11kpresent; ?></td>
    <td><?php echo $cl11kabsent_m; ?></td>
    <td><?php echo $cl11kabsent_f; ?></td>
    <td><?php echo $cl11kabsent; ?></td>
</tr><tr>
  <?php
  $date=date('Y-m-d');
  foreach($data27 as $data){
    if($data->gender=='male' and $data->Date==$date){
    $cl11mtotal_m++;}
     if($data->gender=='female' and $data->Date==$date){
    $cl11mtotal_f++;}

     if($data->Date==$date){
    $cl11mtotal++;}
     if($data->gender=='male' and $data->attendance=='Present' and $data->Date==$date){
    $cl11mpresent_m++;}
     if($data->gender=='female'  and $data->attendance=='Present' and $data->Date==$date){
$cl11mpresent_f++;}
     if($data->attendance=='Present' and $data->Date==$date){
   $cl11mpresent++;}

      if($data->gender=='male' and $data->attendance=='Absent' and $data->Date==$date){
    $cl11mabsent_m++;}
     if($data->gender=='female'  and $data->attendance=='Absent' and $data->Date==$date){
$cl11mabsent_f++;}


     if($data->attendance=='Absent' and $data->Date==$date){
   $cl11mabsent++;}

     }?>
    <td>32</td>
    <td>Ten</td>
    <td>A</td>
    <td><?php echo $cl11mtotal_m; ?></td>
    <td><?php echo $cl11mtotal_f; ?></td>
    <td><?php echo $cl11mtotal; ?></td>
    <td><?php echo $cl11mpresent_m; ?></td>
    <td><?php echo $cl11mpresent_f; ?></td>
    <td><?php echo $cl11mpresent; ?></td>
    <td><?php echo $cl11mabsent_m; ?></td>
    <td><?php echo $cl11mabsent_f; ?></td>
    <td><?php echo $cl11mabsent; ?></td>

</tr><tr>
  <?php
  $date=date('Y-m-d');
  foreach($data28 as $data){
    if($data->gender=='male' and $data->Date==$date){
    $cl11ntotal_m++;}
     if($data->gender=='female' and $data->Date==$date){
    $cl11ntotal_f++;}

     if($data->Date==$date){
    $cl11ntotal++;}
     if($data->gender=='male' and $data->attendance=='Present' and $data->Date==$date){
    $cl11npresent_m++;}
     if($data->gender=='female'  and $data->attendance=='Present' and $data->Date==$date){
$cl11npresent_f++;}
     if($data->attendance=='Present' and $data->Date==$date){
   $cl11npresent++;}

      if($data->gender=='male' and $data->attendance=='Absent' and $data->Date==$date){
    $cl11nabsent_m++;}
     if($data->gender=='female'  and $data->attendance=='Absent' and $data->Date==$date){
$cl11nabsent_f++;}


     if($data->attendance=='Absent' and $data->Date==$date){
   $cl11nabsent++;}

     }?>
    <td>33</td>
    <td>Ten</td>
    <td>B</td>
    <td><?php echo $cl11ntotal_m; ?></td>
    <td><?php echo $cl11ntotal_f; ?></td>
    <td><?php echo $cl11ntotal; ?></td>
    <td><?php echo $cl11npresent_m; ?></td>
    <td><?php echo $cl11npresent_f; ?></td>
    <td><?php echo $cl11npresent; ?></td>
    <td><?php echo $cl11nabsent_m; ?></td>
    <td><?php echo $cl11nabsent_f; ?></td>
    <td><?php echo $cl11nabsent; ?></td>

</tr><tr>
  <?php
  $date=date('Y-m-d');
  foreach($data29 as $data){
    if($data->gender=='male' and $data->Date==$date){
    $cl11ototal_m++;}
     if($data->gender=='female' and $data->Date==$date){
    $cl11ototal_f++;}

     if($data->Date==$date){
    $cl11ototal++;}
     if($data->gender=='male' and $data->attendance=='Present' and $data->Date==$date){
    $cl11opresent_m++;}
     if($data->gender=='female'  and $data->attendance=='Present' and $data->Date==$date){
$cl11opresent_f++;}
     if($data->attendance=='Present' and $data->Date==$date){
   $cl11opresent++;}

      if($data->gender=='male' and $data->attendance=='Absent' and $data->Date==$date){
    $cl11oabsent_m++;}
     if($data->gender=='female'  and $data->attendance=='Absent' and $data->Date==$date){
$cl11oabsent_f++;}


     if($data->attendance=='Absent' and $data->Date==$date){
   $cl11oabsent++;}

     }?>
    <td>34</td>
    <td>Ten</td>
    <td>C</td>
    <td><?php echo $cl11ototal_m; ?></td>
    <td><?php echo $cl11ototal_f; ?></td>
    <td><?php echo $cl11ototal; ?></td>
    <td><?php echo $cl11opresent_m; ?></td>
    <td><?php echo $cl11opresent_f; ?></td>
    <td><?php echo $cl11opresent; ?></td>
    <td><?php echo $cl11oabsent_m; ?></td>
    <td><?php echo $cl11oabsent_f; ?></td>
    <td><?php echo $cl11oabsent; ?></td>

</tr>
</table>


</div>
     </div></div></div></div></section></div>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
      <script src="<?php echo base_url('assets/js/print.min.js')?>"></script>
   