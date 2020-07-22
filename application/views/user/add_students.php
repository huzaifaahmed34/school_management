<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
    Student Registration
      </h1>
      <ol class="breadcrumb">
        <li><a href="<?php echo base_url(); ?>"><i class="fas fa-arrow-alt-circle-right"></i> Home</a></li>
         <li><a href="#"> Student Registration </a></li>
        <li class="active">Add Students</li>
      </ol>
    </section>
      

       
    <!-- Main content -->
    <section class="content">
  
      <!-- SELECT2 EXAMPLE -->
      <div class="box box-success">
        <div class="box-header with-border">

          <h3 class="box-title">Add Students</h3>
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
               
				 <button style="margin:0px !important;" type="submit" class="btn btn-primary margin" id="adddata"  value="save">Save</button>
				 <a href="<?php echo site_url('Registration/Student_registration');?>" style="margin:0px !important;" type="button" class="btn btn-primary margin">View Students</a>
              
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

           household_income.attr('data-toggle','household_income');
household_income.attr('title','This Field is Missing');
       $('[data-toggle="household_income"]').tooltip(); 
household_income.trigger('mouseover');  
  
        household_income.attr('style','border:1px solid #862e2e!important');
 
      }
      else{
        event.stopPropagation('mouseover');
         $('[data-toggle="household_income"]').tooltip('disable'); 

       household_income.removeAttr('style','border:1px solid #862e2e!important');
             r+='1';

      }

if(gender.val()==''){


           gender.attr('data-toggle','gender');
gender.attr('title','This Field is Missing');
       $('[data-toggle="gender"]').tooltip(); 
gender.trigger('mouseover');  
        gender.attr('style','border:1px solid #862e2e!important');
 
      }
      else{
          event.stopPropagation('mouseover');
         $('[data-toggle="gender"]').tooltip('disable'); 

       gender.removeAttr('style','border:1px solid #862e2e!important');
             r+='1';

      }

      if(mother_income.val()==''){
           mother_income.attr('data-toggle','mother_income');
mother_income.attr('title','This Field is Missing',);
       $('[data-toggle="mother_income"]').tooltip(); 
mother_income.trigger('mouseover');  

        mother_income.attr('style','border:1px solid #862e2e!important');
      }
      else{
           event.stopPropagation('mouseover');
         $('[data-toggle="mother_income"]').tooltip('disable'); 


        mother_income.removeAttr('style','border:1px solid #862e2e!important');
             r+='1';

      }

      if(father_income.val()==''){
           father_income.attr('data-toggle','father_income');
father_income.attr('title','This Field is Missing');
       $('[data-toggle="father_income"]').tooltip(); 
father_income.trigger('mouseover');  

        father_income.attr('style','border:1px solid #862e2e!important');
      }
      else{
           event.stopPropagation('mouseover');
         $('[data-toggle="father_income"]').tooltip('disable'); 

        father_income.removeAttr('style','border:1px solid #862e2e!important');
             r+='1';

      }


      if(mother_profession.val()==''){
           mother_profession.attr('data-toggle','mother_profession');
mother_profession.attr('title','This Field is Missing');
       $('[data-toggle="mother_profession"]').tooltip(); 
mother_profession.trigger('mouseover');  
 
        mother_profession.attr('style','border:1px solid #862e2e!important');
      }
      else{
          event.stopPropagation('mouseover');
         $('[data-toggle="mother_profession"]').tooltip('disable'); 


        mother_profession.removeAttr('style','border:1px solid #862e2e!important');
             r+='1';

      }

      if(mother_education.val()==''){
           mother_education.attr('data-toggle','mother_education');
mother_education.attr('title','This Field is Missing');
       $('[data-toggle="mother_education"]').tooltip(); 
mother_education.trigger('mouseover');  
  
        mother_education.attr('style','border:1px solid #862e2e!important');
      }
      else{
         event.stopPropagation('mouseover');
         $('[data-toggle="mother_education"]').tooltip('disable'); 

        mother_education.removeAttr('style','border:1px solid #862e2e!important');
             r+='1';

      }

      if(father_education.val()==''){
           father_education.attr('data-toggle','father_education');
father_education.attr('title','This Field is Missing');
       $('[data-toggle="father_education"]').tooltip(); 
father_education.trigger('mouseover');  
 
        father_education.attr('style','border:1px solid #862e2e!important');
      }
      else{
          event.stopPropagation('mouseover');
         $('[data-toggle="father_education"]').tooltip('disable'); 

        father_education.removeAttr('style','border:1px solid #862e2e!important');
             r+='1';

      }

      if(job_type.val()==''){
           job_type.attr('data-toggle','job_type');
job_type.attr('title','This Field is Missing');
       $('[data-toggle="job_type"]').tooltip(); 
job_type.trigger('mouseover');  
  
        job_type.attr('style','border:1px solid #862e2e!important');
      }
      else{ event.stopPropagation('mouseover');
         $('[data-toggle="job_type"]').tooltip('disable'); 


        job_type.removeAttr('style','border:1px solid #862e2e!important');
             r+='1';

      }

      if(no_of_children.val()==''){
           no_of_children.attr('data-toggle','no_of_children');
no_of_children.attr('title','This Field is Missing');
       $('[data-toggle="no_of_children"]').tooltip(); 
no_of_children.trigger('mouseover');  
  
        no_of_children.parent().addClass('has-error');
      }
      else{
         event.stopPropagation('mouseover');
         $('[data-toggle="no_of_children"]').tooltip('disable'); 

        no_of_children.parent().removeClass('has-error');
          r+='1';

      }
      if(mcnic.val()==''){
           mcnic.attr('data-toggle','mcnic');
mcnic.attr('title','This Field is Missing');
       $('[data-toggle="mcnic"]').tooltip(); 
mcnic.trigger('mouseover');  
   

        mcnic.parent().addClass('has-error');
      }
      else{
        event.stopPropagation('mouseover');
         $('[data-toggle="mcnic"]').tooltip('disable'); 
        mcnic.parent().removeClass('has-error');
             r+='1';

      }

      if(gcnic.val()==''){
           gcnic.attr('data-toggle','gcnic');
gcnic.attr('title','This Field is Missing');
       $('[data-toggle="gcnic"]').tooltip(); 
gcnic.trigger('mouseover');  

        gcnic.parent().addClass('has-error');
      }
      else{

           event.stopPropagation('mouseover');
         $('[data-toggle="gcnic"]').tooltip('disable'); 

gcnic.parent().removeClass('has-error');
             r+='1';

      }

      if(gname.val()==''){
           gname.attr('data-toggle','gname');
gname.attr('title','This Field is Missing');
       $('[data-toggle="gname"]').tooltip(); 
gname.trigger('mouseover');  
  
        gname.parent().addClass('has-error');
      }
      else{
   gname.removeAttr('title','This Field is Missing');
         $('[data-toggle="gname"]').tooltip('disable'); 

        gname.parent().removeClass('has-error');
             gname.trigger('click'); 

             r+='1';

      }
      if(religion.val()==''){
           religion.attr('data-toggle','religion');
religion.attr('title','This Field is Missing');
       $('[data-toggle="religion"]').tooltip(); 
religion.trigger('mouseover');  
  
        religion.parent().addClass('has-error');
      }
      else{
         event.stopPropagation('mouseover');
         $('[data-toggle="religion"]').tooltip('disable'); 

        religion.parent().removeClass('has-error');
             r+='1';

      }
      if(nationality.val()==''){
           nationality.attr('data-toggle','nationality');
nationality.attr('title','This Field is Missing');
       $('[data-toggle="nationality"]').tooltip(); 
nationality.trigger('mouseover');  
  
        nationality.parent().addClass('has-error');
      }
      else{
         event.stopPropagation('mouseover');
         $('[data-toggle="nationality"]').tooltip('disable'); 

        nationality.parent().removeClass('has-error');
             r+='1';

      }
      if(admission_date.val()==''){
           admission_date.attr('data-toggle','admission_date');
admission_date.attr('title','This Field is Missing');
       $('[data-toggle="admission_date"]').tooltip(); 
admission_date.trigger('mouseover');  


        admission_date.parent().addClass('has-error');
      }
      else{
           event.stopPropagation('mouseover');
         $('[data-toggle="admission_date"]').tooltip('disable'); 
        admission_date.parent().removeClass('has-error');
             r+='1';

      }
      if(previous_school.val()==''){
           previous_school.attr('data-toggle','previous_school');
previous_school.attr('title','This Field is Missing');
       $('[data-toggle="previous_school"]').tooltip(); 
previous_school.trigger('mouseover');  
 
        previous_school.parent().addClass('has-error');
      }
      else{
          event.stopPropagation('mouseover');
         $('[data-toggle="previous_school"]').tooltip('disable'); 

        previous_school.parent().removeClass('has-error');
             r+='1';

      }
      if(section_id.val()==''){
           section_id.attr('data-toggle','section_id');
section_id.attr('title','This Field is Missing');
       $('[data-toggle="section_id"]').tooltip(); 
section_id.trigger('mouseover');  
  
        section_id.attr('style','border:1px solid #862e2e!important');
      }
      else{
         event.stopPropagation('mouseover');
         $('[data-toggle="section_id"]').tooltip('disable'); 

        section_id.removeAttr('style','border:1px solid #862e2e!important');
             r+='1';

      }
      if(inclusive.val()==''){
           inclusive.attr('data-toggle','inclusive');
inclusive.attr('title','This Field is Missing');
       $('[data-toggle="inclusive"]').tooltip(); 
inclusive.trigger('mouseover');  
  

        inclusive.attr('style','border:1px solid #862e2e!important');
      }
      else{
         event.stopPropagation('mouseover');
         $('[data-toggle="inclusive"]').tooltip('disable'); 
        inclusive.removeAttr('style','border:1px solid #862e2e!important');
             r+='1';

      }if(class_id.val()==''){
           class_id.attr('data-toggle','class_id');
class_id.attr('title','This Field is Missing');
       $('[data-toggle="class_id"]').tooltip(); 
class_id.trigger('mouseover');  
  

        class_id.attr('style','border:1px solid #862e2e!important');
      }
      else{
         event.stopPropagation('mouseover');
         $('[data-toggle="class_id"]').tooltip('disable'); 
        class_id.removeAttr('style','border:1px solid #862e2e!important');
             r+='1';

      }
      if(name.val()==''){
           name.attr('data-toggle','name');
name.attr('title','This Field is Missing');
       $('[data-toggle="name"]').tooltip(); 
name.trigger('mouseover');  

        name.parent().addClass('has-error');
      }
      else{
           event.stopPropagation('mouseover');
         $('[data-toggle="name"]').tooltip('disable'); 

        name.parent().removeClass('has-error');
             r+='1';

      }
        if(reg.val()==''){
           reg.attr('data-toggle','reg');
reg.attr('title','This Field is Missing');
       $('[data-toggle="reg"]').tooltip(); 
reg.trigger('mouseover');  

        reg.parent().addClass('has-error');
      }
      else{
           event.stopPropagation('mouseover');
         $('[data-toggle="reg"]').tooltip('disable'); 

        reg.parent().removeClass('has-error');
             r+='1';

      }
      if(fname.val()==''){
           fname.attr('data-toggle','fname');
fname.attr('title','This Field is Missing');
       $('[data-toggle="fname"]').tooltip(); 
fname.trigger('mouseover');  

        fname.parent().addClass('has-error');
      }
      else{
           event.stopPropagation('mouseover');
         $('[data-toggle="fname"]').tooltip('disable'); 

        fname.parent().removeClass('has-error');
             r+='1';

      }
      
      if(bform.val()==''){
           bform.attr('data-toggle','bform');
bform.attr('title','This Field is Missing');
       $('[data-toggle="bform"]').tooltip(); 
bform.trigger('mouseover');  
 
        bform.parent().addClass('has-error');
      }
      else{
          event.stopPropagation('mouseover');
         $('[data-toggle="bform"]').tooltip('disable'); 

        bform.parent().removeClass('has-error');
             r+='1';

      }
      if(fcnic.val()==''){
           fcnic.attr('data-toggle','fcnic');
fcnic.attr('title','This Field is Missing');
       $('[data-toggle="fcnic"]').tooltip(); 
fcnic.trigger('mouseover');  
   
       fcnic.parent().addClass('has-error');
      }
      else{
        event.stopPropagation('mouseover');
         $('[data-toggle="fcnic"]').tooltip('disable'); 

        fcnic.parent().removeClass('has-error');
             r+='1';

      }
      if(foccupation.val()==''){
           foccupation.attr('data-toggle','foccupation');
foccupation.attr('title','This Field is Missing');
       $('[data-toggle="foccupation"]').tooltip(); 
foccupation.trigger('mouseover');  
  
        foccupation.attr('style','border:1px solid #862e2e!important');
      }
      else{
         event.stopPropagation('mouseover');
         $('[data-toggle="foccupation"]').tooltip('disable'); 

         foccupation.removeAttr('style','border:1px solid #862e2e!important');
             r+='1';

      }
     
      if(dob.val()==''){
           dob.attr('data-toggle','dob');
dob.attr('title','This Field is Missing');
       $('[data-toggle="dob"]').tooltip(); 
dob.trigger('mouseover');  
  
        dob.parent().addClass('has-error');
      }
      else{
         event.stopPropagation('mouseover');
         $('[data-toggle="dob"]').tooltip('disable'); 

        dob.parent().removeClass('has-error');
             r+='1';

      }
      
      if(contact.val()==''){
           contact.attr('data-toggle','contact');
contact.attr('title','This Field is Missing');
       $('[data-toggle="contact"]').tooltip(); 
contact.trigger('mouseover');  
  
        contact.parent().addClass('has-error');
      }
      else{
         event.stopPropagation('mouseover');
         $('[data-toggle="contact"]').tooltip('disable'); 

        contact.parent().removeClass('has-error');
             r+='1';

      }
      if(address.val()==''){
           address.attr('data-toggle','address');
address.attr('title','This Field is Missing');
       $('[data-toggle="address"]').tooltip(); 
address.trigger('mouseover');  
   
        address.parent().addClass('has-error');
      }
      else{
        event.stopPropagation('mouseover');
         $('[data-toggle="address"]').tooltip('disable'); 

        address.parent().removeClass('has-error');
             r+='1';

      }
      if(status.val()==''){
           status.attr('data-toggle','status');
status.attr('title','This Field is Missing');
       $('[data-toggle="status"]').tooltip(); 
status.trigger('mouseover');  
  
        status.attr('style','border:1px solid #862e2e!important');
 
      }
     
      else{
         event.stopPropagation('mouseover');
         $('[data-toggle="status"]').tooltip('disable'); 

        status.removeAttr('style','border:1px solid #862e2e!important');
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