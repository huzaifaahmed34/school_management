<html>
<body><div class="content-wrapper">

    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
     Staff Payroll
      </h1>
      <ol class="breadcrumb">
        <li><a href="<?php echo base_url() ?>"><i class="fas fa-arrow-alt-circle-right"></i> Home</a></li>
        <li><a href="#">Payroll</a></li>
    
        <li class="active">Show Payroll</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
        

          <div class="box box-success">
              <div class="box-header with-border">
                  <h3 class="box-title">Show Staff Payroll</h3>
                </div>
          
            <!-- /.box-header -->
            <div class="box-body">
                   
          <div class="alert alert-success" style="display: none;"></div>
            <div class="form-group text-right">
                 

     <button href="#"  class="btn btn-success showinvoice"  title="View NInvoice" style="background-color: #0092DF;
    border-color: #0092DF;">Check </button>
<button href="#"  class="btn btn-success btnadd"  title="Add Staff pay" style="background-color: #0092DF;
    border-color: #0092DF;">Generate Invoice</button>

                  </div>
             <div class=table-responsive >
         <table id="example1" class="table table-striped table-hover js-basic-example dataTable">
              <thead>
                <tr style="background:black;color:white">
             <th>Id</th>
                 <th>Name</th>
                
                  <th>Designation</th>
                  
                 <th>Pay</th>
                 <th>Image</th>
                  
                 <th>Action</th>
           
                 
                
                </tr>
                    </thead>
                           
                    <tbody id="showdata">
                    </tbody>
                    </table>
                     </div>
                      <div class="row">
            <div class="col-md-3">
          
          </div>
            
                
                <!-- /.col -->
                <div class="col-md-6" >
                 
                </div>
          <div class="col-md-3" style="text-align: right; padding-top:30px;">
           <!-- /.form-group -->
             
          
          </div>
                <!-- /.col -->
        </div>

                
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
 </div>

<div class="modal" id="invoices">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">There invoices are not generated this month </h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
            <table id="example1" class="table table-striped table-hover js-basic-example dataTable">
              <thead>
                <tr style="background:black;color:white">
             <th>Id</th>
                 <th>Name</th>
                
                  <th>Designation</th>
                  
                 <th>Pay</th>
                 <th>Image</th>  <th>Invoices</th>
                  
           
                 
                
                </tr>
                    </thead>
                           
                    <tbody id="showdat">
                    </tbody>
                    </table>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>

 <div class="modal fade" id="Modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel4">
              <div class="modal-dialog modal-md" role="document">
                <div class="modal-content updte-modal" >
                  <div class="modal-header">
                    <h3 class="modal-title" id="exampleModalLabel4">Generate Invoice</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="margin-top: -28px;">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                 
                  <div class="modal-body"
                  >
                  <span id=span style="font-size: 16px;color: red"></span>
                   <form id=Myform>
                    <label>Choose Teacher</label>
                      <select id=teacherselect name=teacher class="form-control"></select>

                      <label>Enter Invoice no</label>
                      <input name=invoice class="form-control" readonly="true">

                      <label>Enter Bonus</label>
                      <input name=bonus class="form-control" value="0">
                      
                        <label>Enter Absent Charges</label>
                      <input name=plenty class="form-control" value="0">


                       <label>Last Month Absent </label>
                      <input name=absent class="form-control absent" readonly>
                      </form>
                    </div>
                     
               

                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" id="add" class="btn btn-primary">Generate Invoice</button>
                  </div>  
                   </div>
                </div>
              </div>

   


    
            <div class="modal fade" id="Modal_Edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content update-modal" >
                  <div class="modal-header">
                    <h3 class="modal-title" id="exampleModalLabel">Invoice</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="margin-top: -28px;">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body" id=content >
                    <div class=content >
                    <div id=con>


                 
                      
                        <div class=col-lg-8  style="font-size: 16px;">
                          <p id=name style="color:#0092DF;text-transform:uppercase;"></p>
                          <p id=address></p>
                        </div>
                        <div class="col-lg-4 text-right">
                          <img width="90px" height="90px" id=img src=''>
                        
                      </div>
                        <hr>
                        <hr>
                       
                          <div class="col-lg-12 text-right" >
                            <h3>Invoice</h3>
                            <p style="margin-bottom: -0px"><b >Invoice no :</b> <span id=invoice_no></span></p>
                            <p><b>Date : </b><span id=date></span></p>

                          </div>
                     
                       <div class=col-lg-12 style="margin-top: 20px;">
                          <table class="table table-striped" border="1" >

                            <thead  style="font-size: 16px;" >
                              <tr style="background:black;color:white;border:1px solid black!important; "><th>Name</th>
                                <th>Bonus</th>
                                <th>Absent Charges</th>
                                <th>Absent</th>
                                <th>Pay</th></tr>
                            </thead>

                            <tbody id=tbody  style="font-size: 16px;border-top: 1px solid black;border-bottom: 1px solid black"></tbody>
                            <tfoot id=tfoot style="font-size: 16px;" >
                          </tfoot>
                          </table>
                        </div>

                      </div>
                    
                   </div>
                     </div>
               

                  <div class="modal-footer">
                    <button type="button" id=cl class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" id="print"   class="btn btn-primary">Print</button>
                  </div>   </div>
                </div>
              </div>
      
</body></html>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
      
     
        <script>

      $(function(){
           
function print() {
  printJS({
    printable: 'con',
    type: 'html',
    targetStyles: ['*']
 })
}

document.getElementById('print').addEventListener ("click", print);
<?php
include('print.php');
?>
showdata();
random_invoice();
function random_invoice(){
   $.ajax({
  
        method:'post',
        url:'<?php echo site_url('Payroll/random_invoice')?>',
        dataType:'json',
     
        success:function(res){
     
          if(res.id==null){
              $('input[name=invoice]').val(1);

          }else{


       $('input[name=invoice]').val(parseInt(res.id)+parseInt(1));
     }
        },

error:function(){
alert('no');

},
});
}

$('#add').click(function(){
  var data=$('#Myform').serialize();

 $.ajax({
  
        method:'post',
        url:'<?php echo site_url('Payroll/payslips_insert')?>',
        datatype:'json',
        data:data,
        async:false,
        success:function(res){
       random_invoice();
                $('#Myform')[0].reset();
                   $('#Modal').modal('hide');
                $('.alert-success').html('Data Inserted Succesfully').fadeIn().delay(4000).fadeOut('slow');
        },
error:function(){
alert('no');

},
});

});

   function showdata(){
    $.ajax({
        type:'ajax',
        url:'<?php echo site_url('Payroll/Staff_Classshow')?>',
             async:false,
        dataType:'json',
   
        success:function(res){
          var html='';
          var sno=0;
          $.each(res,function(i,item){
sno++;

          html+='<tr><td>'
          +sno+'</td><td>'
          +item.name+'</td><td>'
          +item.designation+'</td><td>'
          +item.pay+'</td><td><img src=<?php echo base_url()?>uploads/'
          +item.image+' width=50px></td><td><a href=javascript:; data='+item.id+' class=editdata>View Pay slip</a></tr>';
        });
          $('#showdata').html(html);

        },
        error:function(){
          alert('data not found');
        }

    });
   };

  
$('.showinvoice').click(function(){
      $('#invoices').modal('show');
  
    $.ajax({
        method:'get',
        url:'<?php echo site_url('Payroll/Not_generated')?>',
        datatype:'json',
        success:function(res){
          var html='';
      var sno=0;    
          var res=JSON.parse(res);
          $.each(res,function(i,item){
sno++;

          html+='<tr><td>'
          +sno+'</td><td>'
          +item.name+'</td><td>'
          +item.designation+'</td><td>'
          +item.pay+'</td><td><img src=<?php echo base_url()?>uploads/'
          +item.image+' width=50px></td><td>Not Generated</td></tr>';
        });
          $('#showdat').html(html);
        },
        error:function(){
          alert('data not found');
        }

    });
   });


$('#showdata').on('click','.editdata',function(){
$('#Modal_Edit').modal('show');
var id=$(this).attr('data');
$.ajax({
    type:'post',
    data:{'id':id},
    datatype:'json',
    url:'<?php echo site_url('Payroll/payslip_show')?>',
    success:function(res){
     var res=JSON.parse(res);
    
html='';
html1='';
 if(res.length!=0){
      for(i=0;i<res.length;i++){

     
        var m=parseInt(res[i].pay);
        var a=parseInt(res[i].plenty);
           var absent=parseInt(res[i].absent_plenty*res[i].plenty);
        var c=parseInt(res[i].bonus);
        var total=parseInt(m+c-absent);
              var b='<?php echo base_url()?>uploads/'+res[i].image;
        $('#img').attr('src',b);
        $('#name').html(res[i].name);
         $('#address').html(res[i].address);
          $('#invoice_no').html(res[i].invoice_no);
          $('#date').html(res[i].date);
          html+='<tr>'+
          '<td style="border-bottom:1px solid black;border-top:1px solid black;">'+res[i].name+'</td>'+
          '<td style="border-bottom:1px solid;border-top:1px solid">'+res[i].bonus+'</td>'+
          '<td style="border-bottom:1px solid black;border-top:1px solid;">'+res[i].plenty+'</td>'+
          '<td style="border-bottom:1px solid black;border-top:1px solid;">'+res[i].absent_plenty+'</td>'+
          '<td style="border-bottom:1px solid black;border-top:1px solid;">'+res[i].pay+'</td>'+
          '</tr>';

          html1+='<tr>'+
          '<td colspan="4" class="text-right"> <b> Bonus : Add</b></td>'+
          '<td>+'+res[i].bonus+'</td>'+
          '</tr> '+
       
          '<td  colspan="4" class="text-right"><b>Absent Plenty : Less</b></td>'+
          '<td>-'+absent+'</td>'+
          '</tr>'+
          
          '<tr>'+
          '<td style="border-top:1px solid;" colspan="4" class="text-right"><b>Total Pay</b></td>'+
          '<td style="border-top:1px solid;" ><b>'+total+'</b></td>'+
          '</tr>';
      };
     
      $('#tbody').html(html);
       $('#tfoot').html(html1);
     }
     else{
      $('#tbody').html('');
       $('#tfoot').html('');
              $('#img').attr('src','');
        $('#name').html('Invoice Not Generated Yet');
         $('#address').html('');
          $('#invoice_no').html('');
          $('#date').html('');

     }
    },
});
  });

   $('.btnadd').unbind().click(function(){
      $('#Modal').modal('show');
   });

showteacher();
   function showteacher(){
      $.ajax({
        method:'get',
        url:'<?php echo site_url('Payroll/Staff_Classshow')?>',
        datatype:'json',
        success:function(res){
          var html='';
          var res=JSON.parse(res);
        html+='<option>------Select Teacher-----</option>';
         $.each(res,function(i,item){


          html+='<option value='+item.id+'>'+item.name+'</option>';
        });
          $('#teacherselect').html(html);
        },
        error:function(){
          alert('data not found');
        }

    });
   };
   $('#teacherselect').change(function(){
        showattendance();


   });

// Chek  Attandance of Staff For Pay slips
  function showattendance(){
        var name=$('#teacherselect').val();

      $.ajax({
      
       
        method:'post',
        url:'<?php echo site_url('Payroll/payslip_showattendance')?>',
        data:{'id':name},
            dataType:'json',
        success:function(res){
  
            if(res.c==null){
         $('input[name=absent]').val(0);
    }
    else{
      $('input[name=absent]').val(res.c);
    }


},
        error:function(){
          alert('data not found');
        }

    });
   };
 
// Chek Pay Slips
  $('#teacherselect').change(function(){
        var name=$('#teacherselect').val();
    
      $.ajax({
      
       
        method:'post',
        url:'<?php echo site_url('Payroll/payslip_check')?>',
      data:{'id':name},
            datatype:'json',
        success:function(res){
   
          var res=JSON.parse(res);
          
            if(res.length==0){
              $('#span').html('');
              $('#add').removeAttr('disabled','disabled');
            }
else{
 $('#span').html('Invoice Already Exist');
$('#add').attr('disabled','disabled');
}
     
      },
        error:function(){
          alert('data not found');

        }

    });
   });

 

       });
  </script>