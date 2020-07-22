<?php 
$section_id=$this->uri->segment(3);
$class_id=$this->uri->segment(4);

        ?>
<body>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
     Fee Collection
      </h1>
      <ol class="breadcrumb">
        <li><a href="<?php echo base_url() ?>"><i class="fas fa-arrow-alt-circle-right"></i> Home</a></li>
        <li><a href="#">Setup</a></li>
    
        <li class="active">Fees Collection</li>
      
       
      </ol>
    </section>

    <!-- Main content -->
    <section class="content " >
      <div class="row">
        <div class="col-xs-12" >
        

          <div class="box box-success" style="height: 100%;">
              <div class="box-header with-border">
                  <h3 class="box-title">Students</h3>
                </div>
                <div class="box-body">
                      <div class="alert alert-success" style="display: none;"></div>  <div class="alert alert-danger" style="display: none;"></div>
         <div class="form-group text-right">
                 
                    <button href="#" data-toggle=modal data-target='#add' class="btn btn-primary report" title="Add Classes">Fees Report(Month)</button>
                        <button href="#" data-toggle=modal data-target='#myModal1' class="btn btn-primary " title="Add Classes">Student Fee Report</button>
                  </div>
               <form id=form1> 
         <table  id="example1" class="table  table-striped table-hover js-basic-example dataTable">
              <thead>
                <tr style="background:black;color:white">
              <th>id</th>
                 <th>Name</th>
                 <th>FatherName</th>
                   <th>Reg no</th>   
                   <th>Pay Fees</th>                  
                     
                
                </tr>
                    </thead>
                        
                    <tbody id="showdata">

                    </tbody>
                  

                    </table>
                   
                    </form>
                       <div class="col-md-12" style="text-align: right; padding-top:30px;">
           <!-- /.form-group -->
                 
                  <!-- /.form-group -->
          
          </div>
                     </div>
         
<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" style=margin-top:-13px!important;>&times;</button>

        <h3 class="modal-title">View Fee Report</h3>
      </div>
      <div class="modal-body" >
          <div >  

            <form id=form>
          <div style="float:left; width: 87%;" class="divi1">
          
      <input type=text name=date placeholder="Write In 09-17 format" class=form-control id=date pattern="[0-9]{2}[-]{1}[0-9]{2}"></div>
    
      <div style="float:left;width: 13%;padding-left: 3px;" class="divi2">
      <input type=submit  class="btn btn-primary check" style="border: none;" value="Check">
      </div>
    </form>

     
       
 
  </div>

<button style=margin-top:10px;margin-bottom:10px; class="btn btn-success" id=print>Print Fee Report</button >
<div id=bs>
       <table class=table id=table>
         <thead style="background: black;color: white;"><tr><td>Sno</td><td>Student</td><td>Reg no</td><Td>Total fees</Td><td>Paid fees</td><td>Remaining fee</td><td>Fee consession</td></tr>  </thead><tbody class=reportshow></tbody>
       </table>
  </div>
    
      
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>

</div>



<div id="myModal1" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" style=margin-top:-13px!important;>&times;</button>

        <h3 class="modal-title">View Student Fee Paid History</h3>
      </div>
      <div class="modal-body" >
         
<button id=studentprint style=margin-top:10px;margin-bottom:10px; class="btn btn-success" >Print Fee Report </button >

  <select id=studentname class="form-control " style="margin-bottom: 10px;">
    <option value="">Select Student</option>
    <?php 
$qry=$this->db->query("select * from student_registration where class_id='$class_id' and section_id='$section_id' and is_deleted=0 and status='In-Progress'")->result();
foreach ($qry as $q) {
  ?>

<option value=<?php echo $q->id?>><?php echo $q->name?></option>
  <?php
}
    ?>
      
    </select> 
    <div id=bs1>
       <table class=table >
         <thead style="background: black;color: white;"><tr>
          <td>Student</td>
          <td>Reg no</td>
          <Td>Total fees</Td>
          <td>Paid fees</td>
          <td>Remaining fee</td>
          <td>Fee consession</td>
          <td>Month</td></tr>  </thead>
          <tbody class=reportshow1></tbody>
       </table>
  </div>
    
      
      <div class="modal-footer">

        <button type="button" id="btnfees1" class="btn btn-primary btn-raised g-bg-cyan">Pay Fees</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>

</div>




<div id="Modal2" class="modal fade" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">        
        <h4 class="modal-title">Pay Remaining Fees</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"  style="font-size: 30px;
    margin-top:-29px;"><span aria-hidden="true">&times;</span></button>
      </div>
       <form class="form2" method=post>
      <div class="modal-body">
           <div class=content>
            
          
              <input class=form-control type=hidden name=class_id1 value="<?php echo $class_id?>">
               <input class=form-control type=hidden name=section_id1 value="<?php echo $section_id?>">
               <span class=warning1 style="
    color: red;
    margin-left: 14px;}"></span>
    <div class=col-lg-12 >
              <input class=form-control type="hidden" name=std_id1 >
             </div>
               <div class=col-lg-12 >
                <label>Total Fees </label>
                 <input class=form-control  type=text name=position1 id=total1 value='1000' readonly>
               </div>
                <div class=col-lg-12 >
                <label>Select Month </label>
                 <input class=form-control  type=month name=month >
               </div>
             <div class=col-lg-12 style="margin-top: 10px">
              <label>Enter Pay Amount</label>
                 <input class=form-control placeholder="Enter Pay Amount" type=text name=marks1 id=marks1>
             </div>
              <div class=col-lg-12 style="margin-top: 10px">
                <label>Enter Remaining Amount</label>
                  <input class="form-control " placeholder="Enter Remaining Amount" type=text name="amount1" id=amount1  >
              </div>
              <div class=col-lg-12 style="margin-top: 10px;margin-bottom: 20px; ">
                <label>Enter Fee Concession</label>
                  <input class=form-control placeholder="Enter Fee Concession" type=text name="remarks1"  value="0">
              </div>
                
           </div>

      </div>

      <div class="modal-footer" style="margin-top: 80px;">
        <button type="button" id="btnadd1" class="btn btn-primary btn-raised g-bg-cyan">Pay Fees</button>
        <button type="button" class="btn btn-raised" data-dismiss="modal">Cancel</button>
      </div>
       </form>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div>





<div id="Modal1" class="modal fade" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">        
        <h4 class="modal-title">Pay Fees</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"  style="font-size: 30px;
    margin-top:-29px;"><span aria-hidden="true">&times;</span></button>
      </div>
       <form class="form1" method=post>
      <div class="modal-body">
           <div class=content>
            
          
              <input class=form-control type=hidden name=class_id value="<?php echo $class_id?>">
               <input class=form-control type=hidden name=section_id value="<?php echo $section_id?>">
               <span class=warning style="
    color: red;
    margin-left: 14px;}"></span>
              <input class=form-control type="hidden" name=std_id>
             
               <div class=col-lg-12 >
                <label>Total Fees </label>
                 <input class=form-control  type=text name=position id=total value='1000' readonly>
               </div>
             <div class=col-lg-12 style="margin-top: 10px">
              <label>Enter Pay Amount</label>
                 <input class=form-control placeholder="Enter Pay Amount" type=text name=marks id=marks>
             </div>
              <div class=col-lg-12 style="margin-top: 10px">
                <label>Enter Remaining Amount</label>
                  <input class="form-control " placeholder="Enter Remaining Amount" type=text name="amount" id=amount  >
              </div>
              <div class=col-lg-12 style="margin-top: 10px;margin-bottom: 20px; ">
                <label>Enter Fee Concession</label>
                  <input class=form-control placeholder="Enter Fee Concession" type=text name="remarks"  value="0">
              </div>
                
           </div>

      </div>

      <div class="modal-footer" style="margin-top: 80px;">
        <button type="button" id="btnadd" class="btn btn-primary btn-raised g-bg-cyan">Pay Fees</button>
        <button type="button" class="btn btn-raised" data-dismiss="modal">Cancel</button>
      </div>
       </form>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div>
</div>
<!-- Trigger the modal with a button -->



</div></div></div>
         </section></div>

</body>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
  $(function(){

function print() {
  printJS({
    printable: 'bs1',
    type: 'html',
    targetStyles: ['*']
 })
}


function print1() {
  printJS({
    printable: 'bs',
    type: 'html',
    targetStyles: ['*']
 })
}
document.getElementById('studentprint').addEventListener ("click", print);
document.getElementById('print').addEventListener ("click", print1);
<?php
include('print.php');
?>

  showdata();
    function showdata(){
    var s_id=<?php echo $section_id ?>;
   
    var c_id=<?php echo $class_id ?>;
           $.ajax({
            type:'ajax',
        method:'post',
        url:'<?php echo site_url('Attendance/show')?>',
        datatype:'json',
        data:{'s_id':s_id,'c_id':c_id},
        async:false,
        success:function(res){
          var html='';
          
          var res=JSON.parse(res);

var s=0;
          $.each(res,function(i,item){
s++;
          html+='<tr><td>'
          +s+'</td><td>'
          +item.name+'</td><td>'
          +item.fathername+'</td><td>'
          +item.reg_no+'</td><td><a href=javascript:; class="btn btn-primary add " data='+item.id+'>Pay fees</a></td></tr>';


    });   
    $('#showdata').html(html); 
    },  
    error:function(){
      alert('no data found');
    }
      

      });    
    
};

$('#btnfees1').unbind().click(function(){
  $('#Modal2').modal('show');
  if($('#studentname').val()==''){
$('.warning1').html('Select Student First From Dropdown');
$('btnadd1').attr('disabled','true');
  }
  else{
    $('.warning1').html('');
    $('btnadd1').removeAttr('disabled','true');


  }

  $('#btnadd1').unbind().click(function(){

      var data=$('.form2').serialize();
 var id=$('input[name=std_id1]').val();
      var name=$('input[name=position1]');
      var code=$('input[name=marks1]');
      var remarks=$('input[name=remarks1]');
        var month=$('input[name=month]');
      
      var r='';
      if(name.val()==''){
        name.parent().addClass('has-error');
      }
      else{
        name.parent().removeClass('has-error');
             r+='1';

      }
       if(month.val()==''){
        month.parent().addClass('has-error');
      }
      else{
        month.parent().removeClass('has-error');
             r+='1';

      }
       if(code.val()==''){
        code.parent().addClass('has-error');
      }
      else{
        code.parent().removeClass('has-error');
             r+='1';

      }
         if(remarks.val()==''){
        remarks.parent().addClass('has-error');
      }
      else{
        remarks.parent().removeClass('has-error');
             r+='1';

      }
      if(r=='1111'){
     
          $.ajax({
          
            method:'post',
            data:data,
            url:'<?php echo site_url('Setup/feeinsert1')?>',
            dataType:'json',
            success:function(res){
            
           if(res==true){
                $('#Modal2').modal('hide');
                $('.form2')[0].reset();
                $('.alert-success').html('Data Inserted Succesfully').fadeIn().delay(4000).fadeOut('slow');
                showdata1();
}
else{
  $('.warning1').html('Fees is already paid of this month');
}
             

              
        
            },
            error:function(){
              alert('no');
            },
          });
      };



    });



});
$('#showdata').on('click','.add',function(){

    $('#Modal1').modal('show');
    var std_id=$(this).attr('data');

    $.ajax({
        method:'post',
        data:{'s':std_id},
       url:'<?php echo site_url('Setup/feecheck')?>',
        datatype:'json',
        success:function(res){
          res=JSON.parse(res);
          if(res.length!=0){
            $('.warning').html('Fees has been paid ').css({"font-size": "20px"});
            $('#btnadd').attr('disabled','disabled');
          }
          else{
  $('.warning').html('');
   $('#btnadd').removeAttr('disabled','disabled');
          };
        },

    });
    $('input[name=std_id]').val(std_id);






 $('#btnadd').unbind().click(function(){

      var data=$('.form1').serialize();
 var id=$('input[name=std_id]').val();
      var name=$('input[name=position]');
      var code=$('input[name=marks]');
      var remarks=$('input[name=remarks]');
      
      var r='';
      if(name.val()==''){
        name.parent().addClass('has-error');
      }
      else{
        name.parent().removeClass('has-error');
             r+='1';

      }
       if(code.val()==''){
        code.parent().addClass('has-error');
      }
      else{
        code.parent().removeClass('has-error');
             r+='1';

      }
         if(remarks.val()==''){
        remarks.parent().addClass('has-error');
      }
      else{
        remarks.parent().removeClass('has-error');
             r+='1';

      }
      if(r=='111'){
     
          $.ajax({
          
            method:'post',
            data:data,
            url:'<?php echo site_url('Setup/feeinsert')?>',
            datatype:'json',
            success:function(res){
           
                $('#Modal1').modal('hide');
                $('.form1')[0].reset();
                $('.alert-success').html('Data Inserted Succesfully').fadeIn().delay(4000).fadeOut('slow');

             

              
        
            },
            error:function(){
              alert('no');
            },
          });
      };



    });







//Remaining fees in modal insert in db 
 


 $('#marks').keyup(function(){
  var total=$('#total').val();
  var marks=$('#marks').val();

   var concession=$('input[name=remarks]').val();
var rem=total-marks-parseInt(concession);
$('#amount').val(rem);


});
 $('input[name=remarks]').keyup(function(){
  var total=$('#total').val();
  var marks=$('#marks').val();
    var remain=$('input[name=remarks]').val();
var rem=total-marks-remain;
   

$('#amount').val(rem);


});


});

$('#marks1').keyup(function(){
  var total=$('#total1').val();
  var marks=$('#marks1').val();

   var concession=$('input[name=remarks1]').val();
var rem=total-marks-parseInt(concession);
$('#amount1').val(rem);


});
 $('input[name=remarks1]').keyup(function(){
  var total=$('#total1').val();
  var marks=$('#marks1').val();
    var remain=$('input[name=remarks1]').val();
var rem=total-marks-remain;
   

$('#amount1').val(rem);


});




$('.report').click(function(){
    $('#myModal').modal('show');

  });
$('#form').on('submit',function(e){
  e.preventDefault();
  var date1=$('#date').val();

 
    var section_id=<?php echo $section_id ?>;
    var class_id=<?php echo $class_id ?>;

    $.ajax({
        type:'post',
        url:'<?php echo site_url('Setup/feereport')?>',
        datatype:'json',
        data:{'s':section_id,'c':class_id,'date':date1},
        success:function(res){
          var html='';
            res=JSON.parse(res);
     var s=0;
            $.each(res,function(i,item){
          s++;
                          html+='<tr><td>'+s+'</td><td>'+item.name+'</td><td>'+item.reg_no+'</td><td>'+item.total_fee+'</td><td>'+item.pay_amount+'</td><td>'+item.rem_amount+'</td><td>'+item.fee_concession+'</td></tr>';
              $('.reportshow').html(html);
            });
        },

    });

});
$('#studentname').on('change',function(){
 showdata1();

});



function showdata1(){

  var std_id=$('#studentname').val();
 $('input[name=std_id1]').val(std_id);

 
    var section_id=<?php echo $section_id ?>;
    var class_id=<?php echo $class_id ?>;

    $.ajax({
        type:'post',
        url:'<?php echo site_url('Setup/Studentfeereport')?>',
        datatype:'json',
        data:{'s':section_id,'c':class_id,'std_id':std_id},
        success:function(res){
          var html='';
            res=JSON.parse(res);
     if(res.length>0){
            $.each(res,function(i,item){

                          html+='<tr><td>'+item.name+'</td><td>'+item.reg_no+'</td><td>'+item.total_fee+'</td><td>'+item.pay_amount+'</td><td>'+item.rem_amount+'</td><td>'+item.fee_concession+'</td><td>'+item.date +'</td></tr>';
              $('.reportshow1').html(html);
            });
          }
          else{
             $('.reportshow1').html('');
          }
        },

    });
};

});

</script>



