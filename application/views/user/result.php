<?php 
$section_id=$this->uri->segment(3);
        $class_id=$this->uri->segment(4);

        ?>
<style type="text/css">
  .modal-footer {
border-top:none!important;


  }
</style>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       Students
      </h1>
      <ol class="breadcrumb">
        <li><a href="<?php echo base_url() ?>"><i class="fas fa-arrow-alt-circle-right"></i> Home</a></li>
        <li><a href="#">Add Result</a></li>
    
        <li class="active">Result</li>
      
       
      </ol>
    </section>

    <!-- Main content -->
    <section class="content " >
      <div class="row">
        <div class="col-xs-12" >
        

          <div class="box box-success" style="height: 100%;">
              <div class="box-header with-border">
                  <h3 class="box-title">Students</h3>
                </div>
                <div class="box-body">
                      <div class="alert alert-success" style="display: none;"></div>  <div class="alert alert-danger" style="display: none;"></div>
        
               <form id=form1> 
         <table  id=example1 class="table  table-striped table-hover dataTable">
              <thead>
                <tr style="background:black;color:white">
              <th>id</th>
                 <th>Name</th>
                 <th>FatherName</th>
                   <th>Reg no</th>   
                   <th>Add Result</th>                  
                
                
                </tr>
                    </thead>
                        
                    <tbody id="showdata">

                    </tbody>
                  

                    </table>
                   
                    </form>
                     </div>
         


<div id="Modal" class="modal fade" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">        
        <h4 class="modal-title">Add Result</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"  style="font-size: 30px;
    margin-top:-29px;"><span aria-hidden="true">&times;</span></button>
      </div>
       <form class="form1" method=post>
      <div class="modal-body">
           <div class=content>
            
          
              <input class=form-control type="hidden" name=class_id value="<?php echo $class_id?>">
               <input class=form-control type="hidden"  name=section_id value="<?php echo $section_id?>">
              <input class=form-control type=hidden name=std_id>
             
               <div class=col-lg-12 style="margin-top: 10px" >
             <span class="warning" style="color: red;"></span>
               </div>
               
               <div class=col-lg-12 style="margin-top: 10px" >
                <label>Student Name</label>
                 <input class=form-control type=text name=std_name readonly>
               </div>
               
             
               
             <div class=col-lg-3 style="margin-top: 10px">
              <label>Urdu</label>
                 <input class=form-control placeholder="Enter Marks Of Urdu" type=text name=urdu>
             </div>
              <div class=col-lg-3 style="margin-top: 10px">
              <label>Total Marks(Urdu)</label>
                 <input class=form-control placeholder="Enter Total Marks Of Urdu" value=100 type=text name=t_urdu>
             </div>
              <div class=col-lg-3 style="margin-top: 10px">
                <label>English</label>
                  <input class=form-control placeholder="Enter marks of english" type=text name=english>
              </div>
               <div class=col-lg-3 style="margin-top: 10px">
              <label>Total Marks(English)</label>
                 <input class=form-control placeholder="Enter Total Marks Of Urdu" value=100 type=text name=t_english>
             </div>
                 <div class=col-lg-3 style="margin-top: 10px">
              <label>Math</label>
                 <input class=form-control placeholder="Enter marks of Math" type=text name=math>
             </div>
              <div class=col-lg-3 style="margin-top: 10px">
              <label>Total Marks(Math)</label>
                 <input class=form-control placeholder="Enter Total Marks Of Urdu" value=100 type=text name=t_math>
             </div>
                 <?php
               
               if($class_id <=2  )
               {
               ?>
               <div class=col-lg-3 style="margin-top: 10px">
              <label>Urdu Oral</label>
                 <input class=form-control placeholder="Enter Marks Of Urdu Oral" type=text name="urdu_oral">
             </div>
              <div class=col-lg-3 style="margin-top: 10px">
              <label>Total Marks(Urdu Oral)</label>
                 <input class=form-control placeholder="Enter Total Marks Of Urdu" value=100 type=text name=t_urdu_oral>
             </div>
              <div class=col-lg-3 style="margin-top: 10px">
                <label>English Oral:</label>
                  <input class=form-control placeholder="Enter marks of english oral" type=text name="english_oral">
              </div>
               <div class=col-lg-3 style="margin-top: 10px">
              <label>Total Marks(English Oral)</label>
                 <input class=form-control placeholder="Enter Total Marks Of Urdu" value=100 type=text name=t_english_oral>
             </div>
                 <div class=col-lg-3 style="margin-top: 10px">
              <label>Math Oral:</label>
                 <input class=form-control placeholder="Enter marks of Math oral" type=text name="math_oral">
             </div>
              <div class=col-lg-3 style="margin-top: 10px">
              <label>Total Marks(Math Oral)</label>
                 <input class=form-control placeholder="Enter Total Marks Of Urdu" value=100 type=text name=t_math_oral>
             </div>
                <div class=col-lg-3 style="margin-top: 10px">
                <label>Nazra</label>
                  <input class=form-control placeholder="Enter marks of islamic study" type=text name="nazra">
              
              </div>
               <div class=col-lg-3 style="margin-top: 10px">
              <label>Total Marks(Nazra)</label>
                 <input class=form-control placeholder="Enter Total Marks Of Urdu" value=100 type=text name=t_nazra>
             </div>
                   <?php
               }
               else if($class_id >=3 AND $class_id < 11){
                    ?>
                      <div class=col-lg-3 style="margin-top: 10px">
                <label>GK:</label>
                  <input class=form-control placeholder="Enter marks of general knowledge" type=text name="gk">
              </div>
               <div class=col-lg-3 style="margin-top: 10px">
              <label>Total Marks(Gk)</label>
                 <input class=form-control placeholder="Enter Total Marks Of Urdu" value=100 type=text name=t_gk>
             </div>
               <?php
               }
                if($class_id >=5 )
                   
               {
               ?>
                <div class=col-lg-3 style="margin-top: 10px">
                <label>Islamic Study</label>
                  <input class=form-control placeholder="Enter marks of islamic study" type=text name="islamic_study">
              </div>
               <div class=col-lg-3 style="margin-top: 10px">
              <label>Total Marks(Islamic Study)</label>
                 <input class=form-control placeholder="Enter Total Marks Of Urdu" value=100 type=text name=t_islamic_study>
             </div>

             <?php
               }
          
               if($class_id >=6)
                   
               {
               ?>
              <div class=col-lg-3 style="margin-top: 10px">
                <label>Pak Study</label>
                  <input class=form-control placeholder="Enter marks of pak study" type=text name=pak_study>
              </div>
               <div class=col-lg-3 style="margin-top: 10px">
              <label>Total Marks(Pak Study)</label>
                 <input class=form-control placeholder="Enter Total Marks Of Urdu" value=100 type=text name=t_pak_study>
             </div>
             <?php
               }
                if($class_id >=8 AND $class_id <=10)
                   
               {
               ?>
               <div class=col-lg-3 style="margin-top: 10px">
              <label>Arabic</label>
                 <input class=form-control placeholder="Enter Marks of Arabic" type=text name=arabic>
             </div>
              <div class=col-lg-3 style="margin-top: 10px">
              <label>Total Marks(Arabic)</label>
                 <input class=form-control placeholder="Enter Total Marks Of Urdu" value=100 type=text name=t_arabic>
             </div>
               <div class=col-lg-3 style="margin-top: 10px">
              <label>Computer</label>
                 <input class=form-control placeholder="Enter Marks of Computer" type=text name=computer>
             </div>
              <div class=col-lg-3 style="margin-top: 10px">
              <label>Total Marks(Computer)</label>
                 <input class=form-control placeholder="Enter Total Marks Of Urdu" value=100 type=text name=t_computer>
             </div>
               <div class=col-lg-3 style="margin-top: 10px">
              <label>Economics/Aggriculture</label>
                 <input class=form-control placeholder="Enter Marks of Home Economics/Aggriculture" type=text name=elective1>
             </div>
              <div class=col-lg-3 style="margin-top: 10px">
              <label>Total Marks(Economics/Agriculture)</label>
                 <input class=form-control placeholder="Enter Total Marks Of Urdu" value=100 type=text name=t_elective1>
             </div>
               <?php
                }
               else
               { if($class_id >=11 AND $class_id <=12)
               {
               ?>
                <div class=col-lg-3 style="margin-top: 10px">
              <label>Physics</label>
                 <input class=form-control placeholder="Enter Marks of Physics" type=text name=physics>
             </div>
               <div class=col-lg-3 style="margin-top: 10px">
              <label>Total Marks(Physics)</label>
                 <input class=form-control placeholder="Enter Total Marks Of Urdu" value=100 type=text name=t_physics>
             </div>
              <div class=col-lg-3 style="margin-top: 10px">
              <label>Chemistry</label>
                 <input class=form-control placeholder="Enter Marks of Chemistry" type=text name=chemistry>
             </div>
               <div class=col-lg-3 style="margin-top: 10px">
              <label>Total Marks(Chemistry)</label>
                 <input class=form-control placeholder="Enter Total Marks Of Urdu" value=100 type=text name=t_chemistry>
             </div>
              <div class=col-lg-3 style="margin-top: 10px">
                <label>Bio/Computer</label>
                  <input class=form-control placeholder="Enter marks of Elective Subject" type=text name=elective>
              </div>
                <div class=col-lg-3 style="margin-top: 10px">
              <label>Total Marks(Bio/Comp)</label>
                 <input class=form-control placeholder="Enter Total Marks Of Urdu" value=100 type=text name=t_elective>
             </div>
                <div class=col-lg-3 style="margin-top: 10px">
              <label>Subject</label>
                 <select name="subject" id="" class="form-control">
                     <option value="">Choose Subject</option>
                     <option value="Biology">Biology</option>
                      <option value="Computer">Computer</option>
                 </select>
             </div>
             
             
                <?php
               }
               }
               ?>
                
           </div>

      </div>

      <div class="modal-footer"  >
        
        <button type="button" class="btn btn-raised" data-dismiss="modal" style=margin-top:86px;>Cancel</button>
        <button type="button" id="btnadd" class="btn btn-primary g-bg-cyan "style=margin-top:86px;>Add</button >
      </div>
       </form>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><
<!-- Trigger the modal with a button -->








</div></div></div>
         </section></div>



        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
  $(function(){
  showdata();

  $('#showdata').on('click','.add',function(){
    var std_id=$(this).attr('data');

    $.ajax({
        method:'post',
        data:{'s':std_id},
       url:'<?php echo site_url('Result/resultcheck')?>',
        datatype:'json',
        async:false,
        success:function(res){
          res=JSON.parse(res);
          if(res.length!=0){
            $('.warning').html('Result has been generated ').css({"font-size": "20px"});
            $('#btnadd').attr('disabled','disabled');
          }
          else{
  $('.warning').html('');
   $('#btnadd').removeAttr('disabled','disabled');
          };
        },

    });
    $('input[name=std_id]').val(std_id);
  });



    function showdata(){
    var s_id=<?php echo $section_id ?>;
   
    var c_id=<?php echo $class_id ?>;
           $.ajax({
            type:'ajax',
        method:'post',
        url:'<?php echo site_url('Attendance/show')?>',
        datatype:'json',
        data:{'s_id':s_id,'c_id':c_id},
        async:false,
        success:function(res){
          var html='';
          
          var res=JSON.parse(res);

var s=0;
          $.each(res,function(i,item){
s++;
          html+='<tr><td>'
          +s+'</td><td>'
          +item.name+'</td><td>'
          +item.fathername+'</td><td>'
          +item.reg_no+'</td><td><a href=javascript:; class="btn btn-primary add " data='+item.id+' data1='+item.name+'>Add</a></td></tr>';


    });   
    $('#showdata').html(html); 
    },  
    error:function(){
      alert('no data found');
    }
      

      });    
    
};
$('#showdata').on('click','.add',function(){
    $('#Modal').modal('show');
    var std_id=$(this).attr('data');
    var name=$(this).attr('data1');
    $('input[name=std_id]').val(std_id);
     $('input[name=std_name]').val(name);



 $('#btnadd').unbind().click(function(){

      var data=$('.form1').serialize();
      var id=$('input[name=std_id]').val();
          $.ajax({
          
            method:'post',
            data:data,
            url:'<?php echo site_url('Result/saveResult')?>',
            datatype:'json',
            success:function(res){
          
                $('#Modal').modal('hide');
                $('.form1')[0].reset();
                $('.alert-success').html('Data Inserted Succesfully').fadeIn().delay(4000).fadeOut('slow');

             

              
        
            },
            error:function(){
              alert('Record Not Inserted');
            },
          });
   


    });});
});
</script>