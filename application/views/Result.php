
<div class="container-fluid  text-white pt-5" style="background: #1667B9">
	<div class="container "><div class="row pt-5">
		<div class=col-12>
		
		<br></div>
		
</div>

	</div></div>

	<div class="container   pb-5 ">
<h1 class="py-5 text-center" >Check Your Result</h1>
			<div class=row>
				<div class=col-lg-6 style="margin: 0 auto">
<span id=warning style="color: red"></span>
				<div class="input-group mb-3 ">

  <input type="text" class="form-control border border-primary search1" name=name1 placeholder="Enter Registeration no/Bform" style=border-radius:0px;>  <div class="input-group-append ">
     <a  class="submit btn btn-outline-primary "  style=border-radius:0px;><i class="fa fa-search text-primary mt-0  px-2 " > </i></a>
  </div>		</div>
				</div>
				</div>
			</div>

        <script src="https://ajax.googleapis.com/ajax/libs/jquer3y/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
  $(function(){
  	
    $('.submit').unbind().click(function(){
    	 var s_id=$('.search1').val();

    	 $.ajax({
type:'post',
data:{'s_id':s_id},
url:'<?php echo site_url('Result/resultcheck1')?>',
datatype:'json',
success:function(res){
	 alert(res);
	var res=JSON.parse(res);

if(res.length==0){
$('#warning').html('Registeration No doesnt Exist');
}
else{
	
   window.location.href = "<?php echo site_url('Result/Resultcard')?>/"+ s_id; 
}


}


    	 })
   


      });    

});
</script>