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
    Generate Result
      </h1>
      <ol class="breadcrumb">
        <li><a href="<?php echo base_url() ?>"><i class="fas fa-arrow-alt-circle-right"></i> Home</a></li>
        <li><a href="#">Result</a></li>
    
        <li class="active">Generate Result</li>
      
       
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
                 
                    <button  data-toggle=modal id="allResultCard" class="btn btn-primary report" title="All Result Card of this class">All Result Card </button>
                        <a  href=<?php echo site_url('Result/Resultlist/').$class_id.'/'.$section_id?> id=ResultList class="btn btn-primary report" title="Result List">Result List</a>
                  </div>
               <form id=form1> 
        <input class=form-control type=hidden name=class_id value="<?php echo $class_id?>">
         <table id=example1 class="table  table-striped table-hover dataTable">
              <thead>
                <tr style="background:black;color:white">
              <th>SR#</th>
                 <th>Name</th>
                 <th>FatherName</th>
                   <th>Reg no</th>   
                   <th>Action</th>                  
                    <th>Action</th>
                     
                
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

        <h3 class="modal-title">View Result Report</h3>
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

<button style=margin-top:10px;margin-bottom:10px; class="btn btn-success" onclick="myfun('bs')">Print Fee Report</button >
<div id=bs>
       <table class=table id=table>
         <thead style="background: black;color: white;"><tr><td>Student</td><td>Reg no</td><Td>Total fees</Td><td>Paid fees</td><td>Remaining fee</td><td>Fee consession</td></tr>  </thead><tbody class=reportshow></tbody>
       </table>
  </div>
    
      
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>

</div>

<div id="Modal1" class="modal fade" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">        
        <h4 class="modal-title">Generate Result</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"  style="font-size: 30px;
    margin-top:-29px;"><span aria-hidden="true">&times;</span></button>
      </div>
       <form class="form1" method=post>
      <div class="modal-body">
           <div class=content>
            
          
              <input class=form-control type=text name=class_id value="<?php echo $class_id?>">
               <input class=form-control type=hidden name=section_id value="<?php echo $section_id?>">
               <span class=warning style="
    color: red;
    margin-left: 14px;}"></span>
              <input class=form-control type="text" name=std_id>
             
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
                  <input class=form-control placeholder="Enter Fee Concession" type=text name="remarks"  >
              </div>
                
           </div>

      </div>

      <div class="modal-footer" style="margin-top: 80px;">
        <button type="button" id="btnadd" class="btn btn-primary btn-raised g-bg-cyan">Generate Result</button>
        <button type="button" class="btn btn-raised" data-dismiss="modal">Cancel</button>
      </div>
       </form>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div></div>
<!-- Trigger the modal with a button -->



</div></div></div>
         </section></div>

</body>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
  $(function(){
  showdata();
    function showdata(){
    var s_id=<?php echo $section_id ?>;
   
    var c_id=<?php echo $class_id ?>;
           $.ajax({
            type:'ajax',
        method:'post',
        url:'<?php echo site_url('Result/getStudent')?>',
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
          +item.reg_no+'</td>'+
          '</td>'+
            '<td><a href=javascript:; class="btn btn-primary addall " data='+item.id+'>Generate Result(Last Month)</a>'+
          '</td>'+
          '<td><a href=javascript:; class="btn btn-primary add " data='+item.id+'>Generate Result(All)</a>'+
          
          '</tr>';


    });   
    $('#showdata').html(html); 
    },  
    error:function(){
      alert('no data found');
    }
      

      });    
    
};
$('#showdata').on('click','.add',function(){

    var std_id=$(this).attr('data');

    var class_id=$('input[name=class_id]').val();
   window.location.href = "<?php echo site_url('Result/getResult')?>/"+ std_id + "/" + class_id;
    
/*window.location.href = "<?php echo site_url('Reports/printDailyCashReport')?>/" + s_date + "/" + e_date; */



});
      
      $('#showdata').on('click','.addall',function(){

    var std_id=$(this).attr('data');

    var class_id=$('input[name=class_id]').val();
   window.location.href = "<?php echo site_url('Result/getResultall')?>/"+ std_id + "/" + class_id;
    


});
      
// Script For All Result Card 
   
$('#allResultCard').on('click',function(){


    var class_id=$('input[name=class_id]').val();
    var section_id=$('input[name=section_id]').val();
   
   window.location.href = "<?php echo site_url('Result/allResultCard')?>/"+ class_id + "/" + section_id;




});   
      
});
</script>



