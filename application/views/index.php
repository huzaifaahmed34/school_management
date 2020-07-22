<html>
<head>
	

</head>
<body>
<div class="main">
<div class=header>
	


<div id="carousel-example-2" class="carousel slide carousel-fade " data-ride="carousel">

  <div class="carousel-inner " role="listbox">
  	<?php $check=0;
  	foreach($result as $row){ 
  		if($check<1){?>
  	   <div class="carousel-item active haha">
      <div class="view">
        <img class="d-block w-100" src="<?php echo base_url('uploads/'.$row->image) ?>"
          alt="First slide">
        <div class="mask rgba-black-light"></div>
      </div>
       <div class="view">
      <div class="carousel-caption caro">
     <h1 class="responsive display-2"><?php echo $row->title?></h1><p style="font-size: 30px;"> <?php echo $row->post?></p>
      </div>
    </div></div>
  	<?php } else{?>
    <div class="carousel-item  haha">
      <div class="view">
        <img class="d-block w-100" src="<?php echo base_url('uploads/'.$row->image) ?>"
          alt="First slide">
        <div class="mask rgba-black-light"></div>
      </div>
       <div class="view">
      <div class="carousel-caption caro">
     <h1 class="responsive display-2"><?php echo $row->title?> </h1><p style="font-size: 30px;"> <?php echo $row->post?> </p>
       
      </div>
    </div></div>
 <?php 
}
 $check++;
  }
 ?>
</div>
 
  </div>
  <!--/.Slides-->
  <!--Controls-->
  <a class="carousel-control-prev n1" href="#carousel-example-2" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon "  aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next n1" href="#carousel-example-2" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
  <!--/.Controls-->
</div>
<!--/.Carousel Wrapper-->




<div class="container cont-1 pt-4  mt-n4 rounded ">
	<div class=row>

		<div class="col-lg-6 col-sm-12 mb-4 ">
			<div class=container>
				<div class="row">
					<div class="col-3">
						<img src=<?php echo base_url()?>assets/img/amjad.jpg width="100%" class="rounded-circle"  >
					</div>

					<div class="col-9">
						<h3>Principle</h3>
						<p>
				" Welcome to Al Hayat Foundation Model  High School, a highly recognized educational network known across the country for upholding a tradition of  "
			</p>
			
					</div>
				</div>
			</div>
		</div>
			
		<div class="col-lg-6 col-sm-12 mb-4">
				<div class=container>
				<div class="row">
					<div class="col-3">
						<img class=rounded-circle src=<?php echo base_url()?>assets/img/amjad.jpg width="100%"  >
					</div>

					<div class="col-9 ">
						<h3>Vice Principle</h3>
						<p>
		Al Hayat Foundation Model  High School has achieved to become country’s largest quality educational network in the private sector over the past ...</p>
			
					</div>
				</div>
			</div>
	</div>
</div>

	</div>

<div class="container cont-2 mb-5" >
	<div class="row mt-5">
		<div class="col-lg-4 mb-4">
			
			<h4>ABOUT <span style="color:#1666B9">AL Hayat</span></h4>
			<div class=hrdiv>
				<hr width="70px" class="ml-0 hr">

			<hr width="25px" class=" hr1 rounded">
		</div>
			<p>The inception of one of the best schools in Pakistan in 2006, laid the foundation of the Al Hayat with the aim of academic excellence at all levels for the purpose of shaping the future of its students. Over the span of almost 13 years, it has successfully emerged as the largest educational system in Pakistan, with over 2300 students nationwide. It has firmly evolved in a wide range of educational, technological, media and communicational institutes.</p>
			<button class="btn">Read More</button>

		</div>
		<div class="col-lg-4 col-sm-12 mb-4">
			<h4>WHY <span style="color:#1666B9">Al Hayat</span></h4>
			<div class=hrdiv>
				<hr width="70px" class="ml-0 hr">

			<hr width="25px" class=" hr1 rounded">
		</div>
		<img src="<?php echo base_url()?>assets/img/08.jpg" style="height:200px" width="350px">
		</div>
		<div class="col-lg-4 col-sm-12 mb-4">
			<h4>OUR HEROICS</h4>
			<div class=hrdiv>
				<hr width="70px" class="ml-0 hr">

			<hr width="25px" class=" hr1 rounded">

		</div>
		<div class="container-fluid ">
			<div class="row mt-4" > <?php
					foreach($result1 as $row){ 
						?>
				<div class=col-4  style="margin-bottom: 10px;">
		<a href="<?php echo site_url('Main/Heroes')?>"><img class="border rounded-circle" src="<?php echo base_url('uploads/'.$row->image)?>" width=100% height=100px ></a>
	</div>
<?php }?>

</div></div>
	</div>
</div>

	<div class="container cont-3">
		<div class="row">
		<div class="col-lg-3 col-sm-12 cont-3-1 mb-5  " >
			<h2 class="text-light ml-4 mt-5">Events</h2>
			<button class="btn btn-outline-light ml-4">All Events <i class=" fa fa-angle-right "></i></button>
		</div>
		<div class="col-lg-3 col-sm-12 mb-3">
			<a href="">
			<img src="<?php echo base_url()?>assets/img/2.png"  width="100%" height="334px"></a>
			<div class=overlay>
			</div>
			<div class=text>
				<h4> Al Hayat Bahawalnagar</h4> 

			</div>
			<div class="t1">
				 <i class=" fa fa-angle-right "></i>
			</div>
		</div>

		<div class="col-lg-3 col-sm-12">
			<a href="">
			<img src="<?php echo base_url()?>assets/img/3.png" width="100%"  height="355px"></a>
			<div class=overlay>
			</div>
			<div class=text>
				<h4> Mehfil-e-Milad by Al Hayat</h4> 

			</div>
			<div class="t1">
				 <i class=" fa fa-angle-right "></i>
			</div>
		</div>

		<div class="col-lg-3 col-sm-12">
			<a href="">
			<img src=<?php echo base_url()?>assets/img/4.jpg width="100%" height="342px"></a>
			<div class=overlay>
			</div>
			<div class=text>
				<h4> Annual Prize Distribution by Al Hayat</h4> 

			</div>
			<div class="t1">
				 <i class=" fa fa-angle-right "></i>
			</div> 
		</div>
	</div></div>
<div class="container cont-4" >
	<div class="row mb-3 mt-4">
	<div class="col-lg-12 col-sm-12">
		<h4>OUR <span style="color:#1666B9">NEWS</span></h4>

		<div class=hrdiv>
				<hr width="70px" class="ml-0 hr">

			<hr width="25px" class=" hr1 rounded">
		</div></div>
	</div>
	<div class="row pb-5">
	<div class="col-lg-4 col-sm-12 mb-4">
		<div class="card" style="width: 100%;">
  <img src="<?php echo base_url()?>assets/img/1.png" class="card-img-top" alt="...">
  <div class="card-body">
  <div class="container-fluid px-0" >
  	<div class="row">
  		<div class="col-6">
    <img class="card-title" src=<?php echo base_url()?>assets/img/d.png style="height:80px" width="100px"><br>
    Al Hayat</div>
    <div class="col-6 mt-1">
    <li class="price-red "><span> 24, Sep 2018</span><div class="base"></div></li></div>
</div></div>
    <p class="card-text pb-4 mt-3">
    	<span >Al Hayat Foundation turned...</span>
Description: Al Hayat Foundationcelebrates another year of excellence as the organization has displayed marvelous...</p>
  </div>
</div>
		</div>
	<div class="col-lg-4 col-sm-12 mb-4">
			<div class="card" style="width: 100%;">
  <img src="<?php echo base_url()?>assets/img/4.png" class="card-img-top" alt="...">
  <div class="card-body">
  <div class="container-fluid px-0" >
  	<div class="row">
  		<div class="col-6">
    <img class="card-title" src=<?php echo base_url()?>assets/img/d.png style="height:80px" width="100px"><br>
    Al Hayat</div>
    <div class="col-6 mt-1">
    <li class="price-red "><span> 24, Sep 2019</span><div class="base"></div></li></div>
</div></div>
    <p class="card-text pb-4 mt-3">
    	<span >Al Hayat Foundation stands...</span>
Description: The largest quality educational network keeps on extending its level of excellence and thrives to...</p>
  </div>
</div>
	</div>
	<div class="col-lg-4 col-sm-12 ">
			<div class="card" style="width: 100%;">
  <img src="<?php echo base_url()?>assets/img/5.png" class="card-img-top" alt="...">
  <div class="card-body">
  <div class="container-fluid px-0" >
  	<div class="row">
  		<div class="col-6">
    <img class="card-title" src=<?php echo base_url()?>assets/img/d.png style="height:80px" width="100px"><br>
    Al Hayat</div>
    <div class="col-6 mt-1">
    <li class="price-red "><span> 24, Sep 2019</span><div class="base"></div></li></div>
</div></div>
    <p class="card-text pb-4 mt-3">
    	<span >Al Hayat students illumined the culture...</span>
Description: The legacy of making students a never ending barrel of intellect and facing the world...</p>
  </div>
</div>
	</div>
	</div>
	<div class="row mb-5 pb-5">
		<button class="btn view px-5 py-3 ">VIEW ALL</button>
	</div>
</div>


<div class="container-fluid bg-dark text-light pb-5 ">
	<div class="container cont-5 text-center pb-3 " >
		<div class="row">
	 <?php


					foreach($result2 as $row){ 
						?>
		<div class="col-lg-3 col-sm-12">
			<h2><?php echo $row->c2?></h2>
			<div class="hrdiv "> 
				<hr width="70px" style="margin-left: auto!important" class="ml-0 hr">

			<hr width="25px" style="margin-left: auto!important" class=" hr1 rounded">
		</div>
			<p>TOTAL STUDENTS</p>
		</div>
		<div class="col-lg-3 col-sm-12">
			<h2><?php echo $row->c1?></h2>
			<div class=hrdiv>
				<hr width="70px"   style="margin-left: auto!important" class="ml-0 hr">

			<hr width="25px"  style="margin-left: auto!important"  class=" hr1 rounded">
		</div>
			<p>CURRENT STUDENTS</p>
		</div>
		<div class=col-lg-3>
			<h2><?php echo $row->c?></h2>
			<div class=hrdiv>
				<hr width="70px"  style="margin-left: auto!important"  class="ml-0 hr">

			<hr width="25px"  style="margin-left: auto!important" class=" hr1 rounded">
		</div>
			<p>ALUMNI</p>
		</div>

		<div class=col-lg-3>
			<h2>2017</h2>
			<div class=hrdiv>
				<hr width="70px" class="ml-0 hr"  style="margin-left: auto!important">

			<hr width="25px" class=" hr1 rounded"  style="margin-left: auto!important">
		</div>
			<p>FOUNDING YEAR</p>
		</div>
	<?php }?>
	</div>

</div></div>
<div class="container-fluid bg-light pb-5 ">
	<div class=row>
	
		<div class=" mt-5 pt-4" style="margin: 0 auto;">
			<h2 >OUR<span style="color: #1667B9;"> FORTE</span></h2>
		<div class="hrdiv ml-5" >
				<hr width="70px"   class="ml-0 hr">

			<hr width="25px"   class=" hr1 rounded ml-4">
		</div>
		</div>
	</div>
<!--Carousel Wrapper-->
<div id="multi-item-example" class="carousel slide carousel-multi-item bg-light pt-5 " data-ride="carousel">

  

  <!--Indicators-->
  <ol class="carousel-indicators " style="top:100%;">
    <li data-target="#multi-item-example text-dark " id=b data-slide-to="0" class="active"></li>
    <li data-target="#multi-item-example " id=b data-slide-to="1"></li>
   
  </ol>
  <!--/.Indicators-->

  <!--Slides-->
  <div class="carousel-inner a2" role="listbox">

    <!--First slide-->
    <div class="carousel-item active">
    	<div class="container .cont-6">
<div class="row">
      <div class="col-4 px-0">
        <div class="card mb-2">
          <img class="card-img-top"
            src="<?php echo base_url()?>assets/img/b.jpg"
            alt="Card image cap">
          <div class="card-body mt-4 mb-3">
        <h5> <a href="" class="text-dark">Scholarships and Fee Concessions for all</a></h5>
            <p class="card-text"> Scholarships and Fee Concessions for all Punjab Group of Colleges strives to achieve high literacy rate by supporting parents to educate their children so that no deserving person is deprived...</p>
            <a class="btn btn-outline-dark">View Details</a>
          </div>
        </div>
      </div>

      <div class="col-4 px-0">
        <div class="card mb-2">
          <img class="card-img-top"
            src="<?php echo base_url()?>assets/img/f.jpg"
            alt="Card image cap">
           <div class="card-body mt-4 mb-3">
        <h5> <a href="" class="text-dark">Scholarships and Fee Concessions for all</a></h5>
            <p class="card-text"> Scholarships and Fee Concessions for all Students strives to achieve high literacy rate by supporting parents to educate their children so that no deserving person is deprived...</p>
            <a class="btn btn-outline-dark">View Details</a>
          </div>
        </div>
      </div>


      <div class="col-4 px-0">
        <div class="card mb-2">
          <img class="card-img-top"
            src="<?php echo base_url()?>assets/img/d.jpg"
            alt="Card image cap">
        <div class="card-body mt-4 mb-3">
        <h5> <a href="" class="text-dark">Scholarships and Fee Concessions for all</a></h5>
            <p class="card-text"> Scholarships and&nbsp; Fee Concessions for all Students strives to achieve high literacy rate by supporting parents to educate their children so that no deserving person is deprived...</p>
            <a class="btn btn-outline-dark">View Details</a>
          </div>
        </div>
      </div>


    </div></div>
    <!--/.First slide-->
</div>
    <!--Second slide-->
    <div class="carousel-item">
    		<div class="container">
<div class=row>
      <div class="col-4 px-0">
        <div class="card mb-2">
          <img class="card-img-top"
            src="<?php echo base_url()?>assets/img/e.jpg" alt="Card image cap">
         <div class="card-body mt-4 mb-3">
        <h5> <a href="" class="text-dark">Scholarships and Fee Concessions for all</a></h5>
            <p class="card-text"> Scholarships and Fee Concessions for all students strives to achieve high literacy rate by supporting parents to educate their children so that no deserving person is deprived...</p>
            <a class="btn btn-outline-dark">View Details</a>
          </div>
        </div>
      </div>

      <div class="col-4 px-0">
        <div class="card mb-2">
          <img class="card-img-top"
            src="<?php echo base_url()?>assets/img/f.jpg" alt="Card image cap">
           <div class="card-body mt-4 mb-3">
        <h5> <a href="" class="text-dark">Scholarships and Fee Concessions for all</a></h5>
            <p class="card-text"> Scholarships and&nbsp; Fee Concessions for all Students strives to achieve high literacy rate by supporting parents to educate their children so that no deserving person is deprived...</p>
            <a class="btn btn-outline-dark">View Details</a>
          </div>
        </div>
      </div>

      <div class="col-4 px-0">
        <div class="card mb-2">
          <img class="card-img-top"
            src="<?php echo base_url()?>assets/img/g.jpg" alt="Card image cap">
          
           <div class="card-body mt-4 mb-3">
        <h5> <a href="" class="text-dark">Scholarships and Fee Concessions for all</a></h5>
            <p class="card-text"> Scholarships and&nbsp; Fee Concessions for all students strives to achieve high literacy rate by supporting parents to educate their children so that no deserving person is deprived...</p>
            <a class="btn btn-outline-dark">View Details</a>
          </div>
        </div>
      </div>
</div>
      </div>

    </div>
    <!--/.Second slide-->

 
  </div>
  <!--/.Slides-->
</div>
</div>
<!--/.Carousel Wrapper-->




<div class="container-fluid bg-dark text-white">
	<div class="container pt-5" style="max-width: 1170px!important">
		<div class="row text-center mt-2 mb-4" >
			<div class=col-12>
	<h2>Al Hayat <span style="color: #1667B9;">AFTERNOON</span> PROGRAMMES</h2>
		<div class=hrdiv>
				<hr width="70px"   style="margin-left: auto!important" class="ml-0 hr">

			<hr width="25px"  style="margin-left: auto!important"  class=" hr1 rounded">
		</div>
</div></div>
<DIV class=row>
	<div class="col-lg-6 mb-5" id=para1>
		<p>
			Limited financial resources? Work or other commitments? No time for morning academic programs? Do not worry! We have the best solution to all these problems! “Al Hayat afternoon programmes” -Combining Low tuition with premium education Al Hayat afternoon programs is a golden opportunity to pursue your education with limited financial resources and other commitements. Moreover, there is no point of paying expensive tuition, when you can get all of Al Hayat innovation and excellence in HALF PRICE!Here at Al Hayat we provide to a chance to take your study your way. You live in your world and groom in ours. Therefore, if, morning study doesn’t suit your pocket, lifestyle, work commitments or personal circumstances, take a look at our Afternoon program because Quality education plus Affordability is our hallmark!
		</p>
	</div>
	<div class="col-lg-6 mb-5 pb-4">
		<img src="<?php echo base_url()?>assets/img/a.jpg" width="100%">
	</div>
</DIV>
	</div>
</div>

<div class="container mt-5 cont-6" style="max-width: 1170px!important" >
		<div class="row text-center mt-2 mb-4" >
			<div class=col-12>
	<h2>OUR<span style="color: #1667B9;"> ACADEMICS</span></h2>
		<div class=hrdiv>
				<hr width="70px"   style="margin-left: auto!important" class="ml-0 hr">

			<hr width="25px"  style="margin-left: auto!important"  class=" hr1 rounded">
		</div>
</div></div>
	<div class=row>
		<div class="col-lg-4 mt-4">
			<Div class="bg-light pl-3 pt-3 pb-4  ">
			<h5>Islah e Hayat</h5>
<a href="">F.Sc. Pre-Medical</a><br>
<a href="">F.Sc. Pre-Engineering</a><br>
<a href="">F.A General Science</a><br>
<a href="">I.C.S</a><br>
<a href="">F.A</a><br>
<a href="">I.Com.</a></Div>
		</div>
		<div class="col-lg-4 mt-4">
			<Div class="bg-light pl-3 pt-3 pb-4 a1">
				<h5>AL HAYAT IQRA</h5>
				<a href="">B.Sc.</a><br>
				<a href="">B.Com.</a><br>
				<a href="">B.A</a><br>

		</Div></div>
		<div class="col-lg-4 mt-4">
			<Div class="bg-light pl-3 pt-3 pb-4 a1">
				<h5>AL HAYAT Tech


				</h5>
				<a href="">MBA (2 Years)</a><br>
				<a href="">MBA (3.5 Years)</a><br>
				<a href="">BBA (4 Years)</a><br>

		</Div></div>
		<div class="col-lg-4 mt-4">
			<Div class="bg-light pl-3 pt-3 pb-4 a1">
				<h5>Al Hayat College
					</h5>
					<a href="">Sales & Marketing</a><br>
					<a href="">Retail Management</a><br>
					<a href="">Export Marketing</a><br>
					<a href="">IT Management</a><br>

		</Div>
	</div>
		<div class="col-lg-4 mt-4">
			<Div class="bg-light pl-3 pt-3 pb-4 a1">
				<h5>Al Hayat Foundation

</h5>
<a href="">BSCS (4 Years)</a><br>
<a href="">MSc IT</a><br>

		</Div>
	</div>

	<div class="col-lg-4 mt-4">
			<Div class="bg-light pl-3 pt-3 pb-4 a1">
				<h4>Al Hayat School
</h4>
<a href="">M.Com</a><br>

		</Div>
	</div>


		
	</div>
	</div>




<div class="container mt-5 mb-5">
	<div class=row>
		<div class=col-2>
			<img src=<?php echo base_url()?>assets/img/d.png style="height:80px" width="100px">
		</div>
		<div class=col-2>
			<img src=<?php echo base_url()?>assets/img/d.png style="height:80px" width="100px">
		</div>
	<div class=col-2>
			<img src=<?php echo base_url()?>assets/img/d.png style="height:80px" width="100px">
		</div>
	<div class=col-2>
			<img src=<?php echo base_url()?>assets/img/d.png style="height:80px" width="100px">
		</div>
		<div class=col-2>
			<img src=<?php echo base_url()?>assets/img/d.png style="height:80px" width="100px">
		</div>
		<div class=col-lg-2>
			<img src=<?php echo base_url()?>assets/img/d.png style="height:80px" width="100px">
		</div>
	</div>
</div>


<!---footer-->

</div>	

</body>
</html>