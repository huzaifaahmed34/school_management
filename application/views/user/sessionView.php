
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       Session
      </h1>
      <ol class="breadcrumb">
        <li><a href="<?php echo base_url() ?>"><i class="fas fa-arrow-alt-circle-right"></i> Home</a></li>
        <li><a href="#">Setup</a></li>
    
        <li class="active">Show Session</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
        

          <div class="box box-success">
              <div class="box-header with-border">
                  <h3 class="box-title">Show Session</h3>
                </div>
          
            <!-- /.box-header -->
            <div class="box-body">
                   
          <div class="alert alert-success" style="display: none;"></div>
             
         <table id="example1" class="table  table-striped table-hover js-basic-example dataTable">
              <thead>
                <tr style="background:black;color:white">
              <th>id</th>
                 <th>Name</th>
                 <th>Code</th>
                  <th>Action</th>
                
                
                </tr>
                    </thead>
                           
                    <tbody id="showdata">
                    </tbody>
                    </table>
                     
                      <div class="row">
            <div class="col-md-3">
          
          </div>
            
                
                <!-- /.col -->
                <div class="col-md-6" >
                 
                </div>
          <div class="col-md-3" style="text-align: right; padding-top:30px;">
           <!-- /.form-group -->
                  <div class="form-group">
                 
                    <button href="#" data-toggle=modal data-target='#add' class="btn btn-success" title="Add Classes" style="background-color: #0092DF;
    border-color: #0092DF;"><i class="fas fa-plus-square"></i></button>
                  </div>
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
 

        <!-- MODAL EDIT -->
        <form id="form2" >
            <div class="modal fade" id="Modal_Edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-md" role="document">
                <div class="modal-content update-modal" >
                  <div class="modal-header">
                    <h3 class="modal-title" id="exampleModalLabel">Edit 
                    Session</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="margin-top: -28px;">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                        <div class="form-group row">
                            <div class="col-md-6">
                            <input type="hidden" name="id" value=  >
                            <label class=" col-form-label">Session Name</label>
                              <input type="text" name="class"  class="form-control" placeholder="Enter session Name" >
                            </div>
                             <div class="col-md-6">
                                <label class=" col-form-label">Code</label>
                              <input type="text" name="code"  class="form-control" placeholder="Enter Code" >
                            </div>
                          </div></div>
                        
                     
               
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" id="btnUpdate" class="btn btn-primary">Update</button>
                  </div>
                </div>
              </div>
            </div>
            </form>
        <!--END MODAL EDIT-->


<!--- Add DAta-->
  <form id="form1" method="post" action="<?php echo site_url('Setup/Sessionadd')?>">
            <div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-md" role="document">
                <div class="modal-content update-modal" >
                  <div class="modal-header">
                    <h3 class="modal-title" id="exampleModalLabel">Add Session</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="margin-top: -28px;">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                        <div class="form-group row">
                            <div class="col-md-6">
                              
                            <label class="col-form-label">Session Name </label>
                              <input type="text" name="class1"  class="form-control" placeholder="Enter 
                              Session Name" >
                            </div>
                             <div class="col-md-6">
                              <label class=" col-form-label">Code</label>
                              <input type="text" name="code1"  class="form-control" placeholder="Enter Code" >
                          
                        </div>
                     </div>
                     <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button"  id="adddata" class="btn btn-primary">Add</button>
                  </div>
                  </div>
                  
                </div>
              </div>
            </div>
            </form>
      
<!-- delete -->
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
</div><!-- /.modal -->
</div>

  <div class="control-sidebar-bg"></div>

<!-- ./wrapper -->

   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    
    <script>
    $(function(){
    $('#adddata').unbind().click(function(){
      var data=$('#form1').serialize();
      var name=$('input[name=class1]');
        var code=$('input[name=code1]');
      var url=$('#form1').attr('action');
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
      if(r=='11'){
       
          $.ajax({
          
            method:'post',
            data:data,
            url:url,
            datatype:'json',
            success:function(res){
                showdata();
                $('#add').modal('hide');
                $('#form1')[0].reset();
                $('.alert-success').html('Data Inserted Succesfully').fadeIn().delay(4000).fadeOut('slow');
            },
            error:function(){
              alert('no');
            },
          });
      };
    });
showdata();
   function showdata(){
    $.ajax({
        method:'get',
        url:'<?php echo site_url('Setup/Sessionshow')?>',
        datatype:'json',
        async:false,
        success:function(res){
          var html='';
          var sno=0;
          var res=JSON.parse(res);
          $.each(res,function(i,item){

sno++;
          html+='<tr><td>'
          +sno+'</td><td>'
          +item.session+'</td><td>'
          +item.code+'</td><td><a href=javascript:; data='+item.id+' class=editdata>Edit</a> &nbsp;<a href=javascript:; data='+item.id+' class=deletedata>Delete</a></td></tr>';
        });
          $('#showdata').html(html);
        },
        error:function(){
          alert('data not found');
        }

    });
   };
   $('#showdata').on('click','.editdata',function(){
$('#Modal_Edit').modal('show');
var id=$(this).attr('data');
$.ajax({
    type:'post',
    data:{'id':id},
    datatype:'json',
    url:'<?php echo site_url('Setup/Sessionedit')?>',
    success:function(res){
     var res=JSON.parse(res);
     

      for(i=0;i<res.length;i++){
 $('input[name=id]').val(res[i].id);
        $('input[name=class]').val(res[i].session);
         $('input[name=code]').val(res[i].code);
      };
    },
});
$('#btnUpdate').unbind().click(function(){
        var data=$('#form2').serialize();
        $.ajax({
            method:'post',
            data:data,
            url:'<?php echo site_url('Setup/Sessionupdate')?>',
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
    url:'<?php echo site_url('Setup/Sessiondelete')?>',
    success:function(res){
      $('#deleteModal').modal('hide');
      showdata();
        $('.alert-success').html('Data Deleted Succesfully').fadeIn().delay(4000).fadeOut('slow');
     

    },

  });
});
});
  
    //function
    
    }); 

    </script>

</body>
</html>

