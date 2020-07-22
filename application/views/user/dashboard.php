
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">


  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <?php echo $_SESSION['group_title'];?>
        <small>(Admin Area)</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fas fa-arrow-alt-circle-right"></i> Home</a></li>
        <li class="active">Admin Area</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Info boxes -->
      <div class="row">
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon clr-green ani"><i class="fas fa-box"></i></span>
   <?php


          foreach($result2 as $row){ 
            ?>

            <div class="info-box-content">
              <span class="info-box-text">Total Students</span>
              <span class="info-box-number"><small><?php echo $row->c2?></small></span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon clr-green ani"><i class="fa fa-users" aria-hidden="true"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Current Students</span>
              <span class="info-box-number"><?php echo $row->c1?></span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->

        <!-- fix for small devices only -->
        <div class="clearfix visible-sm-block"></div>

        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon clr-green ani"><i class="fa fa-line-chart"></i></span>
 
            <div class="info-box-content">
              <span class="info-box-text">Alumni</span>
              <span class="info-box-number"><?php echo $row->c?>  <small></small></span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon clr-green ani"><i class="fas fa-users"></i></span>


            <div class="info-box-content">
              <span class="info-box-text">Total staff</span>
              <span class="info-box-number"><?php echo $row->c3?> </span>
            </div><?php }?>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->

      
      
      <div class="row">
        <div class="col-md-12">
          <div class="box box-success">
            <div class="box-header with-border">

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <div class="row">
                  
                
                <div class="col-md-12">
                    <p class="text-center">
                    <strong>Yearly Result Report</strong>
                  </p>
                  
                  <div class="chart">
                    <!-- Sales Chart Canvas -->
                   
                    <div id="monthly_chart_div"></div>
                    
                    <!-- Styles -->
<style>
body {
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
}

#monthly_chart_div {
  width: 100%;
  height: 500px;
}

</style>


<!-- Resources -->
<script src="https://www.amcharts.com/lib/4/core.js"></script>
<script src="https://www.amcharts.com/lib/4/charts.js"></script>
<script src="https://www.amcharts.com/lib/4/themes/animated.js"></script>


<!-- Chart code -->
<script>
am4core.ready(function() {

// Themes begin
am4core.useTheme(am4themes_animated);
// Themes end

// Create chart instance
var chart = am4core.create("monthly_chart_div", am4charts.XYChart);

// Add data
chart.data = [{
  "year": "2007",
  "value1": 1691,
  "value2": 737
}, {
  "year": "2008",
  "value1": 1098,
  "value2": 680,
  "value3": 910
}, {
  "year": "2009",
  "value1": 975,
  "value2": 664,
  "value3": 670
}, {
  "year": "2010",
  "value1": 1246,
  "value2": 648,
  "value3": 930
}, {
  "year": "2011",
  "value1": 1218,
  "value2": 637,
  "value3": 1010
}, {
  "year": "2012",
  "value1": 1913,
  "value2": 133,
  "value3": 1770
}, {
  "year": "2013",
  "value1": 1299,
  "value2": 621,
  "value3": 820
}, {
  "year": "2014",
  "value1": 1110,
  "value2": 10,
  "value3": 1050
}, {
  "year": "2015",
  "value1": 765,
  "value2": 232,
  "value3": 650
}, {
  "year": "2016",
  "value1": 1145,
  "value2": 219,
  "value3": 780
}, {
  "year": "2017",
  "value1": 1163,
  "value2": 201,
  "value3": 700
}, {
  "year": "2018",
  "value1": 1780,
  "value2": 85,
  "value3": 1470
}, {
  "year": "2019",
  "value1": 1580,
  "value2": 285
}];

// Create axes
var categoryAxis = chart.xAxes.push(new am4charts.CategoryAxis());
categoryAxis.dataFields.category = "year";
categoryAxis.renderer.grid.template.disabled = true;
categoryAxis.renderer.minGridDistance = 30;
categoryAxis.startLocation = 0.5;
categoryAxis.endLocation = 0.5;
categoryAxis.renderer.minLabelPosition = 0.05;
categoryAxis.renderer.maxLabelPosition = 0.95;


var categoryAxisTooltip = categoryAxis.tooltip.background;
categoryAxisTooltip.pointerLength = 0;
categoryAxisTooltip.fillOpacity = 0.3;
categoryAxisTooltip.filters.push(new am4core.BlurFilter).blur = 5;
categoryAxis.tooltip.dy = 5;


var valueAxis = chart.yAxes.push(new am4charts.ValueAxis());
valueAxis.renderer.inside = true;
valueAxis.renderer.grid.template.disabled = true;
valueAxis.renderer.minLabelPosition = 0.05;
valueAxis.renderer.maxLabelPosition = 0.95;

var valueAxisTooltip = valueAxis.tooltip.background;
valueAxisTooltip.pointerLength = 0;
valueAxisTooltip.fillOpacity = 0.3;
valueAxisTooltip.filters.push(new am4core.BlurFilter).blur = 5;


// Create series
var series1 = chart.series.push(new am4charts.LineSeries());
series1.dataFields.categoryX = "year";
series1.dataFields.valueY = "value1";
series1.fillOpacity = 1;
series1.stacked = true;

var blur1 = new am4core.BlurFilter();
blur1.blur = 20;
series1.filters.push(blur1);

var series2 = chart.series.push(new am4charts.LineSeries());
series2.dataFields.categoryX = "year";
series2.dataFields.valueY = "value2";
series2.fillOpacity = 1;
series2.stacked = true;

var blur2 = new am4core.BlurFilter();
blur2.blur = 20;
series2.filters.push(blur2);

var series3 = chart.series.push(new am4charts.LineSeries());
series3.dataFields.categoryX = "year";
series3.dataFields.valueY = "value3";
series3.stroke = am4core.color("#fff");
series3.strokeWidth = 2;
series3.strokeDasharray = "3,3";
series3.tooltipText = "{categoryX}\n---\n[bold font-size: 20]{valueY}[/]";
series3.tooltip.pointerOrientation = "vertical";
series3.tooltip.label.textAlign = "middle";

var bullet3 = series3.bullets.push(new am4charts.CircleBullet())
bullet3.circle.radius = 8;
bullet3.fill = chart.colors.getIndex(3);
bullet3.stroke = am4core.color("#fff");
bullet3.strokeWidth = 3;

var bullet3hover = bullet3.states.create("hover");
bullet3hover.properties.scale = 1.2;

var shadow3 = new am4core.DropShadowFilter();
series3.filters.push(shadow3);

chart.cursor = new am4charts.XYCursor();
chart.cursor.lineX.disabled = true;
chart.cursor.lineY.disabled = true;

}); // end am4core.ready()
</script>


                    
                  </div>
                  <!-- /.chart-responsive -->
                </div>
                <!-- /.col -->
              
               
                
                <!-- /.col -->
              </div>
              <!-- /.row -->
            </div>
            
            <!-- /.box-footer -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->

      <!-- Main row -->
      <div class="row">
        <!-- Left col -->
   
        <div class="col-md-12">
        
         
          <!-- PRODUCT LIST -->
          <div class="box box-success">
            <div class="box-header with-border">
              <h3 class="box-title">Quick Links</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
                
                <div class="row">
                    <div class="col-lg-4">
                        <a href="<?php echo base_url('index.php/Registration/student_registration')?>">
                        <div class="info-box">
                            <span class="info-box-icon clr-green ani"><i class="fas fa-plus"></i></span>
                            <div class="info-box-content">
                              <span class="info-box-text" title="Add Student"><b>Add <br> Student</b></span>
                            </div>
                        </div> 
                        </a>
                    </div>


                    <div class="col-lg-4">
                        <a href="<?php echo base_url('index.php/Registration/Staff_registration')?>">
                        <div class="info-box">
                            <span class="info-box-icon clr-green ani"><i class="fa fa-plus"></i></span>
                            <div class="info-box-content">
                              <span class="info-box-text" title="Transactions"><b>Add Staff</b></span>
                            </div>
                        </div> 
                        </a>
                    </div>

                    <div class="col-lg-4">
                        <a href="<?php echo base_url('index.php/Payroll/Pay_slips')?>">
                        <div class="info-box">
                            <span class="info-box-icon clr-green ani"><i class="far fa-file-powerpoint"></i></span>
                            <div class="info-box-content">
                              <span class="info-box-text" title="Payslips"><b>Payslips</b></span>
                            </div>
                        </div> 
                        </a>
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-lg-4">
                        <a href="<?php echo base_url('index.php/Attendance/roznamcha')?>">
                        <div class="info-box">
                            <span class="info-box-icon clr-green ani"><i class="fas fa-file-contract"></i></span>
                            <div class="info-box-content">
                              <span class="info-box-text" title="View Todays Attendance Report"><b>Student Roznamcha</b></span>
                            </div>
                        </div> 
                        </a>
                    </div>    <div class="col-lg-4">
                          <a href="<?php echo base_url('index.php/Attendance/tch_roznamcha')?>">
                        <div class="info-box">
                            <span class="info-box-icon clr-green ani"><i class="fas fa-file-contract"></i></span>
                            <div class="info-box-content">
                              <span class="info-box-text" title="View Todays Attendance Report"><b>Staff Roznamcha</b></span>
                            </div>
                        </div> 
                        </a>
                      </div>
                    
                   

                    <div class="col-lg-4">
                        <a href="<?php echo base_url('index.php/Setup/classView')?>">
                        <div class="info-box">
                            <span class="info-box-icon clr-green ani"><i class="fa fa-plus"></i></span>
                            <div class="info-box-content">
                              <span class="info-box-text" title="Transactions"><b>Add Class</b></span>
                            </div>
                        </div> 
                        </a>
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-lg-4">
                        <a href="<?php echo base_url('index.php/Setup/section_View')?>">
                        <div class="info-box">
                            <span class="info-box-icon clr-green ani"><i class="fa fa-plus"></i></span>
                            <div class="info-box-content">
                              <span class="info-box-text" title="Add Company"><b>Add Section</b></span>
                            </div>
                        </div> 
                        </a>
                    </div>
 <div class="col-lg-4">
                        <a href="<?php echo base_url('index.php/Setup/post')?>">
                        <div class="info-box">
                            <span class="info-box-icon clr-green ani"><i class="fa fa-plus"></i></span>
                            <div class="info-box-content">
                              <span class="info-box-text" title="View Invoices"><b>Add Post</b></span>
                            </div>
                        </div> 
                        </a>
                    </div>
                
           
                </div>
              
            </div>
            <!-- /.box-body -->
            
            <!-- /.box-footer -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper --><script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>