<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Certificate extends CI_Controller {

    function __construct(){
		parent:: __construct();
		$this->load->model('certificate_model','m');

       if(!isset($_SESSION['login'])){


        redirect('MyLogin');
       }
	
    }

       public function generate_character_certificate()
    {
        $this->load->view('admin/header');
        $this->load->view('admin/sidebar');
        $this->load->view('user/generate_character_certificate');
        $this->load->view('admin/footer');
    }

    

     public function SchoolLeavingCertificate($id)
    {
        $this->load->view('admin/header');
        $this->load->view('admin/sidebar');
        $this->load->view('user/school_leaving_certificate',['id'=>$id]);
        $this->load->view('admin/footer');
    }
     public function ServiceCertificate($id)
    {
        $this->load->view('admin/header');
        $this->load->view('admin/sidebar');
        $this->load->view('user/service_certificate',['id'=>$id]);
        $this->load->view('admin/footer');
    }
    public function generateSchoolLeavingCertificate()
    {
        $this->load->view('admin/header');
        $this->load->view('admin/sidebar');
        $this->load->view('user/generate_school_leaving');
        $this->load->view('admin/footer');
    }
     public function generateServiceCertificate()
    {
        $this->load->view('admin/header');
        $this->load->view('admin/sidebar');
        $this->load->view('user/generate_service_certificate');
        $this->load->view('admin/footer');
    }
     public function character_certificate()
    {
        $this->load->view('admin/header');
        $this->load->view('admin/sidebar');
        $this->load->view('user/character_certificate');
        $this->load->view('admin/footer');
    }


}

