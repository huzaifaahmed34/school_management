<body  onload="window.print()">
    
<div class="wrapper" >

<style>
  p{
    font-size: 18px;
  }
  .main-footer{
    display: none;
  }
  #watermark
{
    position: absolute;
    bottom: 15%;
    width: 250px;
    height: 287px;
    /* right: 5px; */
    left: 32%;
    opacity: 0.3;
    z-index: 99;
    color: white;
}
</style>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="margin-bottom: 20px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
     
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Certificate</a></li>
        <li class="active">School Leaving Certificate</li>
      </ol>
    </section>

<?php 
$qry=$this->db->select('s.reg_no,s.name,s.fathername,s.image,s.admission_date,s.dob,c.class,sec.section,count(a.attendance) as present')->from('student_registration as s,attendance as a,class as c,section as sec')->where('s.id=a.st_id')->where('s.id='.$id.'')->where('a.attendance="Present"')->where('s.class_id=c.id')->where('s.section_id=sec.id')->where('c.id=sec.class_id')->get()->row();

  # code...

?>
    <!-- Main content -->
    <section class="invoice" style="margin-top: 40px;">
      <!-- title row -->
      <div class="row">
        <div class="col-xs-12 " style="margin-bottom: 30px;">
          <div class="col-xs-3">
          <span style="font-size: 18px;">St.Code:</span>
        </div>
        <div class="col-xs-6">
            <img id="n"  src="<?php echo base_url()?>assets/img/bis.webp" width="400px" height="40px">
          </div>
             <div class="col-xs-3">
          <span style="font-size: 18px;">Reg. No : <?php echo $qry->reg_no;?></span>
</div>
        </div>
<div class="col-xs-2 text-center " >
   <img id="n"  src="<?php echo base_url()?>assets/img/d.png" width="100px" height="100px">
</div>
<div class="col-xs-8 text-center">
 <h3><b>
        AL HAYAT FOUNDATION MODEL HIGH SCHOOL   
            </b>
          </h3>
          <h4>Hafiz Aabad Colony Bahawalnagar</h4>
          <div class="bord text-center" style="background: black; color: white;margin:0 auto;">
    <h3><b>School Leaving (Transfer) Certificate</b></h3>
  </div>
</div>
<div class="col-xs-2 text-center" >
<img src="<?php echo base_url('uploads/'.$qry->image)?>" width=100px height=100px;>

</div>

   <div class=col-xs-12 style="margin-top: 20px;">
    <img id="watermark"  src="<?php echo base_url()?>assets/img/d.png" width="100px" height="100px">
<p>Name of Student : <span ><?php echo $qry->name?></span></p>
<p>Date of Birth : <span ><?php echo date('d-M-Y',strtotime($qry->dob))?></span></p>

<p>Certified that  <span ><?php echo $qry->name?></span>&nbsp;&nbsp;&nbsp;&nbsp;S/S/O <span><?php echo $qry->fathername?></span></p>
<p>Attended this school upto &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; has paid all dues to the school upto</p>
<p>and allowed on the above date to withdraw his/her name.He/She was reading in the class <span><?php echo $qry->class.'  '.$qry->section?></span> .He/She appeared in the annual examination <?php echo date('Y');?> and passed.</p>
<p>The following particulars are certified to be correct according to the record of this school and certificate produced from previous school attended.</p>
<table border="1" width="100%">
  <tr class="text-center" style="font-size: 15px;">
    <td>Date of Admission</td>
    <td>Class</td>
        <td>Date of Withdrawl</td>
            <td>Attendance</td>
                <td>Leave taken </td>
  </tr>
  <tr class="text-center" >
    <td><?php echo  date('d-M-Y',strtotime( $qry->admission_date))?></td>
       <td><?php echo $qry->class?></td>
          <td></td>
             <td><?php echo $qry->present?></td>

                <td>
                  <?php $q=$this->db->select('count(attendance) as a')->from('attendance')->where(['st_id'=>$id,'attendance'=>'leave'])->get()->row();
                  echo $q->a;
?>                </td>

  </tr>
</table>
<p>Date of issue : <?php echo date('d-M-Y');?></p>
   </div>
   <div class="col-xs-6">
    <p>Sign of Admin Officer &nbsp;&nbsp; ____________________</p>
   </div>
    <div class="col-xs-6">
    <p>Sign of Principle &nbsp;&nbsp;____________________</p>
   </div>
   <div class=col-xs-12 style="margin-top: 20px;">
   <p><b><u>For Scholarships holders only:</u></b></p>
   <p>Kind of scholarship: ____________________________ &nbsp;&nbsp;&nbsp;Value: ________________</p>
   <p>Year of award: ____________&nbsp;&nbsp;and the date upto which drawn: ________________</p>
   <p>Authority which awarded:&nbsp;&nbsp;&nbsp;_____________________________________________</p> 
    <p>By whom payable: &nbsp;&nbsp;&nbsp;___________________________________________________</p> 
   </div>
     </div>
  
    </section>
 </div>
</div>
</body>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>