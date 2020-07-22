<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
    Staff Registration
      </h1>
      <ol class="breadcrumb">
        <li><a href="<?php echo base_url(); ?>"><i class="fas fa-arrow-alt-circle-right"></i> Home</a></li>
         <li><a href="#"> Staff Registration </a></li>
        <li class="active">Add Staff</li>
      </ol>
    </section>
      

       
    <!-- Main content -->
    <section class="content">
  
      <!-- SELECT2 EXAMPLE -->
      <div class="box box-success">
        <div class="box-header with-border">

          <h3 class="box-title">Add Staff</h3>
        </div>
            
   <div class="alert alert-success" style="display: none;"></div>
   
   <div class="alert alert-danger" style="display: none;"></div>
        <!-- /.box-header -->
          <form id="form1" method="post" action="<?php echo site_url('Registration/Staff_Classadd')?>">
        <div class="box-body">
      
      <div class="row">
        <div class=col-lg-12>
          <h3>Basic Staff Information</h3>
        </div>
           <div class="col-lg-6">
                            
                            <label class=" col-form-label">Name</label>
                              <input type="text" name="name"  class="form-control" placeholder="Enter  Name" >
                            </div>
                            <div class="col-lg-6">
                            
                            <label class=" col-form-label">Father /Husband Name</label>
                              <input type="text" name="fname"  class="form-control" placeholder="Enter Father Name" >
                            </div>
                            <div class="col-lg-6">
                            
                            <label class=" col-form-label">Cnic</label>
                              <input type="text" name="cnic"  class="form-control" placeholder="Enter Cnic"  >
                            </div>
                             <div class="col-lg-6">
                            
                            <label class=" col-form-label">Designation</label>
                              <input type="text" name="designation"  class="form-control" placeholder="Enter Designation"   >
                            </div>
                           
                            <div class="col-lg-6">
                            
                            <label class=" col-form-label">Pay</label>
                              <input type="text" name="pay"  class="form-control" placeholder="Enter Pay" >
                            </div>
                         
                            <div class="col-lg-6">
                            
                            <label class=" col-form-label">Staff Contact</label>
                              <input type="text" name="contact"  class="form-control" placeholder="Enter Contact No" >
                            </div>



                            <div class="col-lg-6">
                            
                            <label class=" col-form-label">Date Of Joining</label>
                              <input type="date" name="doj"  class="form-control"  >
                            </div>
                            <div class="col-lg-6">
                           
                        
                            
                            <label class=" col-form-label">Address</label>
                              <input type="text" name="address"  class="form-control" placeholder="Enter Address" >
                            </div>
                              <div class="col-lg-6">
                           
                        
                            
                            <label class=" col-form-label">Father/Husband Cnic</label>
                              <input type="text" name="father_cnic"  class="form-control" placeholder="Enter Father Cnic" >
                            </div>
                             <div class="col-lg-6">
                         
                            <label class=" col-form-label">Image</label>
                              <input type="file" name="image"  class="form-control"  >
                            </div>
                                <div class="col-lg-6">
                    <label class="col-form-label">Gender</label>
                               <select name="gender"  class="form-control"  >
                                <option value="">Select any one</option>
                                 <option value="male">Male</option>
                                  <option value="female">Female</option>
                              </select>
                            </div>
  
      
                         <div class=col-lg-12>
          <h3>Staff Qualification And Experience</h3>
        </div>
                             <div class="col-lg-6">
                            
                            <label class=" col-form-label">Qualification</label>
                              <select name="qual" value="" class="form-control qual"  ></select>
                            </div>
                                 <div class="col-lg-6">
                            
                            <label class="col-form-label">Degree</label>
                               <select name="degree" value=""  class="form-control degree"  >
                                 <option value="">Select any one</option>
                              </select>
                            </div>
                             <div class="col-lg-6">
                            
                            <label class="col-form-label">Experience</label>
                               <select name="experience" class="form-control "  >
                                <option value="">Select</option>
                                <option value="Less Than 1 Year">Less Than 1 Year</option>
                                <option value="1 Year">1 Year</option>
                                 <option value="2 Year">2 Year</option>
                                  <option value="3 Year">3 Year</option>
                                   <option value="4 Year">4 Year</option>
                                    <option value="5 Year">5 Year</option>
                                     <option value="More Than 5 Year">More Than 5 Year</option>

                              </select>
                            </div>
                                                    <div class="col-lg-6">
                            
                            <label class=" col-form-label"> Class Being Taught </label>
                              <select name="class_id"  class="form-control classSelect"  >
                                <option>Select any one</option>
                                <?php 
                                
                                ?>
                              </select>
                            </div>
                                 <div class="col-lg-6 ">
                            
                            <label class=" col-form-label">Section Being Taught</label>
                                <select name="section_id"  class="form-control sectionSelect"  >
                                <option value="">Select any one</option>
                              </select>
                            </div>
                             <div class="col-lg-6 ">
                            
                            <label class=" col-form-label">Subject Being Taught</label>
                                 <input type="text" name="subject"  class="form-control"  >
                            </div>

                            <div class="col-lg-6 ">
                            
                            <label class=" col-form-label">Past Experience (Year)</label>
                                 <input type="number" name="past_experience"  class="form-control"  >
                            </div>
                               <div class="col-lg-6 ">
                            
                            <label class=" col-form-label">Status</label>
                                  <select name="status"  class="form-control "  >
                                <option value="">Select any one</option>
                                <option value="1">Active</option>
                                <option value="0">Inactive</option>
                              </select>
                            </div>

                               
                               
                                
                               
          
   
   
 
</div>   
    <div class="row">
        <div class="col-md-3">
      
      </div>
 

        
            
            <!-- /.col -->
            <div class="col-md-6" style="text-align: center;padding-top:40px;">
              <!-- /.form-group -->
              <div class="form-group">
               
         <button style="margin:0px !important;" type="submit" class="btn btn-primary margin" value="save" id=addata>Save and Print</button>
           <button style="margin:0px !important;" type="submit" class="btn btn-primary margin"  value="save">Save </button>
       
         <a href="<?php echo site_url('Registration/Staff_registration');?>" style="margin:0px !important;" type="button" class="btn btn-primary margin">View Staff</a>
              
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
    
    var doj=$('input[name=doj]');
       var experience=$('select[name=experience]');
        var class_id=$('select[name=class_id]');
         var section_id=$('select[name=section_id]');
          var status=$('select[name=status]');
          var past_experience=$('input[name=past_experience]');

      var name=$('input[name=name]');
       var fname=$('input[name=fname]');
        var qual=$('select[name=qual]');
            var degree=$('select[name=degree]');
         var cnic=$('input[name=cnic]');
          var pay=$('input[name=pay]');
           var designation=$('input[name=designation]');
      
                 var gender=$('select[name=gender]');
      
              
                 var fcnic=$('input[name=father_cnic]');
          
             
                var contact=$('input[name=contact]');
                 var address=$('input[name=address]');

  var subject=$('input[name=subject]');
                    var designation=$('input[name=designation]');
                 

      var url=$('#form1').attr('action');

      var r='';
      



 if(designation.val()==''){
  designation.attr('data-toggle','designation');
designation.attr('title','This Field is Missing');
       $('[data-toggle="designation"]').tooltip(); 
designation.trigger('mouseover');  

        designation.attr('style','border:1px solid #862e2e!important');
      }
      else{
      event.stopPropagation('mouseover');
    $('[data-toggle="designation"]').tooltip('disable'); 
        designation.removeAttr('style','border:1px solid #862e2e!important');
             r+='1';

      }
    

 if(doj.val()==''){

   doj.attr('data-toggle','doj');
doj.attr('title','This Field is Missing');
       $('[data-toggle="doj"]').tooltip(); 
doj.trigger('mouseover');  
  
        doj.parent().addClass('has-error');
      }
      else{ event.stopPropagation('mouseover');
         $('[data-toggle="doj"]').tooltip('disable'); 
        doj.parent().removeClass('has-error');
             r+='1';

      }
       if(experience.val()==''){

   experience.attr('data-toggle','experience');
experience.attr('title','This Field is Missing');
       $('[data-toggle="experience"]').tooltip(); 
experience.trigger('mouseover');  

        experience.attr('style','border:1px solid #862e2e!important');
      }
      else{ event.stopPropagation('mouseover');
     $('[data-toggle="experience"]').tooltip('disable'); 
        experience.removeAttr('style','border:1px solid #862e2e!important');
             r+='1';

      }
       if(class_id.val()==''){

   class_id.attr('data-toggle','classid');
class_id.attr('title','This Field is Missing');
       $('[data-toggle="classid"]').tooltip(); 
class_id.trigger('mouseover');  

        class_id.attr('style','border:1px solid #862e2e!important');
      }
      else{ event.stopPropagation('mouseover');
        $('[data-toggle="class_id"]').tooltip('disable'); 
        class_id.removeAttr('style','border:1px solid #862e2e!important');
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
       if(status.val()==''){

   status.attr('data-toggle','status');
status.attr('title','This Field is Missing');
       $('[data-toggle="status"]').tooltip(); 
status.trigger('mouseover');  


        status.attr('style','border:1px solid #862e2e!important');      }
      else{
        event.stopPropagation('mouseover');

     $('[data-toggle="status"]').tooltip('disable'); 
        status.removeAttr('style','border:1px solid #862e2e!important');
             r+='1';


      }
       if(degree.val()==''){


   degree.attr('data-toggle','degree');
degree.attr('title','This Field is Missing');
       $('[data-toggle="degree"]').tooltip(); 
degree.trigger('mouseover');  
        degree.attr('style','border:1px solid #862e2e!important');
      }
      else{ event.stopPropagation('mouseover');


       $('[data-toggle="degree"]').tooltip('degree');
        degree.removeAttr('style','border:1px solid #862e2e!important');
             r+='1';


      }
       if(past_experience.val()==''){

   past_experience.attr('data-toggle','past_experience');
past_experience.attr('title','This Field is Missing');
       $('[data-toggle="past_experience"]').tooltip(); 
past_experience.trigger('mouseover');  

        past_experience.parent().addClass('has-error');
      }
      else{event.stopPropagation('mouseover');


       $('[data-toggle="past_experience"]').tooltip('disable'); 
        past_experience.parent().removeClass('has-error');
             r+='1';

      }
      if(name.val()==''){

   name.attr('data-toggle','name');
name.attr('title','This Field is Missing');
       $('[data-toggle="name"]').tooltip(); 
name.trigger('mouseover');  
 
        name.parent().addClass('has-error');
      }
      else{event.stopPropagation('mouseover');


         $('[data-toggle="name"]').tooltip('disable'); 
        name.parent().removeClass('has-error');
             r+='1';

      }
        if(pay.val()==''){

   pay.attr('data-toggle','pay');
pay.attr('title','This Field is Missing');
       $('[data-toggle="pay"]').tooltip(); 
pay.trigger('mouseover');  
         pay.parent().addClass('has-error');
      }
      else{

        $('[data-toggle="pay"]').tooltip('disable'); 

        pay.parent().removeClass('has-error');
           event.stopPropagation('mouseover');


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
      if(qual.val()==''){

   qual.attr('data-toggle','qual');
qual.attr('title','This Field is Missing');
       $('[data-toggle="qual"]').tooltip(); 
qual.trigger('mouseover');  
 
        qual.attr('style','border:1px solid #862e2e!important');
      }
      else{
         qual.removeAttr('style','border:1px solid #862e2e!important');
         event.stopPropagation('mouseover');
$('[data-toggle="qual"]').tooltip('disable'); 
       
             r+='1';

      }
      if(cnic.val()==''){
        cnic.parent().addClass('has-error');
      cnic.attr('data-toggle','cnic');
cnic.attr('title','This Field is Missing');
       $('[data-toggle="cnic"]').tooltip(); 
cnic.trigger('mouseover');  
  
      }
      else{
event.stopPropagation('mouseover');
$('[data-toggle="cnic"]').tooltip('disable'); 
        cnic.parent().removeClass('has-error');
             r+='1';

      }
      if(fcnic.val()==''){

   fcnic.attr('data-toggle','fcnic');
fcnic.attr('title','This Field is Missing');
       $('[data-toggle="fcnic"]').tooltip(); 
fcnic.trigger('mouseover');  

    fcnic.parent().addClass('has-error');
           
      }
      else{event.stopPropagation('mouseover');
      $('[data-toggle="fcnic"]').tooltip('disable'); 
        fcnic.parent().removeClass('has-error');
             r+='1';

      }
    
     
      if(contact.val()==''){

   contact.attr('data-toggle','contact');
contact.attr('title','This Field is Missing');
       $('[data-toggle="contact"]').tooltip(); 
contact.trigger('mouseover');  

        contact.parent().addClass('has-error');
      }
      else{event.stopPropagation('mouseover');
        $('[data-toggle="contact"]').tooltip('disable');
        event.stopPropagation('mouseover'); 
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
      else{event.stopPropagation('mouseover');
       $('[data-toggle="address"]').tooltip('disable'); 
        address.parent().removeClass('has-error');
             r+='1';

      }

 if(subject.val()==''){

   subject.attr('data-toggle','subject');
subject.attr('title','This Field is Missing');
       $('[data-toggle="subject"]').tooltip(); 
subject.trigger('mouseover');  

        subject.parent().addClass('has-error');
      }
      else{event.stopPropagation('mouseover');
         $('[data-toggle="subject"]').tooltip('disable'); 
        subject.parent().removeClass('has-error');
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
        gender.removeAttr('style','border:1px solid #862e2e!important');event.stopPropagation('mouseover');
         $('[data-toggle="gender"]').tooltip('disable'); 
        
             r+='1';

      }   

      if(r=='111111111111111111'){
  
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
            
                $('#form1')[0].reset();
                $('.alert-success').html('Data Inserted Succesfully').fadeIn().delay(4000).fadeOut('slow');
                

     

            },
            error:function(){
              alert('no');
              $('.alert-danger').html('Data Not Inserted').fadeIn().delay(4000).fadeOut('slow');
            },
          });
     
        
  };
         
            
 
});
     $('#addata').on('click',function(){
              
                 var doj=$('input[name=doj]');
       var experience=$('select[name=experience]');
        var class_id=$('select[name=class_id]');
         var section_id=$('select[name=section_id]');
          var status=$('select[name=status]');
          var past_experience=$('input[name=past_experience]');

      var name=$('input[name=name]');
       var fname=$('input[name=fname]');
        var qual=$('select[name=qual]');
            var degree=$('select[name=degree]');
         var cnic=$('input[name=cnic]');
          var pay=$('input[name=pay]');
           var designation=$('input[name=designation]');
      
                 var gender=$('select[name=gender]');
      
              
                 var fcnic=$('input[name=father_cnic]');
          
             
                var contact=$('input[name=contact]');
                 var address=$('input[name=address]');

  var subject=$('input[name=subject]');
                    var designation=$('input[name=designation]');
                 

      var url=$('#form1').attr('action');

      var r='';
      



 if(designation.val()==''){
  designation.attr('data-toggle','designation');
designation.attr('title','This Field is Missing');
       $('[data-toggle="designation"]').tooltip(); 
designation.trigger('mouseover');  

        designation.attr('style','border:1px solid #862e2e!important');
      }
      else{
      event.stopPropagation('mouseover');
    $('[data-toggle="designation"]').tooltip('disable'); 
        designation.removeAttr('style','border:1px solid #862e2e!important');
             r+='1';

      }
    

 if(doj.val()==''){

   doj.attr('data-toggle','doj');
doj.attr('title','This Field is Missing');
       $('[data-toggle="doj"]').tooltip(); 
doj.trigger('mouseover');  
  
        doj.parent().addClass('has-error');
      }
      else{ event.stopPropagation('mouseover');
         $('[data-toggle="doj"]').tooltip('disable'); 
        doj.parent().removeClass('has-error');
             r+='1';

      }
       if(experience.val()==''){

   experience.attr('data-toggle','experience');
experience.attr('title','This Field is Missing');
       $('[data-toggle="experience"]').tooltip(); 
experience.trigger('mouseover');  

        experience.attr('style','border:1px solid #862e2e!important');
      }
      else{ event.stopPropagation('mouseover');
     $('[data-toggle="experience"]').tooltip('disable'); 
        experience.removeAttr('style','border:1px solid #862e2e!important');
             r+='1';

      }
       if(class_id.val()==''){

   class_id.attr('data-toggle','classid');
class_id.attr('title','This Field is Missing');
       $('[data-toggle="classid"]').tooltip(); 
class_id.trigger('mouseover');  

        class_id.attr('style','border:1px solid #862e2e!important');
      }
      else{ event.stopPropagation('mouseover');
        $('[data-toggle="class_id"]').tooltip('disable'); 
        class_id.removeAttr('style','border:1px solid #862e2e!important');
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
       if(status.val()==''){

   status.attr('data-toggle','status');
status.attr('title','This Field is Missing');
       $('[data-toggle="status"]').tooltip(); 
status.trigger('mouseover');  


        status.attr('style','border:1px solid #862e2e!important');      }
      else{
        event.stopPropagation('mouseover');

     $('[data-toggle="status"]').tooltip('disable'); 
        status.removeAttr('style','border:1px solid #862e2e!important');
             r+='1';


      }
       if(degree.val()==''){


   degree.attr('data-toggle','degree');
degree.attr('title','This Field is Missing');
       $('[data-toggle="degree"]').tooltip(); 
degree.trigger('mouseover');  
        degree.attr('style','border:1px solid #862e2e!important');
      }
      else{ event.stopPropagation('mouseover');


       $('[data-toggle="degree"]').tooltip('degree');
        degree.removeAttr('style','border:1px solid #862e2e!important');
             r+='1';


      }
       if(past_experience.val()==''){

   past_experience.attr('data-toggle','past_experience');
past_experience.attr('title','This Field is Missing');
       $('[data-toggle="past_experience"]').tooltip(); 
past_experience.trigger('mouseover');  

        past_experience.parent().addClass('has-error');
      }
      else{event.stopPropagation('mouseover');


       $('[data-toggle="past_experience"]').tooltip('disable'); 
        past_experience.parent().removeClass('has-error');
             r+='1';

      }
      if(name.val()==''){

   name.attr('data-toggle','name');
name.attr('title','This Field is Missing');
       $('[data-toggle="name"]').tooltip(); 
name.trigger('mouseover');  
 
        name.parent().addClass('has-error');
      }
      else{event.stopPropagation('mouseover');


         $('[data-toggle="name"]').tooltip('disable'); 
        name.parent().removeClass('has-error');
             r+='1';

      }
        if(pay.val()==''){

   pay.attr('data-toggle','pay');
pay.attr('title','This Field is Missing');
       $('[data-toggle="pay"]').tooltip(); 
pay.trigger('mouseover');  
         pay.parent().addClass('has-error');
      }
      else{

        $('[data-toggle="pay"]').tooltip('disable'); 

        pay.parent().removeClass('has-error');
           event.stopPropagation('mouseover');


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
     
      if(cnic.val()==''){
        cnic.parent().addClass('has-error');
      cnic.attr('data-toggle','cnic');
cnic.attr('title','This Field is Missing');
       $('[data-toggle="cnic"]').tooltip(); 
cnic.trigger('mouseover');  
  
      }
      else{
event.stopPropagation('mouseover');
$('[data-toggle="cnic"]').tooltip('disable'); 
        cnic.parent().removeClass('has-error');
             r+='1';

      }


       if(qual.val()==''){

   qual.attr('data-toggle','qual');
qual.attr('title','This Field is Missing');
       $('[data-toggle="qual"]').tooltip(); 
qual.trigger('mouseover');  
 
        qual.attr('style','border:1px solid #862e2e!important');
      }
  
  else{   event.stopPropagation('mouseover');
         qual.removeAttr('style','border:1px solid #862e2e!important');
      
$('[data-toggle="qual"]').tooltip('disable'); 
        qual.parent().removeClass('has-error');
             r+='1';

      }
      if(fcnic.val()==''){

   fcnic.attr('data-toggle','fcnic');
fcnic.attr('title','This Field is Missing');
       $('[data-toggle="fcnic"]').tooltip(); 
fcnic.trigger('mouseover');  

    fcnic.parent().addClass('has-error');
           
      }
      else{event.stopPropagation('mouseover');
      $('[data-toggle="fcnic"]').tooltip('disable'); 
        fcnic.parent().removeClass('has-error');
             r+='1';

      }
    
     
      if(contact.val()==''){

   contact.attr('data-toggle','contact');
contact.attr('title','This Field is Missing');
       $('[data-toggle="contact"]').tooltip(); 
contact.trigger('mouseover');  

        contact.parent().addClass('has-error');
      }
      else{event.stopPropagation('mouseover');
        $('[data-toggle="contact"]').tooltip('disable');
        event.stopPropagation('mouseover'); 
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
      else{event.stopPropagation('mouseover');
       $('[data-toggle="address"]').tooltip('disable'); 
        address.parent().removeClass('has-error');
             r+='1';

      }

 if(subject.val()==''){

   subject.attr('data-toggle','subject');
subject.attr('title','This Field is Missing');
       $('[data-toggle="subject"]').tooltip(); 
subject.trigger('mouseover');  

        subject.parent().addClass('has-error');
      }
      else{event.stopPropagation('mouseover');
         $('[data-toggle="subject"]').tooltip('disable'); 
        subject.parent().removeClass('has-error');
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
        gender.removeAttr('style','border:1px solid #862e2e!important');event.stopPropagation('mouseover');
         $('[data-toggle="gender"]').tooltip('disable'); 
        
             r+='1';

      }   

      if(r=='111111111111111111'){
  
      window.location.href = "<?php echo site_url('Registration/print_staff')?>";}
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
           html+='<option value="">Select Qualification</option>';
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
    
  });





    </script>
 
</body>
</html>
