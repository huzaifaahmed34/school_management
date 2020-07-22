<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Main extends CI_Controller {


    function __construct(){
		parent:: __construct();
        $this->load->model('Main_model', 'm');
		
    }
	public function index()
	{
		$this->load->view('includes/top');
		$this->load->view('includes/header');
		 $this->load->model('m');
        $data=$this->m->post_show();
         $data1=$this->m->heroes_show();
          $data2=$this->m->count_show();
              
		$this->load->view('index',['result'=>$data,'result1'=>$data1,'result2'=>$data2]);

		
		$this->load->view('includes/footer');
	

	}

	public function Heroes()
	{
		$this->load->view('includes/top');
		$this->load->view('includes/header');
		  	 $this->load->model('m');
        $data=$this->m->heroes();
		$this->load->view('heroes',['result'=>$data]);

		
		$this->load->view('includes/footer');
	

	}
public function admission()
	{
		$this->load->view('includes/top');
		$this->load->view('includes/header');
		  	

		$this->load->view('registration');

		
		$this->load->view('includes/footer');
	

	}

public function Syllabus()
	{
		$this->load->view('includes/top');
		$this->load->view('includes/header');
		  
     
		$this->load->view('syllabus');

		
		$this->load->view('includes/footer');
	

	}


	public function Result()
	{
		$this->load->view('includes/top');
		$this->load->view('includes/header');
		  
		$this->load->view('Result');

		
		$this->load->view('includes/footer');
	

	}



	public function Attendance()
	{
		$this->load->view('includes/top');
		$this->load->view('includes/header');
		  
		$this->load->view('attendance');

		
		$this->load->view('includes/footer');
	

	}


		public function attendance_show(){
		 	 $this->load->model('m');
        $data=$this->m->attendance_show();
        echo json_encode($data);
        	
	}
	public function syllabus_show(){
		 	 $this->load->model('m');
        $data=$this->m->syllabus_show();
        echo json_encode($data);
        	
	}
    	
	
}
