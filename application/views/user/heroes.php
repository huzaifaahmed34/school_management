<?php 
$section_id=$this->uri->segment(3);
        $class_id=$this->uri->segment(4);

        ?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       Students
      </h1>
      <ol class="breadcrumb">
        <li><a href="<?php echo base_url() ?>"><i class="fas fa-arrow-alt-circle-right"></i> Home</a></li>
        <li><a href="#">Setup</a></li>
    
        <li class="active">Heroes</li>
      
       
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
        
           
         <table  class="table  table-striped table-hover ">
              <thead>
                <tr style="background:black;color:white">
              <th>id</th>
                 <th>Name</th>
                 <th>FatherName</th>
                   <th>Reg no</th>   
                   <th>Position</th>     
                      <th>Marks</th>   
                   <th>Remarks</th>  
                      <th>Session</th>   
                   <th>Action</th>               
                
                
                </tr>
                    </thead>
                        
                    <tbody id="showdata">

                    </tbody>
                  

                    </table>
                   
              
        <div class="col-md-12" style="text-align: right; padding-top:50px;">
           <!-- /.form-group -->
                  <div class="form-group">
                 
                    <button href="#" data-toggle=modal data-target='#add' class="btn btn-success insert" title="Add Classes" style="background-color: #0092DF;
    border-color: #0092DF;"><i class="fas fa-plus-square"></i></button>
                  </div>
                  <!-- /.form-group -->
          </div>

                     </div>



                         <form id="form2" >
            <div class="modal fade" id="Modal_Edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-md" role="document">
                <div class="modal-content update-modal" >
                  <div class="modal-header">
                    <h3 class="modal-title" id="exampleModalLabel">Edit 
                    Heroes</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="margin-top: -28px;">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
  <input class=form-control type=hidden name=id value="">
              <input class=form-control type=hidden name=class_id1 value="<?php echo $class_id?>">
              
               <input class=form-control type=hidden name=section_id1 value="<?php echo $section_id?>">
<div class="form-group row">


            
               <div class=col-lg-12 >
                 <label>Select Student</label>
              <select class=form-control id=student1 name=std_id1>
              </select></div>
               <div class=col-lg-12 >
                <label>Enter Position</label>
                 <input class=form-control placeholder="Enter Position" type=text name=position1>
               </div>
             <div class=col-lg-12>
              <label>Enter Marks</label>
                 <input class=form-control placeholder="Enter Marks" type=text name=marks1>
             </div>
              <div class=col-lg-12 >
                <label>Enter Remarks</label>
                  <input class=form-control placeholder="Enter Remarks" type=text name=remarks1>
              </div>
                <div class=col-lg-12 >
                <label>Enter Session</label>
                 <select class=form-control id=session1 name=session1>
              </select>
              </div>






  </div>
                      </div>
                        
                     
               
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" id="btnUpdate" class="btn btn-primary">Update</button>
                  </div>
                </div>
              </div>
            </div>
            </form>

<div id="Modal" class="modal fade" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">        
        <h4 class="modal-title">Add In Heroes</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"  style="font-size: 30px;
    margin-top:-29px;"><span aria-hidden="true">&times;</span></button>
      </div>
       <form class="form1" method=post>
      <div class="modal-body">
         <input class=form-control type=hidden name=class_id value="<?php echo $class_id?>">
         
               <input class=form-control type=hidden name=section_id value="<?php echo $section_id?>">
           <div class="form-group row">
            
          
             
               <div class=col-lg-12 >
                      <label>Select Student</label>
              <select class=form-control id=student name=std_id>
              </select></div>
               <div class=col-lg-12 >
                <label>Enter Position</label>
                 <input class=form-control placeholder="Enter Position" type=text name=position>
               </div>
             <div class=col-lg-12 >
              <label>Enter Marks</label>
                 <input class=form-control placeholder="Enter Marks" type=text name=marks>
             </div>
              <div class=col-lg-12 >
                <label>Enter Remarks</label>
                  <input class=form-control placeholder="Enter Remarks" type=text name=remarks>
              </div>
                <div class=col-lg-12 >
                <label>Enter Session</label>
                 <select class=form-control id=session name=session>
              </select>
              </div>
                
           </div>

      </div>

      <div class="modal-footer">
        <button type="button" id="btnadd" class="btn btn-primary g-bg-cyan">Add</button>
        <button type="button" class="btn btn-raised" data-dismiss="modal">Cancel</button>
      </div>
       </form>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div>
<!-- Trigger the modal with a button -->





 
                <!-- /.col -->



</div></div>
          </div>
         </section></div>





<div id="deleteModal" class="modal fade" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">        
        <h4 class="modal-title">Confirm Delete</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body">
            Do you want to delete this record?
      </div>
      <div class="modal-footer">
        <button type="button" id="btnDelete" class="btn btn-danger btn-raised g-bg-cyan">Delete</button>
        <button type="button" class="btn btn-raised" data-dismiss="modal">Cancel</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><


        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
  $(function(){
  showdata();
    function showdata(){
    var s_id=<?php echo $section_id ?>;
   
    var c_id=<?php echo $class_id ?>;

           $.ajax({
            type:'ajax',
        method:'post',
        url:'<?php echo site_url('Setup/heroesshow')?>',
        datatype:'json',
        data:{'s_id':s_id,'c_id':c_id},
        success:function(res){
          var html='';
      var sno=0;  
          var res=JSON.parse(res);

          $.each(res,function(i,item){
sno++;
          html+='<tr><td>'
          +sno+'</td><td>'
          +item.name+'</td><td>'
          +item.fathername+'</td><td>'
          +item.reg_no+'</td><td>'
          +item.position+'</td><td>'
          +item.marks+'</td><td>'
          +item.remarks+'</td><td>'
          +item.session+'</td><td><a href=javascript:; data='+item.id+' class=editdata>Edit</a> &nbsp;<a href=javascript:; data='+item.id+' class=deletedata>Delete</a></td></td></tr>';


    });   
    $('#showdata').html(html); 
    },  
    error:function(){
      alert('no data found');
    }
      

      });    
    
};
showstudent();
function showstudent(){
 var s_id=<?php echo $section_id ?>;
   
    var c_id=<?php echo $class_id ?>;

    $.ajax({
      type:'ajax',
      method:'post',
      data:{'s':s_id,'c':c_id},
      datatype:'json',
      url:'<?php echo site_url('Setup/heroesstdshow')?>',
      success:function(res){
        res=JSON.parse(res);
              html='';
      $.each(res,function(i,item){
    
             html+='<option value='+item.id+'>'+item.name+'</option>';
        $('#student').html(html);
         $('#student1').html(html);
         
        });  

      },

    });

};
showsession();
function showsession(){

    $.ajax({
      type:'ajax',
      method:'post',
    
      datatype:'json',
      url:'<?php echo site_url('Setup/heroessessionshow')?>',
      success:function(res){
        res=JSON.parse(res);
              html='';
          
      $.each(res,function(i,item){
    
             html+='<option value='+item.id+'>'+item.session+'</option>';
        $('#session').html(html);
        $('#session1').html(html);
         
        });  

      },

    });

};
$('.insert').unbind().click(function(){
    $('#Modal').modal('show');
    var std_id=$(this).attr('data');
    $('input[name=std_id]').val(std_id);



 $('#btnadd').unbind().click(function(){

      var data=$('.form1').serialize();
 var id=$('input[name=std_id]').val();
      var name=$('input[name=position]');
      var code=$('input[name=marks]');
      var remarks=$('input[name=remarks]');
       var session=$('input[name=session]');
      
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
            url:'<?php echo site_url('Setup/heroesinsert')?>',
            datatype:'json',
            success:function(res){
             
              
            
                showdata();


                $('#Modal').modal('hide');
                $('.form1')[0].reset();
                $('.alert-success').html('Data Inserted Succesfully').fadeIn().delay(4000).fadeOut('slow');

             

              
        
            },
            error:function(){
              alert('no');
            },
          });
      };


    });});





 $('#showdata').on('click','.editdata',function(){
$('#Modal_Edit').modal('show');
var id=$(this).attr('data');
$.ajax({
    type:'post',
    data:{'id':id},
    datatype:'json',
    url:'<?php echo site_url('Setup/heroesedit')?>',
    success:function(res){
     var res=JSON.parse(res);
     

      $.each(res,function(i,item){
 $('input[name=id]').val(res[i].id);

  $('#student1 option[value='+item.std_id+'] ').attr('selected', 'selected');
        $('input[name=position1]').val(res[i].position);
         $('input[name=marks1]').val(res[i].marks);
          $('input[name=remarks1]').val(res[i].remarks);
      });
    },
});
$('#btnUpdate').unbind().click(function(){
        var data=$('#form2').serialize();
        $.ajax({
            method:'post',
            data:data,
            url:'<?php echo site_url('Setup/heroesupdate')?>',
            success:function(res){
              $('#Modal_Edit').modal('hide');
              showdata();
                 $('.alert-success').html('Data Updated Succesfully').fadeIn().delay(4000).fadeOut('slow');

            },
            error:function(){
              alert('data not added');
            }
        });
});
   });


     $('#showdata').on('click','.deletedata',function(){
$('#deleteModal').modal('show');
var id=$(this).attr('data');
$('#btnDelete').unbind().click(function(){


$.ajax({
    type:'post',
    data:{'id':id},
    datatype:'json',
    url:'<?php echo site_url('Setup/heroesdelete')?>',
    success:function(res){
      $('#deleteModal').modal('hide');
      showdata();
        $('.alert-success').html('Data Deleted Succesfully').fadeIn().delay(4000).fadeOut('slow');
     

    },

  });
});
});
  
});
</script>