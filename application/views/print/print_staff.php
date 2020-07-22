<body onload="window.print()" >
    
<div class="wrapper" >

<style>
  p{
    font-size: 23px;
  }
  .main-footer{
    display: none;
  }
</style>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="margin-bottom: 20px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
     
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Staff Registration</a></li>
        <li class="active">Add Staff</li>
      </ol>
    </section>


    <!-- Main content -->
    <section class="invoice">
      <!-- title row -->
      <div class="row">
        <div class="col-xs-12">
          <h2 class="page-header">
            
           Al-Hanan Public School
           
          </h2>
        </div>
           
        <div class="col-xs-10 ">
               <address>
         
          <h2>Staff Information</h2> 
    
        <!-- /.col -->
     
       </address>
        </div> 
          <div class="col-xs-2">
               <address>
         
        <image id=img class=img width=100px height=100px />
    
        <!-- /.col -->
     
       </address>
        </div>
</div>
        <!-- /.col -->
   
      <!-- info row -->
    
         <div class="row invoice-info">
        <div class="col-xs-6 ">
               <address>
         
          <p>Name :  <span id=name></span></p> 
    
        <!-- /.col -->
     
       </address>
        </div>
          <div class="col-xs-6 ">
               <address>
         
          <p>Designation:  <span id=designation></span></p> 
    
        <!-- /.col -->
     
       </address>
        </div>

        <div class="col-xs-6">
               <address>
         
          <p>Father Name :  <span id=fathername></span></p> 
    
        <!-- /.col -->
     
       </address>
        </div>
        <div class="col-xs-6 ">
               <address>
         
          <p>Cnic :  <span id=cnic></span></p> 
    
        <!-- /.col -->
     
       </address>
        </div>
         <!-- /.col -->
        <div class="col-xs-6 ">
    
          <p>Contact:  <span id=contact></span></p> 
    
    
        </div>

        <div class="col-xs-6 ">
               <address>
         
          <p>Pay :  <span id=pay></span></p> 
    
        <!-- /.col -->
     
       </address>
        </div>
        <div class="col-xs-6">
               <address>
         
          <p>Date Of Join :  <span id=doj></span></p> 
    
        <!-- /.col -->
     
       </address>
        </div>
        <div class="col-xs-6 ">
               <address>
         
          <p>Gender :  <span id=gender></span></p> 
    
        <!-- /.col -->
     
       </address>
        </div>
        <div class="col-xs-6 ">
               <address>
         
          <p>Qualification :  <span id=qualification></span></p> 
    
        <!-- /.col -->
     
       </address>
        </div>
        <div class="col-xs-6">
               <address>
         
          <p>Degree :  <span id=degree></span></p> 
    
        <!-- /.col -->
     
       </address>
        </div>
        <div class="col-xs-6">
               <address>
         
          <p>Experience :  <span id=experience></span></p> 
    
        <!-- /.col -->
     
       </address>
        </div>
       
        <!-- /.col -->
        <div class="col-xs-6 ">
           
          <address>
            
          <p>Address :  <span id=address></span></p> 
    
        <!-- /.col -->
     
            
          </address>
        </div>
 <div class="col-xs-6 ">
               <address>
         
          <p>Subject being taught :  <span id=subject></span></p> 
    
        <!-- /.col -->
     
       </address>
        </div>
           <div class="col-xs-6 ">
           
          <address>
            
          <p>Class being taught :  <span id=class></span></p> 
    
        <!-- /.col -->
     
            
          </address>
        </div>
           <div class="col-xs-6 ">
           
          <address>
            
          <p>Section being taught :  <span id=section></span></p> 
    
        <!-- /.col -->
     
            
          </address>
        </div>
       
        <!-- /.col -->
      </div>
      <!-- /.row -->

   
  
    </section>
 </div>
</div>
</body>
    <!-- /.content -->
   


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
   
    <script>
     
    $(function(){
      showPrice();

      
		//function
		function showPrice(){

   
  
			$.ajax({
				type: 'ajax',
        method:'post',
 
				url:'<?php echo site_url('Registration/print_staff_detail')?>',
		async:false,
				datatype: 'json',
				success: function(data){
            var res=JSON.parse(data);
        $.each(res,function(i,item){

          $('.img').attr('src','<?php echo base_url('uploads/')?>'+item.image+'');
        
$('#section').html(item.section);
$('#class').html(item.class);
$('#subject').html(item.subject);

$('#address').html(item.address);
$('#experience').html(item.experience);
$('#degree').html(item.degree);
$('#qualification').html(item.qualification);
$('#gender').html(item.gender);
$('#doj').html(item.date_of_joining);
$('#pay').html(item.pay);

$('#contact').html(item.contact);
$('#cnic').html(item.cnic);
$('#fathername').html(item.fathername);
$('#designation').html(item.designation);
$('#name').html(item.name);



});
      
		}
         

});

    }
    }); 

</script>