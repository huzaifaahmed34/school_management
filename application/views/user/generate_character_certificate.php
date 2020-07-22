
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       Generate Character Certificate
      </h1>
      <ol class="breadcrumb">
        <li><a href="<?php echo base_url() ?>"><i class="fas fa-arrow-alt-circle-right"></i> Home</a></li>
        <li><a href="#">Certificate</a></li>
    
        <li class="active" >Generate Character Certificate</li>
       
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
        

          <div class="box box-success">
              <div class="box-header with-border">
                  <h3 class="box-title">Generate Character Certificate</h3>
                </div>
          
            <!-- /.box-header -->
            <div class="box-body">
                   
         

          <div class=row>
            <div class=col-xs-4 >
              <div class=form-group>
              <label >Choose Class</label>
              <select class="form-control search" >
                <option >Select Class</option>
              <?php  
              $qry=$this->db->where('is_deleted=0')
                ->get('class')->result();
                foreach ($qry as $q) {
                  echo '<option value='.$q->id.'>'.$q->class.'</option>';
                  # code...
                }
              ?>
              </select>
                   </div>
</div>
                   <div class=col-xs-4 >
                      <div class=form-group>
              <label>Choose Section</label>
              <select  class="form-control search1"  >
                <option >Select Section</option>

              </select>
                   </div>
                 </div>
                 <div class=col-xs-4 >
                      <div class=form-group>
              <label>Choose Student</label>
              <select  class="form-control search2"  >
                 <option >Select Student</option>
              </select>
                   </div>
                 </div>
                 <div class=col-xs-4 >
                      <div class=form-group>
              <label>Enter Marks(Obtained)</label>
              <input  class="form-control "  >
                 
                   </div>
                 </div>
                   <div class=col-xs-4 >
                      <div class=form-group>
              <label>Enter Marks(Total)</label>
              <input  class="form-control "  >
                 
                   </div>
                 </div>
                   <div class=col-xs-4 >
                      <div class=form-group>
              <label>Enter Grade</label>
              <input  class="form-control "  >
                 
                   </div>
                 </div>
                       <div class="col-xs-4 text-center" >
                   <button id=search class="btn btn-primary">Generate </button>
        
</div>
</div>

        </div>
      </div>
    </div>
  </div>
</section>
</div>



 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
  $(function(){
$('.search').on('change',function(){

  var classid=$('.search').val();
  
         $.ajax({

        method:'post',
        url:'<?php echo site_url('Registration/showsection')?>',
     data:{'c':classid},
        dataType:'json',
      
        success:function(res){
       var i; 
        
          var html='';
            
        

      if(res.length!=0){
    html+='<option >Select Student</option>';
$.each(res,function(i,item){
            html+='<option value='+item.id+'>'+item.section+'</option>';
         $('.search1').html(html);
        });

       }
        else{
           html+='<option value=N/A>N/A</option>';
        $('.search1').html(html);
        } 
      },
        error:function(){
          alert('no');
        },

    });
  
    
});

$('.search1').on('change',function(){

var section_id=$(this).val();
var classid=$('.search').val();
show_data(classid,section_id);

 
});

function show_data(data,data1){


    $.ajax({
        method:'post',
        url:'<?php echo site_url('Registration/Student_Class')?>',
        dataType:'json',
        data:{'data':data,'data1':data1},
        success:function(res){
     
          var html='';
          
       var c=0;
          $.each(res,function(i,item){
   html+='<option value='+item.id+'>'+item.name+'</option>';
       
          });
            $('.search2').html(html);

        }
      });
  }

  });
</script>