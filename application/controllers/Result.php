<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Result extends CI_Controller {

    function __construct(){
		parent:: __construct();
      $this->load->model('Resultmodel','m');
       
       if(!isset($_SESSION['login'])){


        redirect('MyLogin');
       }
	
    }
    public function resultview()
    {
        $this->load->view('admin/header');
        $this->load->view('admin/sidebar');
        $this->load->view('user/result.php');
        $this->load->view('admin/footer');
    
     }
        
        
         public function generateResult()
    {
        $this->load->view('admin/header');
        $this->load->view('admin/sidebar');
        $this->load->view('user/getResult');
        $this->load->view('admin/footer');
    
     }

 public function view_result()
    {
        $this->load->view('admin/header');
        $this->load->view('admin/sidebar');
        $this->load->view('user/view_result');
       
        $this->load->view('admin/footer');
    
     }

 public function ResultList($class_id,$section_id)
    { 
      $data=$this->m->allResultCard($class_id,$section_id);

        $this->load->view('admin/header');
        $this->load->view('admin/sidebar');
        $this->load->view('user/result_list',['res'=>$data]);
       
        $this->load->view('admin/footer');
    
     }


    public function saveResult()
    {
        
        $res=$this->m->saveResult();
        echo json_encode($res);
        
    }
        
        	public function getStudent()
			{	
				$data=$this->m->getStudent();
				echo json_encode($data);
            }
              public function  resultcheck()
      { 
        $data=$this->m->resultcheck();
        echo json_encode($data);
            }

             public function  resultcheck1()
      { 
        $data=$this->m->resultcheck1();
        echo json_encode($data);
            }

         public function getResult($std_id,$class_id)
			{	
               $data=$this->m->getResult($std_id,$class_id);
             if($data){
               $this->load->view('admin/header');
               $this->load->view('admin/sidebar');
               $this->load->view('user/resultCard',['res'=>$data]);
               $this->load->view('admin/footer');
             }
             else
             {
                 echo "Plz Enter record first";
             }
            }   
   public function getResultall($std_id,$class_id)
      { 
               $data=$this->m->getResultall($std_id,$class_id);
             if($data){
               $this->load->view('admin/header');
               $this->load->view('admin/sidebar');
               $this->load->view('user/resultCardAll',['res'=>$data]);
               $this->load->view('admin/footer');
             }
             else
             {
                 echo "Plz Enter record first";
             }
            }   



         public function resultcard($regno)
      { 
          $data=$this->m->ResultCard($regno);
             if($data){
               $this->load->view('includes/top');
               $this->load->view('includes/header');
               $this->load->view('resultcard',['res'=>$data]);
               $this->load->view('includes/footer');
            }  else
             {
                 echo "Result not generated";
             }

            }   
             
         public function allResultCard($classId,$sectionId)
			{	
               $data=$this->m->allResultCard($classId,$sectionId);
             if($data){
                //echo json_encode($data);
               
               $this->load->view('admin/header');
               $this->load->view('admin/sidebar');
               $this->load->view('user/allResultCard',['res'=>$data]);
               $this->load->view('admin/footer');
             }
             else
             {
                 echo "Plz Enter record first";
             }
            }
    
    }

    ?>