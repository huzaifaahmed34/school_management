<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Payroll_model extends CI_Model{

	public function expense_insert(){
		$date=date("Y-m-d");
		$data=array(
			'expense'=> $this->input->post('class1'),
			'amount'=> $this->input->post('code1'),
			'created_on'=>$date,
			'is_deleted'=>0,

		);
		$this->db->insert('expense',$data);
	}
	public function expense_show(){
		$this->db->where('is_deleted',0);
		$qry=$this->db->get('expense');

		return $qry->result();
	}
	public function expense_edit(){
		$id=$this->input->post('id');

		
		$qry=$this->db->query("select * from expense where id='$id'");
		return $qry->result();
	}

	public function expense_update(){
		$date=date("Y-m-d");
		$id=$this->input->post('id');
		$data=array(
			'expense'=> $this->input->post('class'),
			'amount'=> $this->input->post('code'),
			'updated_on'=>$date,
		);
		$this->db->where('id',$id);
	
		
		$this->db->update('expense',$data);
	}
	public function expense_delete(){
		$date=date("Y-m-d");
		$id=$this->input->post('id');
			$data=array(
			'deleted_on'=>$date,
			'is_deleted'=>1,
		);

		$this->db->where('id',$id);
		$qry=$this->db->update('expense',$data);
	
	}

public function payslip_show(){
	$date=date('m');
		$id=$this->input->post('id');
		$qry=$this->db->query("SELECT * FROM `tch_registration` as t,invoice as i WHERE t.id=i.tch_id and i.tch_id='$id'  and MONTH(i.date)='$date'");
		return $qry->result();
	}


	public function payslip_Staffshow(){
$this->db->where('is_deleted',0);
$this->db->where('status',1);
		$qry=$this->db->get('tch_registration');
		return $qry->result();
	}
	public function Not_generated(){
$date=date('m');

		$qry=$this->db->query("SELECT * FROM tch_registration  WHERE is_deleted=0 and status=1 and NOT EXISTS(SELECT * FROM invoice WHERE tch_registration.id=invoice.tch_id and tch_registration.is_deleted=0 and tch_registration.status='1' and Month(invoice.date)='$date')");
		return $qry->result();
	}

	


	public function payslip_showattendance(){
		$id=$this->input->post('id');
		$qry=$this->db->query("SELECT count(*) as c FROM staff_attendance WHERE tch_id='$id' and MONTH(date) = MONTH(CURRENT_DATE - INTERVAL 1 MONTH)");
		return $qry->result();
	}

public function check(){
	$date=date('m');
		$id=$this->input->post('id');
		$qry=$this->db->query("SELECT * FROM `tch_registration` as t,invoice as i WHERE t.id=i.tch_id and i.tch_id='$id' and MONTH(i.date)='$date'");
		return $qry->result();
	}



	public function  payslips_insert(){
			$date=date("Y-m-d");
		$data=array(
			'tch_id'=> $this->input->post('teacher'),
			'invoice_no'=> $this->input->post('invoice'),
			'bonus'=> $this->input->post('bonus'),
			'plenty'=> $this->input->post('plenty'),
			'absent_plenty'=> $this->input->post('absent'),

			'date'=>$date,
				
			
			

		);
		$this->db->insert('invoice',$data);
			
		
	}

}