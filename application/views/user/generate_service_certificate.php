
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       Generate Service Certificate
      </h1>
      <ol class="breadcrumb">
        <li><a href="<?php echo base_url() ?>"><i class="fas fa-arrow-alt-circle-right"></i> Home</a></li>
        <li><a href="#">Certificate</a></li>
    
        <li class="active" >Generate Service Certificate</li>
       
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
        

          <div class="box box-success">
              <div class="box-header with-border">
                  <h3 class="box-title">Generate Service Certificate</h3>
                </div>
          
            <!-- /.box-header -->
            <div class="box-body">
                   
         

          <div class=row>
            <div class=col-lg-3>
            </div>
            <div class=col-lg-4 >
              <div class=form-group>
              <label >Choose Teacher</label>
              <select class="form-control search" >
                <option >Select Teacher</option>
              <?php  
              $qry=$this->db->where('is_deleted=0')->where('status=1')
                ->get('tch_registration')->result();
                foreach ($qry as $q) {
                  echo '<option value='.$q->id.'>'.$q->name.'</option>';
                  # code...
                }
              ?>
              </select>
                   </div>
</div>
                  
               
                       <div class="col-lg-1 text-center " style="margin-top: 30px;" >
                   <button id=generate class="btn btn-primary">Generate </button>
        
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


$('#generate').click(function(){

var tch_id=$('.search').val();
 window.location.href = "<?php echo site_url('Certificate/ServiceCertificate')?>/"+ tch_id;

});

  });
</script>