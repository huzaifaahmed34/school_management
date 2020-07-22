<style type="text/css">
	p{
		font-size: 20px;
		font-style: italic;
	}
	strong{
		color: #1667B9;
	}
</style>
<div class="container-fluid  text-white pt-5" style="background: #1667B9">
	<div class="container "><div class="row pt-5">
		<div class=col-12>
		
		<br></div>
		
</div>

	</div></div>

	<div class="container   pb-5 ">
		<div class=col-lg-6 style="margin: 0 auto">
<h1 class=" text-center mb-5 mt-5" style="color: #1667B9;">Check Your Attendance</h1>
				<div class="input-group mt-5 mb-5">

  <input type="text" class="form-control border border-primary " name=name1 placeholder="Enter Registeration no" style=border-radius:0px;>  <div class="input-group-append ">

     <button  class="submit btn btn-outline-primary " name=submi type=submit style=border-radius:0px;><i class="fa fa-search text-primary mt-0  px-2 " > </i></button>

  </div>		</div>
				</div>

			<div class=row>
				 <div class="col-lg-6">
          <p>Certified Student Name : <strong id=name> </strong></p></div>
          <div class="col-lg-6">
          	<p>
          	SO/DO :  <strong id=fathername></strong>
         </p>
 
        </div>
       <div class="col-lg-6">
          	
          <p>Date :  <strong> <?php echo date('1-M-Y').' - '.date('d-M-Y');?> </strong>
          </p>
      </div>
           <div class="col-lg-6">
           	<p>
   Class : <strong id=class>
              </strong>
 </p>
 
        </div>
         <div class="col-lg-12">
           	<p>
  Total Present : <strong id=present>
              </strong>
 </p>
 
        </div>

 <div class="col-lg-12">
           	<p>
  Total Absent : <strong id=absent>
              </strong>
 </p>
 
        </div>
         <div class="col-lg-12">
           	<p>
  Total Leave : <strong id=leave>
              </strong>
 </p>
 
        </div>				
				</div>
				<table class="showdata table table-striped table-hovered ">

				</table>
			</div>



<script type="text/javascript">
  $(function(){
$('.submit').click(function(){
	var data=$('input[name=name1]').val();

$.ajax({
	type:'post',
		data:{'data':data},
	url:'<?php echo site_url('Main/attendance_show')?>',
	dataType:'json',

	success:function(res){
			var html='';
			var i;
		 
			html+='<tr style="background:#1667B9;color:white;"><th>S#</th><th>Date</th><th>Attendance</th></tr>';
	
var s=0;
var present=0;
var absent=0;
var leave=0;
          for(i=0;i<res.length;i++){
          	 $('#name').html(res[i].name);
          	  $('#fathername').html(res[i].fathername);
          	   $('#class').html(res[i].class);
s++;
if(res[i].attendance=='Present'){
	present++;
}
if(res[i].attendance=='Absent'){
	absent++;
}
if(res[i].attendance=='Leave'){
	leave++;
}
					html+='<tr><td>'+s+'</td><td>'+res[i].Date+'</td><td>'+res[i].attendance+'</td></tr>';
			};
			$('.showdata').html(html);
			$('#present').html(present);
			$('#absent').html(absent);
			$('#leave').html(leave);


	}


});
});
  });

</script>