<body  onload="window.print()">
    
<div class="wrapper" >

<style>
  p{
    font-size: 18px;
  }
  .main-footer{
    display: none;
  }
</style>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="margin-bottom: 20px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
     
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Registration</a></li>
        <li class="active">Service Certificate</li>
      </ol>
    </section>


    <!-- Main content -->
    <section class="invoice" >
      <!-- title row -->
      <div class="row" >
        
        <div class="col-xs-12 text-center" style="margin-bottom: 30px;">
          <h1 >
        AL HAYAT FOUNDATION MODEL HIGH SCHOOL   
            
          </h1>
            <h3>Hafiz Aabad Colony Bahawalnagar</h3>

        </div>
<div class="col-xs-4 text-center " >
  <p>
  Mob:0300-4119966</p>
<p>
  0312-4119966</p>
</div>
<div class="col-xs-4 text-center">
  <img id="n"  src="<?php echo base_url()?>assets/img/d.png" width="100px" height="100px">
</div>
<?php $qry=$this->db->where('id',$id)->get('tch_registration')->row();?>
<div class="col-xs-3 text-center" >
  <p>
  Ref.No :</p>

 <p>
  Date : <?php echo date('d-m-Y')?></p>
</div>

<div class="col-xs-12  " style="margin-top: 20px;">
  <div class="bord text-center" style="background: black;width:300px; color: white;margin:0 auto;">
    <h2><b><i><u>Service Certificate</u></i></b></h2>
  </div>

  </div>
   <div class=col-xs-12 style="margin-top: 20px;">
    <p style="font-size: 20px;">It is certified that Mr/Miss
      &nbsp;&nbsp;
      <span><u> 
        <?php  echo $qry->name?>
          </u></span>
      &nbsp;&nbsp S/O,D/O &nbsp;&nbsp
      <span><u> 
        <?php  echo $qry->fathername?></u> </span>&nbsp;&nbsp; has served as temporary
        in this institution w.e.f  &nbsp;<span><u> 
        <?php  echo date('d-m-Y ',strtotime($qry->date_of_joining))?></u> </span> &nbsp;To &nbsp;<span><u><?php echo date('d-m-Y')?></u></span>.
    </p>
    <p style="font-size: 20px;margin-left: 25px;">
    He / She ,his / her command over all subjects and teaches with full interest and hardwork.
  </p>
   </div>
   <div class=col-xs-9 style="margin-top: 100px;">
 </div>
   <div class=col-xs-3 style="margin-top: 100px;">
   <p>Principle </p></div> </div>
  
    </section>
 </div>
</div>
</body>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>