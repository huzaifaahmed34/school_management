
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
    Syllabus
      </h1>
      <ol class="breadcrumb">
        <li><a href="<?php echo base_url() ?>"><i class="fas fa-arrow-alt-circle-right"></i> Home</a></li>
        <li><a href="#">Syllabus</a></li>
    
        <li class="active">Show Syllabus</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
        

          <div class="box box-success">
              <div class="box-header with-border">
                  <h3 class="box-title">Show Syllabus</h3>
                </div>
          
            <!-- /.box-header -->
            <div class="box-body">
                   
          <div class="alert alert-success" style="display: none;"></div>
             <div class=table-responsive >
         <table id="example1" class="table table-striped table-hover js-basic-example dataTable">
              <thead>
                <tr style="background:black;color:white">
             <th>Id</th>
              <th>Syllabus</th>
                 <th>Class</th>
                 
       
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
                  <div class="form-group">
                 
                    <button href="#" data-toggle=modal data-target='#add' class="btn btn-success btnadd"  title="Add Students" style="background-color: #0092DF;
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
        <form id="form2" enctype="multipart/form-data" method="post" action="<?php echo site_url('Setup/syllabusupdate')?>" >
            <div class="modal fade" id="Modal_Edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-md" role="document">
                <div class="modal-content update-modal" >
                  <div class="modal-header">
                    <h3 class="modal-title" id="exampleModalLabel">Edit Syllabus</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="margin-top: -28px;">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                        <div class="form-group row">
                          <input type="hidden" name="id"  >
                            <div class="col-md-6">
                            
                        
                            <label class=" col-form-label">Choose Class</label>
                              <select name="class1"  class="form-control selectclass" id=seel  >
                                <option>Select any one</option>
                              </select>
                            </div>
                         
                                 <div class="col-md-6 " >

                            <label class=" col-form-label">Add Syllabus</label>
                         
                                  <input type="file" value=<?php echo base_url()?>/uploads/6.jpeg name="image" id=insert  class="form-control"  >
                                
                            </div>
                          </div>
                        
                     
                
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" id="btnUpdate" class="btn btn-primary">Update</button>
                  </div>
                </div>
  </div>              </div>
            </div>
            </form>
        <!--END MODAL EDIT-->


<!--- Add DAta-->
  <form id="form1" method="post" action="<?php echo site_url('Setup/syllabusinsert')?>">
            <div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-md" role="document">
                <div class="modal-content update-modal" >
                  <div class="modal-header">
                    <h3 class="modal-title" id="exampleModalLabel">Add Syllabus</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="margin-top: -28px;">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                        <div class="form-group row">
                       
                            <div class="col-md-6">
                         
                            <label class=" col-form-label">Image</label>
                              <input type="file" name="image1"  class="form-control"  >
                            </div>
                               
                                 <div class="col-md-6 ">
                            
                            <label class=" col-form-label">Choose Class</label>
                              <select name="class_id"  class="form-control classSelect"  >
                                <option>Select any one</option>
                                <?php 
                                
                                ?>
                              </select>
                            </div>
                                 
                        
                     </div>
             
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit"  id="adddata" class="btn btn-primary">Add</button>
                  </div>     </div>
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

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    
    <script>
    $(function(){
    $('#form1').unbind().on('submit',function(e){
      e.preventDefault();
      var data=$('#form1').serialize();
    
               var image=$('input[name=image1]');
              

      var url=$('#form1').attr('action');

      var r='';
     
      if(image.val()==''){
        image.parent().addClass('has-error');
      }
      else{
        image.parent().removeClass('has-error');
             r+='1';

      }
   

      if(r=='1'){
        $.ajax({
          type:'ajax',
            method:'post',
            data:new FormData(this),
            contentType:false,
                    cache:false,

                    processData:false,
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
        method:'post',
        url:'<?php echo site_url('Setup/syllabusshow')?>',
        datatype:'json',
        success:function(res){
          var html='';
          var sno=0;
          var res=JSON.parse(res);
          $.each(res,function(i,item){
sno++;
          html+='<tr><td>'+sno+'</td><td><img src=<?php echo base_url()?>uploads/'
          +item.syllabus+' width=50px></td><td>'
          +item.class_id+'</td><td><a href=javascript:; data='+item.id+' class=editdata>Edit</a> <a href=javascript:; data='+item.id+' class=deletedata>Delete</a></td></tr>';
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
$('#form2').on('submit',function(e){
e.preventDefault();
var data=$('#form2').serialize();

    url=$('#form2').attr('action');
        $.ajax({
           type:'ajax',
            method:'post',
            data:new FormData(this),
            url:url,
             
              cache:false,
                    contentType:false,
                 
                    processData:false,
                    datatype:'json',
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
    url:'<?php echo site_url('Setup/syllabusdelete')?>',
    success:function(res){
      $('#deleteModal').modal('hide');
      showdata();
        $('.alert-success').html('Data Deleted Succesfully').fadeIn().delay(4000).fadeOut('slow');
     

    },

  });
});
});
    

     $('.btnadd').click(function(){
         $.ajax({
        method:'post',
        url:'<?php echo site_url('Registration/showclass')?>',
        datatype:'json',
        success:function(res){
          var res=JSON.parse(res);
          var html='';
       $.each(res,function(i,item){
            
            html+='<option value='+item.id+'>'+item.class+'</option>';
          $('.classSelect').html(html);
        });
      },
        error:function(){
          alert('no');
        },

    });
  
    
    }); 

    

     $('#showdata').on('click','.editdata',function(){
         $.ajax({
        method:'post',
        url:'<?php echo site_url('Registration/showclass')?>',
        datatype:'json',
        success:function(res){
          var res=JSON.parse(res);
          var html='';
       $.each(res,function(i,item){
            
            html+='<option value='+item.id+'>'+item.class+'</option>';
          $('.selectclass').html(html);
        });
      },
        error:function(){
          alert('no');
        },

    });
  
    
    }); 


     $('#showdata').on('click','.editdata',function(){
$('#Modal_Edit').modal('show');
var id=$(this).attr('data');

$.ajax({
    type:'post',
    data:{'id':id},
    datatype:'json',
    url:'<?php echo site_url('Setup/syllabusedit')?>',
    success:function(res){
     var res=JSON.parse(res);
     

      $.each(res,function(i,item){
         $('#seel option[value='+item.class_id+'] ').attr('selected', 'selected');
 $('input[name=id]').val(res[i].id);

              
                       
      });
    },
});
});
    
});
    </script>

</body>
</html>

