
<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

    function __construct(){
		parent:: __construct();
$this->load->model('Main_model','m');
       
       if(!isset($_SESSION['login'])){


        redirect('MyLogin');
       }
	
    }
	public function index()
	{
		$this->load->view('admin/top');
		$this->load->view('admin/header');
		$this->load->view('admin/sidebar');
	
		 $data2=$this->m->count_show();
		$this->load->view('user/dashboard',['result2'=>$data2]);

		
		$this->load->view('admin/footer');
	

	}
}