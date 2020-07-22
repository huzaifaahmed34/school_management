<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Registration extends CI_Controller {

    function __construct(){
		parent:: __construct();

       
       if(!isset($_SESSION['login'])){


        redirect('MyLogin');
       }
	
    }
    public function index()
    {
        $this->load->view('admin/header');
        $this->load->view('admin/sidebar');
        $this->load->view('user/stregistration');
        $this->load->view('admin/footer');
        }
          
    
   
    public function student_registration()
    {
        $this->load->view('admin/header');
        $this->load->view('admin/sidebar');
        $this->load->view('user/stregistration');
        $this->load->view('admin/footer');
    }
   
     public function Add_Students()
    {
        $this->load->view('admin/header');
        $this->load->view('admin/sidebar');
        $this->load->view('user/add_students');
        $this->load->view('admin/footer');
    }
    public function Print_Staff()
    {
        $this->load->view('admin/header');
        $this->load->view('admin/sidebar');
        $this->load->view('print/Print_Staff');
        $this->load->view('admin/footer');
    }
     public function Add_Staff()
    {
        $this->load->view('admin/header');
        $this->load->view('admin/sidebar');
        $this->load->view('user/add_teacher');
        $this->load->view('admin/footer');
    }
       public function print_staff_detail()
    {
        $this->load->model('Registration_model');
        $data2=$this->Registration_model->print_staff_detail();
        echo json_encode($data2);
        
    }
      public function Student_classadd()
    {
        $path='./uploads/';
            $config['upload_path'] =$path;
                $config['allowed_types']='jpg|png|jpeg|';

              
                $this->load->library('upload');
                $this->upload->initialize($config);
                $img = 'image';
                $img1 = 'bformimg'; // input name="img"
                $img2 = 'cnicimg';


              $this->upload->do_upload($img);
              $this->upload->do_upload($img1);

$this->upload->do_upload($img2);



        $image=$_FILES['image']['name'];
          $image1=$_FILES['cnicimg']['name'];
            $image2=$_FILES['bformimg']['name'];
        $this->load->model('Registration_model');
        $this->Registration_model->Student_insert($image,$image1,$image2);
        
    }
    public function Student_Classshow()
    {
        $this->load->model('Registration_model');
        $data2=$this->Registration_model->Student_show();
        echo json_encode($data2);
        
    }

 public function showqualification()
    {
        $this->load->model('Registration_model');
        $data2=$this->Registration_model->showqualification();
        echo json_encode($data2);
        
    }

public function showqualification1()
    {
        $this->load->model('Registration_model');
        $data2=$this->Registration_model->showqualification1();
        echo json_encode($data2);
        
    }

 public function showdegree1()
    {
        $this->load->model('Registration_model');
        $data2=$this->Registration_model->showdegree1();
        echo json_encode($data2);
        
    }
 public function showdegree()
    {
        $this->load->model('Registration_model');
        $data2=$this->Registration_model->showdegree();
        echo json_encode($data2);
        
    }
     public function Student_Class()
    {
        $this->load->model('Registration_model');
        $data2=$this->Registration_model->Student_search();
        echo json_encode($data2);
        
    }
       public function Student_Classedit()
    {
        $this->load->model('Registration_model');
        $data=$this->Registration_model->Student_edit();
        echo json_encode($data);
        
    }
       public function Student_Classupdate()
    {
         $path='./uploads/';


            $config['upload_path']=$path;
                $config['allowed_types']='jpg|png|jpeg|';

              $i=$this->input->post('hidimg1');
              $i1=$_FILES['image5']['name'];
              $j=$this->input->post('hidimg');
              $j1=$_FILES['image1']['name'];
              $k=$this->input->post('hidimg2');
            $k1=$_FILES['image6']['name'];
                $this->load->library('upload');
                $this->upload->initialize($config);
                $img ='image1';
                 $img1 ='image5';
                  $img2 ='image6'; 
if(empty($i1)){
    $image1=$i;
           
}else{   $this->upload->do_upload($img1);
        $image1=$i1;
      
}                  // input name="img"

if(empty($j1)){ 
    $image=$j;
         
}else{    
      $this->upload->do_upload($img);
        $image=$j1;
}

if(empty($k1)){
     $image2=$k;
              
}  else{$this->upload->do_upload($img2);
        $image2=$k1;
     
}
        $this->load->model('Registration_model');
        $data=$this->Registration_model->Student_update($image,$image1,$image2);
        echo json_encode($data);
  
    }  
    public function Student_Classdelete()
    {
        $this->load->model('Registration_model');
        $data=$this->Registration_model->Student_delete();
        echo json_encode($data);
        
    }
     public function showclass()
    {
        $this->load->model('Registration_model');
        $data=$this->Registration_model->showclass();
      echo json_encode($data);
        
    }
     public function showsection()
    {
        $this->load->model('Registration_model');
        $data=$this->Registration_model->showsection();
      echo json_encode($data);
        
    }
    
   public function showreg()
    {
        $this->load->model('Registration_model');
        $data=$this->Registration_model->showreg();
      echo json_encode($data);
        
    }    





    public function Staff_registration()
    {
        $this->load->view('admin/header');
        $this->load->view('admin/sidebar');
        $this->load->view('user/tchregistration');
        $this->load->view('admin/footer');
    }
      public function Staff_classadd()
    {
      
        $path='./uploads/';
            $config['upload_path'] =$path;
                $config['allowed_types']='jpg|png|jpeg|';

              
                $this->load->library('upload');
                $this->upload->initialize($config);


                $img = 'image'; // input name="img"


              $this->upload->do_upload($img);
        $image=$_FILES['image']['name'];
        $this->load->model('Registration_model');
        $this->Registration_model->Teacher_insert($image);
        
    }
    public function Staff_Classshow()
    {
        $this->load->model('Registration_model');
        $data=$this->Registration_model->Teacher_show();
        echo json_encode($data);
        
    }
       public function Staff_Classedit()
    {
        $this->load->model('Registration_model');
        $data1=$this->Registration_model->Teacher_edit();
        echo json_encode($data1);
        
    }
       public function Staff_Classupdate()
    {
    
                $img = 'image1'; // input name="img"
$i=$this->input->post('hidimg');

$j=$_FILES['image1']['name'];
if($j==''){
    $image=$i;
    
}else
    {  $path='./uploads/';
            $config['upload_path'] =$path;
                $config['allowed_types']='jpg|png|jpeg|';


              
                $this->load->library('upload');
                $this->upload->initialize($config);
                $image=$j;

              $this->upload->do_upload($img);

      
     
}
        $this->load->model('Registration_model');
        $data=$this->Registration_model->Teacher_update($image);
        echo json_encode($data);
        
    }  
    public function Staff_Classdelete()
    {
        $this->load->model('Registration_model');
        $data=$this->Registration_model->Teacher_delete();
        echo json_encode($data);
        
    }











       }