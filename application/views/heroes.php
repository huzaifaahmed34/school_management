
<div class="container-fluid text-white py-5" style="background: #1667B9">
	<div class="container "><div class="row pt-5">
		<div class=col-12>
		<h1 class="py-5">Our Achivers</h1>
		<br></div>
		<div class="col-12 mt-n5">
		<p>Home / Our Achivers</p>
</div>
</div>

	</div></div>

	<div class="container mt-5 pt-5 pb-5 ">
			<div class=row>
				<?php foreach ($result as $row) {
					?>
				
				<div class="col-lg-3 sector px-0">
					<img width=100% height=300px src="<?php echo base_url('uploads/'.$row->image)?>">
					<div class=overlayhero>

					</div>
					<div class="texthero">
						<?php echo $row->name.'<br>Position :'.$row->position.'<br>Class :'.$row->class;?>
					</div>

				</div>
			<?php }
			?>

				</div>
			</div>


