








<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
  Post
      </h1>
      <ol class="breadcrumb">
        <li><a href="<?php echo base_url() ?>"><i class="fas fa-arrow-alt-circle-right"></i> Home</a></li>
        <li><a href="#">Post</a></li>
    
        <li class="active">Show Post</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
        

          <div class="box box-success">
              <div class="box-header with-border">
                  <h3 class="box-title">Show Posts</h3>
                </div>
          
            <!-- /.box-header -->
            <div class="box-body">
                   
          <div class="alert alert-success" style="display: none;"></div>
             <div class=table-responsive >
         <table id="example1" class="table table-striped table-hover js-basic-example dataTable">
              <thead>
                <tr style="background:black;color:white">
             <th>Id</th>
                 <th>Title</th>
                  <th>Post </th>
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
                  <div class="form-group">
                 
                    <button href="#" data-toggle=modal data-target='#add' class="btn btn-success btnadd"  title="Add Staff" style="background-color: #0092DF;
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
        <form id="form2" action="<?php echo site_url('Setup/postupdate')?> " method=post enctype="multipart/form-data">
            <div class="modal fade" id="Modal_Edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content update-modal" >
                  <div class="modal-header">
                    <h3 class="modal-title" id="exampleModalLabel">Edit Post</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="margin-top: -28px;">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                        <div class="form-group row">
                               <div class=content>
              <div class=row>
                <input type="hidden" name="id">
                <input type="hidden" name="hidimg">
                <div class=col-lg-12>
                  <label class=form-label>Enter Title</label>
                  <input class=form-control name=title1 placeholder="Enter Title">
                </div></div>
                <div class=row>
                <div class=col-lg-12 style="margin-top: 10px;">
                   <label class=form-label>Enter Post Data</label>
                  <input class=form-control name=post1 placeholder="Enter Post Data">
                </div>
                 <div class=col-lg-12 style="margin-top: 10px;">
                   <label class=form-label>Choose Image</label>
                  <input class=form-control name=image1 type=file>
                </div>
               
              </div>
            </div>


</div>
                          </div>
                        
                     
               

                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" id="btnUpdate" class="btn btn-primary">Update</button>
                  </div>   </div></div></div>
               
            </div>
            </form>
        <!--END MODAL EDIT-->


<!--- Add DAta-->
 <form action="<?php echo site_url('Setup/postinsert')?>" id=form1>
            <div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content update-modal" >
                  <div class="modal-header">
                    <h3 class="modal-title" id="exampleModalLabel">Add Post</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="margin-top: -28px;">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                        <div class="form-group row">
                         
            <div class=content>
              <div class=row>
                <div class=col-lg-12>
                  <label class=form-label>Enter Title</label>
                  <input class=form-control name=title placeholder="Enter Title">
                </div></div>
                <div class=row>
                <div class=col-lg-12 style="margin-top: 10px;">
                   <label class=form-label>Enter Post Data</label>
                  <input class=form-control name=post placeholder="Enter Post Data">
                </div>
                 <div class=col-lg-12 style="margin-top: 10px;">
                   <label class=form-label>Choose Image</label>
                  <input class=form-control name=image type=file>
                </div>
               
              </div>
            </div>







</div>
              </div>  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit"   class="btn btn-primary insert">Add</button>
                  </div>
                    
                 
                
            </div>
            </form>
      </div>
<!-- delete --></div>
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
        <script type="text/javascript">
          

  $(function(){
    $('#form1').on('submit',function(e){
      e.preventDefault();

      var data=$('#form1').serialize();
      var name=$('input[name=post]');
      var code=$('input[name=title]');
      var image=$('input[name=image]');
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
       if(image.val()==''){
        image.parent().addClass('has-error');
      }
      else{
        image.parent().removeClass('has-error');
             r+='1';

      }
      if(r=='111'){
  
          $.ajax({
          
            method:'post',
            data:new FormData(this),
            url:url,
            datatype:'json',
              contentType:false,
                    cache:false,

                    processData:false,
            success:function(res){
               
                $('#add').modal('hide');
                $('#form1')[0].reset();
                showdata();
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
        url:'<?php echo site_url('Setup/postshow')?>',
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
          +item.title+'</td><td>'
          +item.post+'</td><td><img src=<?php echo base_url()?>uploads/'
          +item.image+' width=50px></td><td><a href=javascript:; data='+item.id+' class=editdata>Edit</a> <a href=javascript:; data='+item.id+' class=deletedata>Delete</a></td></tr>';
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
    url:'<?php echo site_url('Setup/postedit')?>',
    success:function(res){
     var res=JSON.parse(res);
     

      for(i=0;i<res.length;i++){
        var b='<?php echo base_url()?>uploads/'+res[i].image;
 $('input[name=id]').val(res[i].id);



               $('input[name=post1]').val(res[i].post);
             $('input[name=title1]').val(res[i].title);
             
                $('input[name=hidimg]').val(res[i].image);

          
                       
         $("#img1").attr("src",b);
                   
                
      };
    },
});
$('#form2').unbind().on('submit',function(e){

        e.preventDefault();
        $.ajax({
            method:'post',
            data:new FormData(this),
            url:'<?php echo site_url('Setup/postupdate')?>',
             contentType:false,
                    cache:false,

                    processData:false,
                  
            success:function(res){
                showdata();
                $('input[name=image1]').val(null);
                
              $('#Modal_Edit').modal('hide');
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
    url:'<?php echo site_url('Setup/postdelete')?>',
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