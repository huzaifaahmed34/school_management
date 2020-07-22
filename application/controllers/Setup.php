<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Setup extends CI_Controller {

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
        $this->load->view('user/classView');
        $this->load->view('admin/footer');
        }
    
    
   
    public function classView()
    {
   
        $this->load->view('admin/header');
        $this->load->view('admin/sidebar');
        $this->load->view('user/classView');
        $this->load->view('admin/footer');
    
    }

 public function departmentView()
    {
        $this->load->view('admin/header');
        $this->load->view('admin/sidebar');
        $this->load->view('user/departmentView');
        $this->load->view('admin/footer');
    }
     public function sessionView()
    {
        $this->load->view('admin/header');
        $this->load->view('admin/sidebar');
        $this->load->view('user/sessionView');
        $this->load->view('admin/footer');
    }
     public function coursesView()
    {
        $this->load->view('admin/header');
        $this->load->view('admin/sidebar');
        $this->load->view('user/coursesView');
        $this->load->view('admin/footer');
    }
    public function post()
    {
        $this->load->view('admin/header');
        $this->load->view('admin/sidebar');
        $this->load->view('user/post');
        $this->load->view('admin/footer');
    }
 public function heroes()
    {
        $this->load->view('admin/header');
        $this->load->view('admin/sidebar');
        $this->load->view('user/heroes');
        $this->load->view('admin/footer');
    }

     public function fees()
    {
        $this->load->view('admin/header');
        $this->load->view('admin/sidebar');
        $this->load->view('user/fee_collection');
        $this->load->view('admin/footer');
    }
     public function syllabus()
    {
        $this->load->view('admin/header');
        $this->load->view('admin/sidebar');
        $this->load->view('user/syllabus');
        $this->load->view('admin/footer');
    }
     public function subjects()
    {
        $this->load->view('admin/header');
        $this->load->view('admin/sidebar');
        $this->load->view('user/subjects');
        $this->load->view('admin/footer');
    }

    public function Qualification()
    {
        $this->load->view('admin/header');
        $this->load->view('admin/sidebar');
        $this->load->view('user/qualification');
        $this->load->view('admin/footer');
    }


 public function Degree()
    {
        $this->load->view('admin/header');
        $this->load->view('admin/sidebar');
        $this->load->view('user/degree');
        $this->load->view('admin/footer');
    }

      public function classadd()
    {
        $this->load->model('Mymodel');
        $this->Mymodel->class_insert();
        
    }
    public function Classshow()
    {
        $this->load->model('Mymodel');
        $data=$this->Mymodel->class_show();
        echo json_encode($data);
        
    }
       public function Classedit()
    {
        $this->load->model('Mymodel');
        $data=$this->Mymodel->class_edit();
        echo json_encode($data);
        
    }
       public function Classupdate()
    {
        $this->load->model('Mymodel');
        $data=$this->Mymodel->class_update();
        echo json_encode($data);
        
    }  
    public function Classdelete()
    {
        $this->load->model('Mymodel');
        $data=$this->Mymodel->class_delete();
        echo json_encode($data);
        
    }
    



public function Qualificationadd()
    {
        $this->load->model('Mymodel');
        $this->Mymodel->Qualification_insert();
        
    }
    public function Qualificationshow()
    {
        $this->load->model('Mymodel');
        $data=$this->Mymodel->Qualification_show();
        echo json_encode($data);
        
    }
       public function Qualificationedit()
    {
        $this->load->model('Mymodel');
        $data=$this->Mymodel->Qualification_edit();
        echo json_encode($data);
        
    }
       public function Qualificationupdate()
    {
        $this->load->model('Mymodel');
        $data=$this->Mymodel->Qualification_update();
        echo json_encode($data);
        
    }  
    public function Qualificationdelete()
    {
        $this->load->model('Mymodel');
        $data=$this->Mymodel->Qualification_delete();
        echo json_encode($data);
        
    }
    
    
    
    
   
    public function Section_view()
    {
        $this->load->view('admin/header');
        $this->load->view('admin/sidebar');
        $this->load->view('user/sectionview');
        $this->load->view('admin/footer');
    }
      public function section_classadd()
    {
        $this->load->model('Mymodel');
        $this->Mymodel->section_insert();
        
    }
    public function  section_Classshow()
    {
        $this->load->model('Mymodel');
        $data=$this->Mymodel->section_show();
        echo json_encode($data);
        
    }
       public function  section_Classedit()
    {
        $this->load->model('Mymodel');
        $data=$this->Mymodel->section_edit();
        echo json_encode($data);
        
    }
       public function  section_Classupdate()
    {
        $this->load->model('Mymodel');
        $data=$this->Mymodel->section_update();
        echo json_encode($data);
        
    }  
    public function section_Classdelete()
    {
        $this->load->model('Mymodel');
        $data=$this->Mymodel->section_delete();
        echo json_encode($data);
        
    }




     public function Degreeadd()
    {
        $this->load->model('Mymodel');
        $this->Mymodel->Degree_insert3();
        
    }
    public function Degreeshow()
    {
        $this->load->model('Mymodel');
        $data=$this->Mymodel->Degree_show3();
        echo json_encode($data);
        
    }
       public function Degreeedit()
    {
        $this->load->model('Mymodel');
        $data=$this->Mymodel->Degree_edit3();
        echo json_encode($data);
        
    }
       public function Degreeupdate()
    {
        $this->load->model('Mymodel');
        $data=$this->Mymodel->Degree_update3();
        echo json_encode($data);
        
    }  
    public function Degreedelete()
    {
        $this->load->model('Mymodel');
        $data=$this->Mymodel->Degree_delete3();
        echo json_encode($data);
        
    }
      public function showqualification1()
    {
        $this->load->model('Mymodel');
        $data=$this->Mymodel->showqualification1();
        echo json_encode($data);
        
    }







     public function Sessionadd()
    {
        $this->load->model('Mymodel');
        $this->Mymodel->session_insert2();
        
    }
    public function Sessionshow()
    {
        $this->load->model('Mymodel');
        $data=$this->Mymodel->session_show2();
        echo json_encode($data);
        
    }
       public function Sessionedit()
    {
        $this->load->model('Mymodel');
        $data=$this->Mymodel->session_edit2();
        echo json_encode($data);
        
    }
       public function Sessionupdate()
    {
        $this->load->model('Mymodel');
        $data=$this->Mymodel->session_update2();
        echo json_encode($data);
        
    }  
    public function Sessiondelete()
    {
        $this->load->model('Mymodel');
        $data=$this->Mymodel->session_delete2();
        echo json_encode($data);
        
    }



     public function showdepartment()
    {
        $this->load->model('Mymodel');
        $data=$this->Mymodel->showdepartment();
        echo json_encode($data);
        
    }
         public function postinsert()
    {
          $path='./uploads/';
            $config['upload_path'] =$path;
                $config['allowed_types']='jpg|png|jpeg|pdf|xls|csv|xlsx';

              
                $this->load->library('upload');
                $this->upload->initialize($config);
                $img = 'image'; // input name="img"


              $this->upload->do_upload($img);


 // uploading failed. $error will holds the errors.


        $image=$_FILES['image']['name'];
        $this->load->model('Mymodel');
        $data=$this->Mymodel->postinsert($image);
        echo json_encode($data);
        
    }

 
    public function postshow()
    {
        $this->load->model('Mymodel');
        $data=$this->Mymodel->postshow();
        echo json_encode($data);
        
    }
       public function postedit()
    {
        $this->load->model('Mymodel');
        $data1=$this->Mymodel->postedit();
        echo json_encode($data1);
        
    }
       public function postupdate()
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
        $this->load->model('Mymodel');
        $data=$this->Mymodel->postupdate($image);
        echo json_encode($data);
        
    }  
    public function postdelete()
    {
        $this->load->model('Mymodel');
        $data=$this->Mymodel->postdelete();
        echo json_encode($data);
        
    }







         public function heroesinsert()
    {
        $this->load->model('Mymodel');
        $data=$this->Mymodel->heroesinsert();
        echo json_encode($data);
        
    }

             public function heroesshow()
    {
        $this->load->model('Mymodel');
        $data=$this->Mymodel->heroesshow();
        echo json_encode($data);
        
    }
    public function heroesstdshow()
    {
        $this->load->model('Mymodel');
        $data=$this->Mymodel->heroesstdshow();
        echo json_encode($data);
        
    }
     public function heroessessionshow()
    {
        $this->load->model('Mymodel');
        $data=$this->Mymodel->heroessessionshow();
        echo json_encode($data);
        
    }
       public function heroesedit()
    {
        $this->load->model('Mymodel');
        $data=$this->Mymodel->heroesedit();
        echo json_encode($data);
        
    }    
     public function heroesdelete()
    {
        $this->load->model('Mymodel');
        $data=$this->Mymodel->heroesdelete();
        echo json_encode($data);
        
    }

  public function heroesupdate()
    {
        $this->load->model('Mymodel');
        $data=$this->Mymodel->heroesupdate();
        echo json_encode($data);
        
    }  


    
      public function syllabusinsert()
    {
        $path='./uploads/';
            $config['upload_path'] =$path;
                $config['allowed_types']='jpg|png|jpeg|pdf|xls|csv|xlsx';

              
                $this->load->library('upload');
                $this->upload->initialize($config);
                $img = 'image1'; // input name="img"


              $this->upload->do_upload($img);


 // uploading failed. $error will holds the errors.


        $image=$_FILES['image1']['name'];
        $this->load->model('Mymodel');
        $this->Mymodel->syllabus_insert5($image);
        
    }
    public function syllabusshow()
    {
        $this->load->model('Mymodel');
        $data2=$this->Mymodel->syllabus_show5();
        echo json_encode($data2);
        
    }

     public function syllabusedit()
    {
        $this->load->model('Mymodel');
        $data2=$this->Mymodel->syllabus_edit5();
        echo json_encode($data2);
        
    }
      
    
       public function syllabusupdate()
    {
          $path='./uploads/';
            $config['upload_path'] =$path;
                $config['allowed_types']='jpg|png|jpeg|pdf|xls|csv|xlsx';

              
                $this->load->library('upload');
                $this->upload->initialize($config);
                $img = 'image'; // input name="img"


              $this->upload->do_upload($img);


 // uploading failed. $error will holds the errors.


        $image=$_FILES['image']['name'];
        $this->load->model('Mymodel');
        $this->Mymodel->syllabus_update5($image);
       
        
    }  
    public function syllabusdelete()
    {
        $this->load->model('Mymodel');
        $data=$this->Mymodel->syllabus_delete5();
        echo json_encode($data);
        
    }


     public function feeinsert()
    {
        $this->load->model('Mymodel');
        $data=$this->Mymodel->feeinsert();
        echo json_encode($data);
        
    }
     public function feeinsert1()
    {
        $this->load->model('Mymodel');
        $data=$this->Mymodel->feeinsert1();
        echo json_encode($data);
        
    }
  

     public function feereport()
    {
        $this->load->model('Mymodel');
        $data=$this->Mymodel->feereport();
        echo json_encode($data);
        
    }
    
     public function Studentfeereport()
    {
        $this->load->model('Mymodel');
        $data=$this->Mymodel->Studentfeereport();
        echo json_encode($data);
        
    }


     public function subjectinsert()
    {
        $this->load->model('Mymodel');
        $data=$this->Mymodel->subjectinsert();
        echo json_encode($data);
        
    }
  
public function feecheck()
    {
        $this->load->model('Mymodel');
        $data=$this->Mymodel->feecheck();
        echo json_encode($data);
        
    }
    
}

?>