
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       Staff Roznamcha
      </h1>
      <ol class="breadcrumb">
        <li><a href="<?php echo base_url() ?>"><i class="fas fa-arrow-alt-circle-right"></i> Home</a></li>
        <li><a href="#">Attendance</a></li>
        <li><a href="#">Roznamcha</a></li>
    
        <li class="active">Staff Roznamcha</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
        

          <div class="box box-success " style="padding-top: 10px;">
            
          
            <!-- /.box-header -->
            <div class="box-body">
        
        
 
     
      <table class="table">
        <thead class="thead">
        <tr style="background:black;color:white">

          <th>Sno</th>
          <th>Name</th>
        <th>Cnic</th>
        <th>Gender</th>
     
        <th>Attendance</th>
      </tr></thead>
      <?php 
      $s=0;
        foreach($result as $r){
        
$s++;
         ?>
                
         
  
 <tr>
         
    
        <td><?php echo $s?></td>
          <td><?php echo $r->name?> </td>
            <td><?php echo $r->cnic?> </td>
              <td><?php echo $r->gender?> </td>
             
                 <td><?php echo $r->attendance?> </td>
        </tr>
       
           
        <?php
}

?>

</table>









</div></div></div></div></section></div>