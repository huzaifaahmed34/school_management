
<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
     Student Registration
      </h1>
      <ol class="breadcrumb">
        <li><a href="<?php echo base_url() ?>"><i class="fas fa-arrow-alt-circle-right"></i> Home</a></li>
        <li><a href="#">Registration</a></li>
    
        <li class="active">Show Student Registration</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
        

          <div class="box box-success">

              <div class="box-header with-border">
                  <h3 class="box-title">Show Student Registration</h3>
                </div>
          
            <!-- /.box-header -->
            <div class="box-body">
<div class=col-md-12>
<div class=col-md-4></div>
            <div class=col-md-4 >
              <h4>Choose Class</h4>
              <select class="form-control search" style=margin-top:10px;></select>
                   </div><div class=col-md-4></div></div>
                   <div class=col-md-12>
<div class=col-md-4></div> <div class=col-md-4 >
              <h4>Choose Section</h4>
              <select  class="form-control search1"  style=margin-top:10px;margin-bottom:10px;></select>
                   </div></div>
                   <div class="col-md-12 text-center" >
                   <button id=search class="btn btn-primary">Search</button>
                 </div>
                 <div class=col-md-12 style="margin-top: 10px">
                    <div class="alert alert-success" style="display: none;"></div></div>
  
             <div  id=showdata >
       
            

            </div>
      
                <!-- /.col -->
               
          <div class="col-md-12" style="text-align: right; padding-top:30px;">
           <!-- /.form-group -->
                  <div class="form-group">
                 
                    <a href="<?php echo site_url('Registration/add_students')?>" class="btn btn-success btnadd"  title="Add Students" style="background-color: #0092DF;
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
        <form id="form2" action="<?php echo site_url('Registration/Student_Classupdate')?>" method=post>
            <div class="modal fade" id="Modal_Edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content update-modal" >
                  <div class="modal-header">
                    <h3 class="modal-title" id="exampleModalLabel">Edit Students</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="margin-top: -28px;">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                        <div class="form-group row">
                          <input type="hidden" name="id"  >
                          <input type="hidden" name="hidimg" value="" >
                            <input type="hidden" name="hidimg1" value="" >
                              <input type="hidden" name="hidimg2" value="" >
                             <div class="col-lg-6">
                            
             <label class=" col-form-label">Nationality</label>
        <input type="text" name="nationality" class="form-control" placeholder="Enter Nationality" >
                              </div>

        <div class="col-lg-6">
                            
                            <label class=" col-form-label">Registration no</label><br><span style="color: red" id=span1></span> 
                              <input type="text" name="reg" id=reg class="form-control" placeholder="Enter Registration No" >
                            </div>
                           <div class="col-lg-6">
                            
                            <label class=" col-form-label">Name</label>
                              <input type="text" name="name"  class="form-control" placeholder="Enter  Name" >
                            </div>


                            <div class="col-lg-6">
                            
                            <label class=" col-form-label">Bform</label>
                              <input type="text" name="bform"  class="form-control" placeholder="Enter B-Form No" >
                            </div>


                            <div class="col-lg-6">
                            
                            <label class=" col-form-label">Admission Date</label>
                              <input type="date" name="admission_date"  class="form-control"  >
                            </div>



                              <div class="col-lg-6">
                            
                            <label class=" col-form-label">Dob</label>
                              <input type="date" name="dob"  class="form-control" placeholder="Enter Date of birth" >
                            </div>
                      <div class="col-lg-6">
                          
                            <label class=" col-form-label">Choose Class</label>
                              <select name="class1"  class="form-control selectclass " id=cls >
                                <option>Select any one</option>
                              </select>
                            </div>
                                 <div class="col-lg-6">
                            
                            <label class=" col-form-label">Choose Section</label>
                                <select name="section1"  class="form-control sectionselect"  id=cls1 >
                                <option>Select any one</option>
                              </select>
                            </div>
   
                             <div class="col-lg-6">
                            
                            <label class=" col-form-label">Gender</label>
                               <select name="gender"  class="form-control  "  >
                                <option value="">Select any one</option>
                                 <option value="male">Male</option>
                                  <option value="female">Female</option>
                              </select>
                            </div>

                            <div class="col-lg-6">
                            
                            <label class=" col-form-label">Previous School</label>
                              <input type="text" name="previous_school"  class="form-control" placeholder="Enter Previous School Name" >
                            </div>

                                 <div class="col-lg-6">
                            
                            <label class=" col-form-label">Inclusive</label>
                               <select name="inclusive"  class="form-control "  >
                                <option value="">Select any one</option>
                                 <option value="Yes">Yes</option>
                                  <option value="No">No</option>
                              </select>
                            </div>

                            <div class="col-lg-6">
                            
                            <label class=" col-form-label">Religion</label>
                              <input type="text" name="religion"  class="form-control" placeholder="Enter Religion" >
                            </div>
                            
                                 <div class="col-lg-4 " >
                            
                            <label class=" col-form-label">Status</label>
                               <select name="status"  class="form-control"  >
                                 <option value=''>Select</option>
                                 <option value="In-Progress">In-Progress</option>
                                <option value="Completed">Completed</option>
                                <?php 
                                
                                ?>
                              </select></div>
                            
                              
                        
                          
                                 
    
                            <div class=col-lg-12>
                              <h2>Family Information</h2>
                            
                            </div>

                            <div class="col-lg-6">
                            
                            <label class=" col-form-label">Father Name</label>
                              <input type="text" name="fname"  class="form-control" placeholder="Enter Father Name" >
                            </div>

                            <div class="col-lg-6">
                            
                            <label class=" col-form-label">Guardian Name</label>
                              <input type="text" name="gname"  class="form-control" placeholder="Enter Guardian Name" >
                            </div>
                             <div class="col-lg-6">
                            
                            <label class=" col-form-label">Father Cnic</label>
                              <input type="text" name="fcnic"  class="form-control" placeholder="Enter Father Cnic" ></div>
                               <div class="col-lg-6">
                            
                            <label class=" col-form-label">Guardian Cnic</label>
                              <input type="text" name="gcnic"  class="form-control" placeholder="Enter Father Cnic" >
                            </div>
                             <div class="col-lg-6">
                            
                            <label class=" col-form-label">Mother Cnic</label>
                              <input type="text" name="mcnic"  class="form-control" placeholder="Enter Mother Cnic" >

                            </div>

                             <div class="col-lg-6">
                            
                            <label class=" col-form-label">Father Profession</label>
                             
                                 <select name="foccupation"  class="form-control"  >
                                    <option value=''>Select</option>
                                <option value="Bussiness">Bussiness</option>
                                <option value="Job-Holder">Job Holder</option>
                                <?php 
                                
                                ?>
                              </select>
                            </div>

                             <div class="col-lg-6">
                            
                            <label class=" col-form-label">No Of Children</label>
                              <input type="text" name="no_of_children"  class="form-control" placeholder="Enter No Of Children" >
                            </div>
                                   
<div class="col-lg-6">
                            <label class=" col-form-label">Job Type</label>
                             <select name="job_type"  class="form-control "  >
                                <option value="">Select any one</option>
                                      <option value="Teacher">Teacher</option>
                                 <option value="Engineer">Engineer</option>
                                  <option value="Docotor">Docotor</option>
                                  <option value="Farmer">Farmer</option>
                                  <option value="Labour">Labour</option>
                                  <option value="Shopkeeper">Shopkeeper</option>
                                  <option value="Other">Other</option>
                              </select>
                            </div>
                               <div class="col-lg-6">
                            
                            <label class=" col-form-label">Father Education</label>
                                 <select name="father_education" id=education class="form-control"  >
                                
                               
                              
                                
                              </select>
                            </div>
                               <div class="col-lg-6">
                            
                            <label class=" col-form-label">Mother Education</label>
                          
                                 <select name="mother_education" id=education1 class="form-control"  >
                               
                               
                              </select>
                            </div>
                          
                              <div class="col-lg-6">
                            
                            <label class=" col-form-label">Mother Profession</label>
                             
                                 <select name="mother_profession"  class="form-control"  >
                                    <option value=''>Select</option>
                              <option value="Bussiness">Bussiness</option>
                                <option value="Job-Holder">Job Holder</option>
                                <option value="House Hold">House Hold</option>
                                <option value="Other">Other</option>
                                <?php 
                                
                                ?>
                              </select>
                            </div>

                               <div class="col-lg-6">
                            
                            <label class=" col-form-label">Father Income</label>
                           
                                 <select name="father_income"  class="form-control"  >
                                    <option value=''>Select</option>
                                     <option value='No Income'>No Income</option>
                                <option value="5000">5000</option>
                                 <option value="10000">10000</option>
                                  <option value="15000">15000</option>
                                   <option value="20000">20000</option>
                                    <option value="30000">30000</option>
                                     <option value="35000">35000</option>
                                      <option value="40000">40000</option>
                                       <option value="45000">45000</option>
                                        <option value="50000">50000</option>
                                         <option value="50000+">50000+</option>

                                 
                                
                                
                              </select>
                            </div>
                        
                             <div class="col-lg-6">
                            
                            <label class=" col-form-label">Mother Income</label>
                              <select name="mother_income"  class="form-control "  >
                                <option value=''>Select</option>
                                   <option value='No Income'>No Income</option>
                                <option value="5000">5000</option>
                                 <option value="10000">10000</option>
                                  <option value="15000">15000</option>
                                   <option value="20000">20000</option>
                                    <option value="30000">30000</option>
                                     <option value="35000">35000</option>
                                      <option value="40000">40000</option>
                                       <option value="45000">45000</option>
                                        <option value="50000">50000</option>
                                         <option value="50000+">50000+</option>

                                 
                                
                                
                              </select>
                            </div>
                        
                           <div class="col-lg-6">
                            
                            <label class=" col-form-label">HouseHold Income</label>
                           
                                 <select name="household_income"  class="form-control"  >  
                                  <option value=''>Select</option>
                                     <option value='No Income'>No Income</option>
                                <option value="5000">5000</option>
                                 <option value="10000">10000</option>
                                  <option value="15000">15000</option>
                                   <option value="20000">20000</option>
                                    <option value="30000">30000</option>
                                     <option value="35000">35000</option>
                                      <option value="40000">40000</option>
                                       <option value="45000">45000</option>
                                        <option value="50000">50000</option>
                                         <option value="50000+">50000+</option>
                                
                              </select>
                            </div>
                        
                         
                           
                            <div class="col-lg-6">
                            
                            <label class=" col-form-label">Phone no</label>
                              <input type="text" name="contact"  class="form-control" placeholder="Enter Contact No" >
                            </div>


                            <div class="col-lg-6">
                            
                            <label class=" col-form-label">Address</label>
                              <input type="text" name="address"  class="form-control" placeholder="Enter Address" >
                            </div>
                           
                                 <div class="col-md-12" style="margin-top: 20px">
                                 
                                  <div style="float: left">
                               <img id=img1 src="" width="100px"></div>
                               <div style="float: left">
                                  <input type="file" name="image1"  class="form-control"  >
                                </div>    <div style="float: left">
                                  <label class=" col-form-label">&nbsp;&nbsp;&nbsp; Edit Image</label>
                                </div>
                           
                              </div>
 
                               <div class="col-md-12" style="margin-top: 20px">
                                 
                                  <div style="float: left">
                               <img id=img2 src="" width="100px"></div>
                               <div style="float: left">
                                  <input type="file" name="image5"  class="form-control"  >
                                </div> <div style="float: left"><label class=" col-form-label">&nbsp;&nbsp;&nbsp; Edit Father Cnic</label></div>
                              </div>
                                   <div class="col-md-12" style="margin-top: 20px">
                                
                                  <div style="float: left">
                               <img id=img3 src="" width="100px" ></div>
                               <div style="float: left">
                                  <input type="file" name="image6"  class="form-control"  >
                                </div> <div style="float: left">      <label class=" col-form-label">&nbsp;&nbsp;&nbsp; Edit Bform</label></div>
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
        <button type="button" id="btnDelete" class="btn-danger btn btn-raised g-bg-cyan">Delete</button>
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
     
  
$('#search').unbind().click(function(){
      var data=$('.search').val();
      var data1=$('.search1').val();
  show_data(data,data1);
})
   function show_data(data,data1){


    $.ajax({
        method:'post',
        url:'<?php echo site_url('Registration/Student_Class')?>',
        datatype:'json',
        data:{'data':data,'data1':data1},
        success:function(res){
          var html='';
          var res=JSON.parse(res);
       var c=0;
          $.each(res,function(i,item){
 c++;
          html+='<div class=col-md-4 style=margin-top:30px;padding-left:10px!important;padding-right:10px!important;><table class=table  width="100%" style="border:1px solid "; ><tr height=30px;  ><td colspan="2" style="border:1px solid;">&nbsp;&nbsp;'+c+'&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;'+item.name+' S/O '+item.fathername+'</td></tr><tr><td>Class : '+item.class+'</td><td rowspan=4><img src=<?php echo base_url()?>uploads/'
          +item.image+' width=100px height=100px></td></tr><tr><td>Status : '+item.status+'</td></tr><tr><td>Registration no : '+item.reg_no+'</td></tr><tr><td>B-Form : '+item.b_form+'</td></tr><tr><td>Date of submission :'+item.created_on+'</td><td>Date Of Birth : '+item.dob+'</td></tr><tr><td>Father Cnic  : '+item.father_cnic+'</td><td>Remarks : </td></tr> <tr><td><a href=javascript:; data='+item.id+' class=editdata>Edit</a></td><td> <a href=javascript:; data='+item.id+' class=deletedata>Delete</a></td></tr></table></div>';
      
        

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
  type:'ajax',
    method:'post',
    data:{'id':id},
    datatype:'json',

    url:'<?php echo site_url('Registration/Student_Classedit')?>',

    success:function(res){


     var res=JSON.parse(res);
     
 
     $.each(res,function(i,item){

        var b='<?php echo base_url()?>uploads/'+res[i].image;
         var d='<?php echo base_url()?>uploads/'+res[i].cnic_img;
          var e='<?php echo base_url()?>uploads/'+res[i].bform_img;
$('input[name=id]').val(item.id);
 
    showclass(item.class_id);


           change(res[i].class_id,item.section_id);

     
           

               $('input[name=name]').val(res[i].name);
             $('input[name=fname]').val(res[i].fathername);
              $('input[name=hidimg]').val(res[i].image);
               $('input[name=hidimg1]').val(res[i].cnic_img);
                $('input[name=hidimg2]').val(res[i].bform_img);
             
             
                $('input[name=reg]').val(res[i].reg_no);
               $('input[name=bform]').val(res[i].b_form);
                $('input[name=fcnic1]').val(res[i].father_cnic);
                       $('input[name=foccupation]').val(res[i].father_occupation);
         $("#img1").attr("src",b);
          $("#img2").attr("src",d);
           $("#img3").attr("src",e);
                 
                  $('input[name=dob]').val(res[i].dob);
              
      $('input[name=contact]').val(res[i].contact);
      $('input[name=address]').val(res[i].address);


      $('input[name=cnicimg]').val(res[i].cnicimg);
        $('input[name=fcnic]').val(res[i].father_cnic);
      $('select[name=household_income]').val(res[i].household_income);
        $('select[name=mother_income]').val(res[i].mother_income);
       $('select[name=father_income]').val(res[i].father_income);
      $('select[name=mother_education]').val(res[i].mother_education);
         $('select[name=father_education]').val(res[i].father_education);   $('select[name=mother_profession]').val(res[i].mother_profession);
            $('select[name=foccupation]').val(res[i].father_occupation);

            $('select[name=status]').val(res[i].status);
        $('select[name=job_type]').val(res[i].job_type);
         $('input[name=no_of_children]').val(res[i].no_of_children);
           
               
             $('input[name=mcnic]').val(res[i].mother_cnic);
             $('input[name=gcnic]').val(res[i].guardian_cnic);
              $('input[name=gname]').val(res[i].guardian_name);
                 $('input[name=bformimg]').val(res[i].bformimg);
                $('input[name=religion]').val(res[i].religion);

                  $('input[name=nationality]').val(res[i].nationality);
               $('input[name=admission_date]').val(res[i].admission_date);
              $('select[name=class_id]').val(res[i].class_id);
               $('select[name=section_id]').val(res[i].class_id);
                     
            $('select[name=gender]').val(res[i].gender);
               $('input[name=previous_school]').val(res[i].previous_school);
              $('select[name=inclusive]').val(res[i].inclusive);
                  


      });

    },
});
$('#form2').unbind().on('submit',function(e){
  e.preventDefault();


        $.ajax({
            method:'post',
            data:new FormData(this),
        url:'<?php echo site_url('Registration/Student_Classupdate')?>',datatype:'json',
       
            contentType:false,
                    cache:false,

                    processData:false,
                  async:true,
            success:function(res){
              $('#Modal_Edit').modal('hide');
                $('input[name=image1]').val(null);
                  $('input[name=image5]').val(null);
                      $('input[name=image6]').val(null);
             
                 $('.alert-success').html('Data Updated Succesfully').fadeIn().delay(4000).fadeOut('slow');
                     var data=$('.search').val();
      var data1=$('.search1').val();
                  show_data(data,data1);

                  

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

$('#btnDelete').click(function(){


$.ajax({
    type:'post',
    data:{'id':id},
    datatype:'json',
    url:'<?php echo site_url('Registration/Student_Classdelete')?>',
    success:function(res){
      $('#deleteModal').modal('hide');
         var data=$('.search').val();
      var data1=$('.search1').val();
                  show_data(data,data1);

                  
        $('.alert-success').html('Data Deleted Succesfully').fadeIn().delay(4000).fadeOut('slow');
     

    },

  });
});
});
     $('.classSelect').change(function(){
     var classid=$('.classSelect').val();
  
         $.ajax({

        method:'post',
        url:'<?php echo site_url('Registration/showsection')?>',
     data:{'c':classid},
        datatype:'json',
      
        success:function(res){
        
          var res=JSON.parse(res);
          var html='';

      if(res.length!=0){

       $.each(res,function(i,item){
            
            html+='<option value='+item.id+'>'+item.section+'</option>';
          $('.sectionSelect').html(html);
        });}
       else{
        html+='<option value=N/A>N/A</option>';
     
        $('.sectionSelect').html(html);
       }
      },
        error:function(){
          alert('no');
        },

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
          html+='<option>Select Class</option>';
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

    
          $('.selectclass').change(function(){
             var classid=$('.selectclass').val();
change(classid);
          });

            function change(class_id,section_id){
    

         $.ajax({

        method:'post',
        url:'<?php echo site_url('Registration/showsection')?>',
     data:{'c':class_id},
        datatype:'json',
    
        success:function(res){
       var i; 
          
          var html='';
            
          res=JSON.parse(res);

      if(res.length!=0){

$.each(res,function(i,item){

            html+='<option value='+item.id+'>'+item.section+'</option>';
         $('.sectionselect').html(html);
        });
 $('.sectionselect option[value='+section_id+'] ').attr('selected', 'selected');

       }
        else{
           html+='<option value=N/A>N/A</option>';
        $('.sectionselect').html(html);
        } 
      },
        error:function(){
          alert('no');
        },

    });
  
    
    }; 


     


      function showclass(class_id){
         $.ajax({
        method:'post',
        url:'<?php echo site_url('Registration/showclass')?>',
        datatype:'json',
       
        success:function(res){
          var res=JSON.parse(res);
          var html='';
           html+='<option>Select Class</option>';
       $.each(res,function(i,item){
                html+='<option value='+item.id+'>'+item.class+'</option>';
          $('.selectclass').html(html);
           $('.selectclass option[value='+class_id+'] ').attr('selected', 'selected');

        });
      },
        error:function(){
          alert('no');
        },

    });
  
    }
    
classshow();
$('.search').on('change',function(){

  var classid=$('.search').val();
  
         $.ajax({

        method:'post',
        url:'<?php echo site_url('Registration/showsection')?>',
     data:{'c':classid},
        datatype:'json',
      
        success:function(res){
       var i; 
          
          var html='';
            
          res=JSON.parse(res);

      if(res.length!=0){

$.each(res,function(i,item){
            html+='<option value='+item.id+'>'+item.section+'</option>';
         $('.search1').html(html);
        });

       }
        else{
           html+='<option value=N/A>N/A</option>';
        $('.search1').html(html);
        } 
      },
        error:function(){
          alert('no');
        },

    });
  
    
});

       function classshow(){
         $.ajax({
       
        method:'post',
        url:'<?php echo site_url('Registration/showclass')?>',
        datatype:'json',
        success:function(res){
          var res=JSON.parse(res);
          var html='';
           html+='<option>Select Class</option>';
       $.each(res,function(i,item){
            
            html+='<option value='+item.id+'>'+item.class+'</option>';
          $('.search').html(html);

        });
      },
        error:function(){
          alert('no');
        },

    });
  
    
    }; 
     $('#reg').keyup(function(){
      var reg=$('input[name=reg]').val();
        $.ajax({
        method:'post',
        data:{'reg':reg},
        url:'<?php echo site_url('Registration/showreg')?>',
        datatype:'json',
        success:function(res){
  
          res=JSON.parse(res);
            if(res.length!=0){
              $('#span1').html('Registration No already exist');
              $('#btnUpdate').attr('disabled','disabled');
            }
            else{
              $('#span1').html('');
              $('#btnUpdate').removeAttr('disabled','disabled');
            }
        },
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
           html+='<option value="">Select  </option><option value="uneducated">Uneducated </option>';
       $.each(res,function(i,item){
            
            html+='<option value='+item.id+'>'+item.qualification+'</option>';
          $('#education').html(html);
          $('#education1').html(html);
        });
      },
        error:function(){
          alert('no');
        },

    });
              };
  

});
    </script>

</body>
</html>

