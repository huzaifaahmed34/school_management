 <div class="content-wrapper">
     <!-- Content Header (Page header) -->
     <section class="content-header">
         <h1>
             Attendance
         </h1>
         <ol class="breadcrumb">
             <li><a href="<?php echo base_url() ?>"><i class="fas fa-arrow-alt-circle-right"></i> Home</a></li>
             <li><a href="#">Attendance</a></li>


         </ol>
     </section>

     <!-- Main content -->
     <section class="content ">
         <div class="row">
             <div class="col-xs-12">

                 <div class="box box-success" style="height: 100%;">
                     <div class="box-header with-border">
                         <h3 class="box-title">Attendance</h3>
                     </div>
                     <div class="box-body">
                         <div class="alert alert-success" style="display: none;"></div>
                         <div class="alert alert-danger" style="display: none;"></div>

                         <form id=form1>
                            
                             <table class="table  table-striped table-hover ">
                                 <thead>
                                     <tr style="background:black;color:white">
                                         <th>id</th>
                                         <th>Name</th>
                                         <th>FatherName</th>
                                         <th>Contact</th>
                                      
                                         <th>Attendance</th>


                                     </tr>
                                 </thead>

                                 <tbody id="showdata">

                                 </tbody>


                             </table>

                         </form>
                     </div>




                     <!-- Trigger the modal with a button -->


                     <!-- Modal -->
                     <div id="myModal" class="modal fade" role="dialog">
                         <div class="modal-dialog">

                             <!-- Modal content-->
                             <div class="modal-content">
                                 <div class="modal-header">
                                     <button  style="margin-top:-15px!important;" type="button" class="close" data-dismiss="modal">&times;</button>
                                     <h4 class="modal-title">View Attendance Report</h4>
                                 </div>
                                 <div class="modal-body">
                                     <div>
                                         <div style="float:left; width: 87%;" class="divi1">
                                             <input type=date name=date class=form-control></div>
                                         <div style="float:left;width: 13%;" class="divi2">
                                             <button type=button class="btn btn-primary check" style="   padding-left: 19px;padding-right: 19px;padding-bottom: 7px;border-radius: 0;">Check</button>
                                         </div>
                                     </div>
                                     <div style="margin-top:50px">
                                         <table class="table table-striped">
                                             <thead style="background-color: black;color:white; ">
                                                 <tr>
                                                     <td>Name</td>
                                                     <td>Fathername</td>
                                                     <td>Reg No</td>
                                                     <td>Attendance</td>
                                                 </tr>
                                             </thead>
                                             <tbody class=showattendance>

                                             </tbody>
                                         </table>

                                     </div>
                                 </div>
                                 <div class="modal-footer">
                                     <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                 </div>
                             </div>

                         </div>
                     </div>








                     <div class="low text-right">

                         <button class="btn  insert" style="margin-right:10px;margin-bottom: 10px;background-color:#0092DF;color: white ">Take Attendance</button>
                         <button class="btn  report" style="margin-right:10px;margin-bottom: 10px;background-color:#0092DF;color: white ">Attendance Report</button>
                     </div>
                 </div>
             </div>
         </div>
     </section>
 </div>


 <?php 
$section_id=$this->uri->segment(3);
$class_id=$this->uri->segment(4);

        ?>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
 <script type="text/javascript">
     $(function() {
         showdata();

         function showdata() {
             var s_id = <?php echo $section_id ?>;

             var c_id = <?php echo $class_id ?>;
             $.ajax({
                 type: 'ajax',
                 method: 'post',
                 url: '<?php echo site_url('Attendance/show')?>',
                 datatype: 'json',
                 data: {
                     's_id': s_id,
                     'c_id': c_id
                 },
                 success: function(res) {
                     var html = '';
                    var c=0;
                     var res = JSON.parse(res);

                     var s = 0;
                     $.each(res, function(i, item) {
                       
                         s++;
                         c++;
                         html += '<tr><td>' +
                             c + '</td><td>' +
                             item.name + '</td><td>' +
                             item.fathername + '</td><input type=hidden value=' + item.id + ' name=st_id' + s + '><input type=hidden value=' + item.class_id + ' name=class_id' + s + '><input type=hidden value=' + item.section_id + ' name=sec_id' + s + '><input type=hidden value=' + item.contact + ' name=contect' + s + '><td>' +
                             item.b_form + '</td><td>Present&nbsp;&nbsp;&nbsp;<input type=radio checked="checked" value=Present name=attandance' + s + '> &nbsp;&nbsp;&nbsp;Absent&nbsp;&nbsp;&nbsp; <input type=radio value=Absent name=attandance' + s + '>&nbsp;&nbsp;&nbsp; Leave &nbsp;&nbsp;<input type=radio value=Leave name=attandance' + s + '></td></tr>';


                     });
                     $('#showdata').html(html);
                 },
                 error: function() {
                     alert('no data found');
                 }


             });

         };

         $('.insert').click(function() {
             var data = $('#form1').serialize();
             var sid = $('input[name=sec_id1]').val();
             var cid = $('input[name=class_id1]').val();

             $.ajax({
                 method: 'post',
                 url: '<?php echo site_url('Attendance/insert')?>',
                 datatype: 'json',
                 data: data,
                 success: function(res) {
                     console.log(res);
                     if (res == 5) {
                         $('.alert-danger').html('Attendance already Taken').fadeIn().delay(4000).fadeOut('slow');
                     } else {
                         $('.alert-success').html('Attendance Taken Successfully').fadeIn().delay(4000).fadeOut('slow');
                     }
                 },
                 error: function() {
                     $('.alert-danger').html('Attendance taken unsuccesfully').fadeIn().delay(4000).fadeOut('slow');
                 }
             });
         });
         $('.report').click(function() {
             $('#myModal').modal('show');
         });

         $('.check').click(function() {
             var date = $('input[name=date]').val();

             var section_id = <?php echo $section_id ?>;
             var class_id = <?php echo $class_id ?>;
             $.ajax({
                 type: 'post',
                 url: '<?php echo site_url('Attendance/showreport')?>',
                 datatype: 'json',
                 data: {
                     'date': date,
                     's': section_id,
                     'c': class_id
                 },
                 success: function(res) {
                     var html = '';
                     res = JSON.parse(res);

                     $.each(res, function(i, item) {

                         html += '<tr><td>' + item.name + '</td><td>' + item.fathername + '</td><td>' + item.reg_no + '</td><td>' + item.attendance + '</td></tr>';

                     });
                     $('.showattendance').html(html);
                 },

             });
         });

     });

 </script>
