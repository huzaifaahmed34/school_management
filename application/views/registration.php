




<div class="container-fluid  text-white pt-5" style="background: #1667B9">
  <div class="container "><div class="row pt-5">
    <div class=col-12>
    
    <br></div>
    
</div>

  </div></div>

<div class="container mt-5">
    <!-- Content Header (Page header) -->
   

       
    <!-- Main content -->
    <section class="content">
  
      <!-- SELECT2 EXAMPLE -->
      <div class="box box-success">
        <div class="box-header with-border text-center">

          <h1 class="box-title">Registration Form</h1>
        </div>
            
   <div class="alert alert-success" style="display: none;"></div>
   
   <div class="alert alert-danger" style="display: none;"></div>
        <!-- /.box-header -->
          <form id="form1" method="post" action="<?php echo site_url('Registration/Student_Classadd')?>">
        <div class="box-body">
      
		  <div class="row">
          <div class=col-lg-12>
                              <h2>Student Information</h2>
                            
                            </div>
        <div class="col-lg-6">
                            
             <label class=" col-form-label">Nationality</label>
        <input type="text" name="nationality" class="form-control" placeholder="Enter Nationality" >
                              </div>

		    <div class="col-lg-6">
                       
                            <label class=" col-form-label">Registration no</label><br><span style="color: red" id=span1></span> 
                              <input type="number" name="reg" id=reg class="form-control" placeholder="Enter Registration No" >  
           
        </div>

        <div class="col-lg-6">
                                                
             <label class=" col-form-label">Nationality</label>
        <input type="text" name="nationality" class="form-control" placeholder="Enter Nationality" value="Pakitsan">  
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
                              <select name="class_id"  class="form-control classSelect"  >
                                <option>Select any one</option>
                                <?php 
                                
                                ?>
                              </select>
                            </div>
                                 <div class="col-lg-6 ">
                            
                            <label class=" col-form-label">Choose Section</label>
                                <select name="section_id"  class="form-control sectionSelect"  >
                                <option value="">Select any one</option>
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
                              <input type="text" name="previous_school"  class="form-control" placeholder="Enter Previous School Name" value="No">
                            </div>

                                 <div class="col-lg-6">
                            
                            <label class=" col-form-label">Inclusive</label>
                               <select name="inclusive"  class="form-control "  >
                             
                                 <option value="Yes">Yes</option>
                                  <option value="No">No</option>
                              </select>
                            </div>

                            <div class="col-lg-6">
                            
                            <label class=" col-form-label">Religion</label>
                              <input type="text" name="religion"  class="form-control" placeholder="Enter Religion" value="Islam">
                            </div>
                            <div class="col-lg-6">
                            </div>
                                <div class="col-lg-2 "style=margin-top:25px>
                            
                            <label class=" col-form-label">Is Briklin</label>
                          </div> <div class="col-lg-2 "style=margin-top:30px>
                              <input type="checkbox" name="is_briklin"  class="" value="1">
                            </div>
                                 <div class="col-lg-2 "style=margin-top:25px>
                            
                            <label class=" col-form-label">Is Orphan</label></div>
                            <div class="col-lg-2 "style=margin-top:30px>
                              <input type="checkbox" name="is_orphan"  class=""  value=1>
                            </div>
                                <div class="col-lg-2" style=margin-top:25px>
                            
                            <label class=" col-form-label">Is OSC</label></div><div class="col-lg-1 "style=margin-top:30px>
                              <input type="checkbox" name="is_osc" value=1  >
                            </div>

                         
                                 <div class="col-lg-4 " style="margin-top: 25px;">
                            
                            <label class=" col-form-label">Status</label>
                               <select name="status"  class="form-control"  >
                            
                                <option value="In-Progress">In-Progress</option>
                                <option value="Completed">Completed</option>
                                <?php 
                                
                                ?>
                              </select></div>
                            
                               <div class="col-lg-4" style="margin-top: 25px;">
                         
                            <label class=" col-form-label">Student Image</label>
                              <input type="file" name="image"  class="form-control"  >
                            </div>
                              
                                <div class="col-lg-4" style="margin-top: 25px;">
                         
                            <label class=" col-form-label">B form image</label>
                              <input type="file" name="bformimg"  class="form-control"  >
                            </div>
                        
                          
                                 
    
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
                              <input type="number" name="fcnic"  class="form-control" placeholder="Enter Father Cnic" ></div>
                               <div class="col-lg-6">
                            
                            <label class=" col-form-label">Guardian Cnic</label>
                              <input type="number" name="gcnic"  class="form-control" placeholder="Enter Father Cnic" >
                            </div>
                             <div class="col-lg-6">
                            
                            <label class=" col-form-label">Mother Cnic</label>
                              <input type="number" name="mcnic"  class="form-control" placeholder="Enter Mother Cnic" >

                            </div>

                             <div class="col-lg-6">
                            
                            <label >Father Profession</label>
                             
          <select name="foccupation"  class="form-control"  id=s>
                                    <option value="">Select</option>
                                <option value="Bussiness">Bussiness</option>
                                <option value="Job-Holder">Job Holder</option>
                               <option value="Job-Nil">NIL</option>
                                
                              </select>
                            </div>

                             <div class="col-lg-6">
                            
                            <label class=" col-form-label">No Of Children</label>
                              <input type="number" name="no_of_children"  class="form-control" placeholder="Enter No Of Children" >
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
                                    <option value="">Select</option>
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
                              <input type="number" name="contact"  class="form-control" placeholder="Enter Contact No" >
                            </div>


                            <div class="col-lg-6">
                            
                            <label class=" col-form-label">Address</label>
                              <input type="text" name="address"  class="form-control" placeholder="Enter Address" >
                            </div>
                            <div class="col-lg-4">
                         
                            <label class=" col-form-label">Fathers Cnic Image</label>
                              <input type="file" name="cnicimg"  class="form-control"  >
                            </div>



                        
	
      
          
   
   
 
</div>   
    <div class="row">
		    <div class="col-md-3">
			
			</div>
 

        
            
            <!-- /.col -->
            <div class="col-md-6" style="text-align: center;padding-top:40px;">
              <!-- /.form-group -->
              <div class="form-group">
               
				 <button style="margin:0px !important;" type="submit" class="btn btn-primary margin" id="adddata"  value="save">Submit</button>
			
              
              <!-- /.form-group -->
            </div>
   </form>
    

			<div class="col-md-3">
			
			</div>
            <!-- /.col -->
          </div>
          <!-- /.row -->
		  
        </div>
        <!-- /.box-body -->
        
      </div>
      <!-- /.box -->

      <!-- /.row -->

    </section>
    <!-- /.content -->
       
  
   
 
  </div>
 

  <div class="control-sidebar-bg"></div>

<!-- ./wrapper -->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>


    
<script>
    $(function(){


 
    $('#form1').unbind().on('submit',function(e){
      e.preventDefault();
       
      var data=$('#form1').serialize();
    
      var name=$('input[name=name]');
       var fname=$('input[name=fname]');
        
         var reg=$('input[name=reg]');
         var bform=$('input[name=bform]');
          var fcnic=$('input[name=fcnic]');
           var foccupation=$('select[name=foccupation]');
            
              var dob=$('input[name=dob]');
              
                var contact=$('input[name=contact]');
                 var address=$('input[name=address]');
                  var status=$('select[name=status]')
  
       var household_income=$('select[name=household_income]');
        var mother_income=$('select[name=mother_income]');
         var father_income=$('select[name=father_income]');
         var mother_education=$('select[name=mother_education]');
          var mother_profession=$('select[name=mother_profession]');
          var father_education=$('select[name=father_education]');
           var job_type=$('select[name=job_type]');
            var no_of_children=$('input[name=no_of_children]');
              var mcnic=$('input[name=mcnic]');
               var gcnic=$('input[name=gcnic]');
                var gname=$('input[name=gname]');
                
                  var religion=$('input[name=religion]');

                   var nationality=$('input[name=nationality]');
                var admission_date=$('input[name=admission_date]');
                 var class_id=$('select[name=class_id]');
                  var section_id=$('select[name=section_id]');
                     
                var gender=$('select[name=gender]');
                 var previous_school=$('input[name=previous_school]');
                  var inclusive=$('select[name=inclusive]');
                  









      var url=$('#form1').attr('action');

      var r='';
   

      if(household_income.val()==''){
        household_income.addClass('is-invalid');
 
      }
      else{
       household_income.removeClass('is-invalid');
             r+='1';

      }

if(gender.val()==''){
        gender.addClass('is-invalid');
 
      }
      else{
       gender.removeClass('is-invalid');
             r+='1';

      }

      if(mother_income.val()==''){

        mother_income.addClass('is-invalid');
      }
      else{
        mother_income.removeClass('is-invalid');
             r+='1';

      }

      if(father_income.val()==''){
        father_income.addClass('is-invalid');
      }
      else{
        father_income.removeClass('is-invalid');
             r+='1';

      }


      if(mother_profession.val()==''){
        mother_profession.addClass('is-invalid');
      }
      else{
        mother_profession.removeClass('is-invalid');
             r+='1';

      }

      if(mother_education.val()==''){
        mother_education.addClass('is-invalid');
      }
      else{
        mother_education.removeClass('is-invalid');
             r+='1';

      }

      if(father_education.val()==''){
        father_education.addClass('is-invalid');
      }
      else{
        father_education.removeClass('is-invalid');
             r+='1';

      }

      if(job_type.val()==''){
        job_type.addClass('is-invalid');
      }
      else{
        job_type.removeClass('is-invalid');
             r+='1';

      }

      if(no_of_children.val()==''){
        no_of_children.addClass('is-invalid');
      }
      else{
        no_of_children.removeClass('is-invalid');
          r+='1';

      }
      if(mcnic.val()==''){
        mcnic.addClass('is-invalid');
      }
      else{
        mcnic.removeClass('is-invalid');
             r+='1';

      }if(gcnic.val()==''){
        gcnic.addClass('is-invalid');
      }
      else{
        gcnic.removeClass('is-invalid');
             r+='1';

      }if(gname.val()==''){
        gname.addClass('is-invalid');
      }
      else{
        gname.removeClass('is-invalid');
             r+='1';

      }if(religion.val()==''){
        religion.addClass('is-invalid');
      }
      else{
        religion.removeClass('is-invalid');
             r+='1';

      }if(nationality.val()==''){
        nationality.addClass('is-invalid');
      }
      else{
        nationality.removeClass('is-invalid');
             r+='1';

      }if(admission_date.val()==''){
        admission_date.addClass('is-invalid');
      }
      else{
        admission_date.removeClass('is-invalid'); 
                    r+='1';

      }if(previous_school.val()==''){
        previous_school.addClass('is-invalid');
      }
      else{
        previous_school.removeClass('is-invalid');
             r+='1';

      }if(section_id.val()==''){
        section_id.addClass('is-invalid');
      }
      else{
        section_id.removeClass('is-invalid');
             r+='1';

      }if(inclusive.val()==''){
        inclusive.addClass('is-invalid');
      }
      else{
        inclusive.removeClass('is-invalid');
             r+='1';

      }if(class_id.val()==''){
        class_id.addClass('is-invalid');
      }
      else{
        class_id.removeClass('is-invalid');
             r+='1';

      }
      if(name.val()==''){
        name.addClass('is-invalid');
      }
      else{
        name.removeClass('is-invalid');
             r+='1';

      }
        if(reg.val()==''){
        reg.addClass('is-invalid');
      }
      else{
        reg.removeClass('is-invalid');
             r+='1';

      }
      if(fname.val()==''){
        fname.addClass('is-invalid');
      }
      else{
        fname.removeClass('is-invalid');
             r+='1';

      }
      
      if(bform.val()==''){
        bform.addClass('is-invalid');
      }
      else{
        bform.removeClass('is-invalid');
             r+='1';

      }
      if(fcnic.val()==''){
       fcnic.addClass('is-invalid');
      }
      else{
        fcnic.removeClass('is-invalid');
             r+='1';

      }
      if(foccupation.val()==''){
        foccupation.addClass('is-invalid');
      }
      else{
         foccupation.removeClass('is-invalid');
             r+='1';

      }
     
      if(dob.val()==''){
        dob.addClass('is-invalid');
      }
      else{
        dob.removeClass('is-invalid');
             r+='1';

      }
      
      if(contact.val()==''){
        contact.addClass('is-invalid');
      }
      else{
        contact.removeClass('is-invalid');
             r+='1';

      }
      if(address.val()==''){
        address.addClass('is-invalid');
      }
      else{
        address.removeClass('is-invalid');
             r+='1';

      }
      if(status.val()==''){
        status.addClass('is-invalid');
 
      }
     
      else{
        status.removeClass('is-invalid');
             r+='1';

      }

      if(r=='11111111111111111111111111111'){
        $.ajax({
          type:'ajax',
            method:'post',
            data:new FormData(this),
            contentType:false,
                    cache:false,

                    processData:false,
            url:url,
            datatype:'json',
            async:false,
            success:function(res){
              
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
classshow();
       function classshow(){
         $.ajax({
       
        method:'post',
        url:'<?php echo site_url('Registration/showclass')?>',
        datatype:'json',
        success:function(res){
          var res=JSON.parse(res);
          var html='';
           html+='<option value="">Select Class</option>';
       $.each(res,function(i,item){
            
            html+='<option value='+item.id+'>'+item.class+'</option>';
          $('.classSelect').html(html);

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
              $('#adddata').attr('disabled','disabled');
            }
            else{
              $('#span1').html('');
              $('#adddata').removeAttr('disabled','disabled');
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