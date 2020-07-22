<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
     Staff Registration
      </h1>
      <ol class="breadcrumb">
        <li><a href="<?php echo base_url() ?>"><i class="fas fa-arrow-alt-circle-right"></i> Home</a></li>
        <li><a href="#">Registration</a></li>
    
        <li class="active">Show Teacher Registration</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
        

          <div class="box box-success">
              <div class="box-header with-border">
                  <h3 class="box-title">Show Staff Registration</h3>
                </div>
          
            <!-- /.box-header -->
            <div class="box-body">
                   
          <div class="alert alert-success" style="display: none;"></div>
             <div class=table-responsive >
         <table id="example1" class="table table-striped table-hover js-basic-example dataTable">
              <thead>
                <tr style="background:black;color:white">
             <th>Id</th>
                 <th>Name</th>
                  <th>Father Name</th>
                  <th>Cnic</th>
                  <th>Designation</th>
                   <th>Qualification</th>
   <th>Degree</th>
                 <th>Pay</th>
                  
                  <th>Contact</th>
                   <th>Address</th>
                 <th>Gender</th>
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
                 
                    <a href="<?php echo site_url('Registration/add_Staff')?>"   class="btn btn-success btnadd"  title="Add Staff" style="background-color: #0092DF;
    border-color: #0092DF;"><i class="fas fa-plus-square"></i></a>
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
        <form id="form2" action="<?php echo site_url('Registration/Staff_Classupdate')?> " method=post enctype="multipart/form-data">
            <div class="modal fade" id="Modal_Edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content update-modal" >
                  <div class="modal-header">
                    <h3 class="modal-title" id="exampleModalLabel">Edit Staff</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="margin-top: -28px;">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                        <div class="form-group row">
                          <input type="hidden" name="id" value=  >
                           <input type="hidden" name="hidimg" value=  >
                            <div class="col-md-3">
                            
                            <label class=" col-form-label">Name</label>
                              <input type="text" name="name1"  class="form-control" placeholder="Enter  Name" >
                            </div>
                            <div class="col-md-3">
                            
                            <label class=" col-form-label">Father Name</label>
                              <input type="text" name="fname1"  class="form-control" placeholder="Enter Father Name" >
                            </div>
                            <div class="col-md-3">
                            
                            <label class=" col-form-label">Cnic</label>
                              <input type="text" name="cnic1"  class="form-control" placeholder="Enter Cnic" >
                            </div>
                              <div class="col-md-3">
                            
                            <label class=" col-form-label">Designation</label>
                              <input type="text" name="designation1"  class="form-control" placeholder="Enter Designation" >
                            </div>
                              <div class="col-md-3">
                            
                            <label class=" col-form-label">Pay</label>
                              <input type="text" name="pay1"  class="form-control" placeholder="Enter Pay" >
                            </div>
                            <div class="col-md-3">
                            
                            <label class=" col-form-label">Gender</label><br>Male &nbsp;&nbsp;&nbsp;
                              <input type="radio" name="gender1" value="male" id=male  >&nbsp;&nbsp;&nbsp;
                              Female &nbsp;&nbsp;&nbsp;<input value="female" type="radio" name="gender1" id=female >
                            </div>
                            <div class="col-md-3">
                            
                            <label class=" col-form-label">Contact</label>
                              <input type="text" name="contact1"  class="form-control" placeholder="Enter Contact No" >
                            </div>
                           
                            <div class="col-md-3">
                            
                            <label class=" col-form-label">Address</label>
                              <input type="text" name="address1"  class="form-control" placeholder="Enter Address" >
                            </div>
                       
                            
                           
                                 <div class="col-md-6 " style="margin-top: 20px">
                                  <div style="float: left">
                               <img id=img1 src="" width="100px"></div>
                               <div style="float: left">
                                  <input type="file" name="image1"  class="form-control"  value='' />
                                </div>
                              </div>

                            <div class="col-md-3">
                            
                            <label class=" col-form-label">Qualification</label>
                              <select name="qual1" value="" class="form-control qual1"  ></select>
                            </div>
                             <div class="col-md-3">
                            
                            <label class="col-form-label">Degree</label>
                               <select name="degree1" value=""  class="form-control degree1"  >
                                <option>Select degree first</option></select>
                            </div>
                                  <div class="col-md-3">
                            
                            <label class="col-form-label">Status</label>
                               <select name="status"  class="form-control "  >
                                <option value="">Select</option> <option value="1">Active</option> <option value="0">Inactive</option></select>
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

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    
    <script>
    $(function(){
   
showdata();
   function showdata(){
    $.ajax({
        method:'get',
        url:'<?php echo site_url('Registration/Staff_Classshow')?>',
        datatype:'json',
        async:false,
        success:function(res){
          var html='';
          var res=JSON.parse(res);
          var sno=0;
          $.each(res,function(i,item){
sno++;

          html+='<tr>'+
          '<td>'
          +sno+'</td><td>'
          +item.name+'</td><td>'
          +item.fathername+'</td><td>'
          +item.cnic+'</td><td>'
          +item.designation+'</td><td>'
          +item.qualification+'</td><td>'
          +item.degree+'</td><td>'
          +item.pay+'</td><td>'
          +item.contact+'</td><td>'
          +item.address+'</td><td>'
          +item.gender+'</td><td><img src=<?php echo base_url()?>uploads/'
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
showqualification1();
var id=$(this).attr('data');
$.ajax({
    type:'post',
    data:{'id':id},
    datatype:'json',
    url:'<?php echo site_url('Registration/Staff_Classedit')?>',
    success:function(res){
     var res=JSON.parse(res);
     

      for(i=0;i<res.length;i++){
        var b='<?php echo base_url()?>uploads/'+res[i].image;
 $('input[name=id]').val(res[i].id);

 showqualification1(res[i].qualification);
 degree_show(res[i].qualification,res[i].degree_id);
               $('input[name=name1]').val(res[i].name);
             $('input[name=fname1]').val(res[i].fathername);
              $('input[name=cnic1]').val(res[i].cnic);
                $('input[name=hidimg]').val(res[i].image);

               $('input[name=designation1]').val(res[i].designation);
               $('input[name=qual1]').val(res[i].qualification);
               if(res[i].status=='1'){
                $('select[name=status]').val(res[i].status);
               };
                if(res[i].status=='0'){
                $('select[name=status]').val(0);
               };

                $('input[name=pay1]').val(res[i].pay);
                  if(res[i].gender=='male'){
$('#male').prop("checked",true);

                };

                if(res[i].gender=='female'){
$('#female').prop("checked",true);

                };
                       
         $("#img1").attr("src",b);
                   
                        $('input[name=contact1]').val(res[i].contact);
                         $('input[name=address1]').val(res[i].address);
                        
      };
    },
});
$('#form2').unbind().on('submit',function(e){

        e.preventDefault();
        $.ajax({
            method:'post',
            data:new FormData(this),
            url:'<?php echo site_url('Registration/Staff_Classupdate')?>',
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
    url:'<?php echo site_url('Registration/Staff_Classdelete')?>',
    success:function(res){
      $('#deleteModal').modal('hide');
      showdata();
        $('.alert-success').html('Data Deleted Succesfully').fadeIn().delay(4000).fadeOut('slow');
     

    },

  });
});
});
   
showqualification();

       function showqualification(){
                $.ajax({
       
        method:'post',
        url:'<?php echo site_url('Registration/showqualification')?>',
        datatype:'json',
        success:function(res){
          var res=JSON.parse(res);
          var html='';
           html+='<option>Select Qualification</option>';
       $.each(res,function(i,item){
            
            html+='<option value='+item.id+'>'+item.qualification+'</option>';
          $('.qual').html(html);
        });
      },
        error:function(){
          alert('no');
        },

    });
              };
  
    $('.qual').change(function(){
        var data=$('.qual').val();
        $.ajax({
            method:'post',
            datatype:'json',
            data:{'data':data},
            url:'<?php echo site_url('Registration/showdegree')?>',
            success:function(res){
              var res=JSON.parse(res);
             var html='';
             console.log(res);
                if(res.length!=0){

$.each(res,function(i,item){
              html+='<option value='+item.id+'>'+item.degree+'</option>';

         $('.sectionselect').html(html);
        });
       }
        else{
        $('.sectionselect').html('');
        }  

        $('.degree').html(html);
                             
             
            },
        });

    });
     




       function showqualification1(data){
                $.ajax({
       
        method:'post',
        url:'<?php echo site_url('Registration/showqualification1')?>',
        datatype:'json',
        success:function(res){
          var res=JSON.parse(res);
          var html='';
           html+='<option>Select Qualification</option>';
       $.each(res,function(i,item){
            
            html+='<option value='+item.id+'>'+item.qualification+'</option>';
          $('.qual1').html(html);

              $('.qual1 option[value='+data+'] ').attr('selected', 'selected');

        });
      },
        error:function(){
          alert('no');
        },

    });
              };
  
    $('.qual1').change(function(){
        var data=$('.qual1').val();
        degree_show(data);
  });
        function degree_show(data,data1){
        $.ajax({
            method:'post',
            datatype:'json',
            data:{'data':data},
            url:'<?php echo site_url('Registration/showdegree1')?>',
            success:function(res){
              var res=JSON.parse(res);
             var html='';
             console.log(res);
                
$.each(res,function(i,item){
              html+='<option value='+item.id+'>'+item.degree+'</option>';
 

        $('.degree1').html(html);
                             
     $('.degree1 option[value='+data1+'] ').attr('selected', 'selected');

            })
          },
        });

  
}
});
    </script>

</body>
</html>

