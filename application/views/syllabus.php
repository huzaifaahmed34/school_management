
<div class="container-fluid  text-white pt-5" style="background: #1667B9">
	<div class="container "><div class="row pt-5">
		<div class=col-12>
		
		<br></div>
		
</div>

	</div></div>

	<div class="container   pb-5 ">
<h1 class="py-5 text-center" >Check Syllabus</h1>
			<div class=row>
						<table class="showdata table">

				</table>
			</div></div>



<script type="text/javascript">
  $(function(){
  	showdata();
function showdata(){

$.ajax({
	type:'post',
		
	url:'<?php echo site_url('Main/syllabus_show')?>',
	datatype:'json',

	success:function(res){
			var html='';
			var i;
			console.log(res);
			html+='<thead style=background:black;color:white;><tr><td>Class</td><td>Syllabus</td></tr></thead>';
	  var res=JSON.parse(res);
          for(i=0;i<res.length;i++){
					html+='<tr><td>'+res[i].class+'</td><td><a href=<?php echo base_url('uploads/')?>'+res[i].syllabus+'> '+res[i].syllabus+'</a></td></tr>';
			};
			$('.showdata').html(html);

	}


});``
};
  });

</script>