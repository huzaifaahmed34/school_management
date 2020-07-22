<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Payroll extends CI_Controller {

    function __construct(){
		parent:: __construct();
	$this->load->model('Payroll_model','m');
       if(!isset($_SESSION['login'])){


        redirect('MyLogin');
       }
	
    }
	public function Expense_view()
	{
		$this->load->view('admin/top');
		$this->load->view('admin/header');
		$this->load->view('admin/sidebar');
		$this->load->view('user/Expense_view');

		
		$this->load->view('admin/footer');
	

	}
	public function Pay_slips()
	{
		$this->load->view('admin/top');
		$this->load->view('admin/header');
		$this->load->view('admin/sidebar');
		$this->load->view('user/payroll_views');

		
		$this->load->view('admin/footer');
	

	}


   public function expense_insert()
    {
        $this->load->model('m');
        $this->m->expense_insert();
        
    }
    public function expense_show()
    {
        $this->load->model('m');
        $data=$this->m->expense_show();
        echo json_encode($data);
        
    }
 public function Staff_Classshow()
    {
        $this->load->model('m');
        $data=$this->m->Teacher_show();
        echo json_encode($data);
        
    }
 public function random_invoice()
    {
        $this->load->model('m');
        $data=$this->m->random_invoice();
        echo json_encode($data);
        
    }
 public function Not_generated()
    {
        $this->load->model('m');
        $data=$this->m->Not_generated();
        echo json_encode($data);
        
    }
       public function expense_edit()
    {
        $this->load->model('m');
        $data=$this->m->expense_edit();
        echo json_encode($data);
        
    }
       public function expense_update()
    {
        $this->load->model('m');
        $data=$this->m->expense_update();
        echo json_encode($data);
        
    }  
    public function expense_delete()
    {
        $this->load->model('m');
        $data=$this->m->expense_delete();
        echo json_encode($data);
        
    }
    
  
       public function   payslip_Staffshow()
    {
        $this->load->model('m');
        $data=$this->m->payslip_Staffshow();
        echo json_encode($data);
        
    }


       public function   payslip_show()
    {
        $this->load->model('m');
        $data=$this->m->payslip_show();
        echo json_encode($data);
        
    }

 public function   payslip_showattendance()
    {
        $this->load->model('m');
        $data=$this->m->payslip_showattendance();
        echo json_encode($data);
        
    }


 public function   payslip_check()
    {
        $this->load->model('m');
        $data=$this->m->check();
        echo json_encode($data);
        
    }


 public function payslips_insert()
    {
        $this->load->model('m');
        $data=$this->m->payslips_insert();
        echo json_encode($data);
        
    }


    



}
