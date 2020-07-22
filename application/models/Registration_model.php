<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Registration_model extends CI_Model{

	public function Student_insert($image,$image1,$image2){
		$date=date("Y-m-d");
 

$a=$this->input->post('is_osc');
$b=$this->input->post('is_orphan');
$c=$this->input->post('is_briklin');
if($a!=''){
	$a=$this->input->post('is_osc');
}
else{
	$a=0;
	}
	if($b!=''){
	$b=$this->input->post('is_orphan');
}
else{
	$b=0;
	}
	if($c!=''){
	$c=$this->input->post('is_briklin');
}
else{
	$c=0;
	}
 $student_pic='';
if($image==''){
$student_pic='user.png';
}
else{
	$student_pic=$image;
}
		$data=array(

			'household_income'=> $this->input->post('household_income'),
			'mother_income'=> $this->input->post('mother_income'),
			'father_income'=> $this->input->post('father_income'),
			'mother_education'=> $this->input->post('mother_education'),
			'father_education'=> $this->input->post('father_education'),
			'job_type'=> $this->input->post('job_type'),
			'no_of_children'=> $this->input->post('no_of_children'),
			'mother_cnic'=> $this->input->post('mcnic'),

			'guardian_cnic'=> $this->input->post('gcnic'),
			'religion'=> $this->input->post('religion'),
			'guardian_name'=> $this->input->post('gname'),
			'nationality'=> $this->input->post('nationality'),
			'admission_date'=> $this->input->post('admission_date'),

 'mother_profession'=> $this->input->post('mother_profession'),

    
			'previous_school'=> $this->input->post('previous_school'),
			'inclusive'=> $this->input->post('inclusive'),
			'is_orphan'=> $b,

			'is_briklin'=> $c,
			'is_osc'=> $a,
			'fathername'=> $this->input->post('fname'),
 
      
  
    'name'=> $this->input->post('name'),  	
			'gender'=> $this->input->post('gender'),
			'contact'=> $this->input->post('contact'),
			'address'=> $this->input->post('address'),
			'image' =>$student_pic,
			'cnic_img' =>$image1,


			'bform_img' =>$image2,
			'dob'=> $this->input->post('dob'),
			
			'father_cnic'=> $this->input->post('fcnic'),
			'father_occupation'=> $this->input->post('foccupation'),
			'b_form'=> $this->input->post('bform'),
				'reg_no'=> $this->input->post('reg'),
			'status'=> $this->input->post('status'),

			'section_id'=> $this->input->post('section_id'),
			'class_id'=> $this->input->post('class_id'),
			'created_on'=>$date,
			'is_deleted'=>0,

		);
		$this->db->insert('student_registration',$data);
			
		
	}
	public function Student_show(){
		$qry1=$this->db->query('select s.id,s.name,s.mothername,s.b_form,s.contact,s.fathername,s.father_occupation,s.father_cnic,s.dob,s.gender,s.image,s.address,s.status,s.class_id,s.section_id,c.class,se.section from student_registration as s,class as c,section as se where s.section_id=se.id and s.class_id=c.id and c.is_deleted=0 and s.is_deleted=0 and se.is_deleted=0 and s.status="In-Progress"');
		return $qry1->result();
	}
public function showqualification(){
		$this->db->where('is_deleted',0);
			$qry=$this->db->get('qualification');
			return $qry->result();
		
		}
		public function showdegree(){
			$id=$this->input->post('data');
				$this->db->where('id',$id);
			$qry=$this->db->query("select d.id,d.degree from degree as d ,qualification as q where d.qualification_id=q.id and d.qualification_id='$id' and d.is_deleted=0 and q.is_deleted=0");
			return $qry->result();
		
		}


		public function showqualification1(){
		$this->db->where('is_deleted',0);
			$qry=$this->db->get('qualification');
			return $qry->result();
		
		}
		public function showdegree1(){
			$id=$this->input->post('data');

				$this->db->where('id',$id);
			$qry=$this->db->query("select d.id,d.degree from degree as d ,qualification as q where d.qualification_id=q.id and d.qualification_id='$id' and d.is_deleted=0 and q.is_deleted=0");
			return $qry->result();
		
		}
public function Student_search(){
	$name=$this->input->post('data');
		$name2=$this->input->post('data1');
		$qry1=$this->db->query("select s.id,s.name,s.mothername,s.b_form,s.contact,s.fathername,s.class_id,s.section_id,s.father_occupation,s.created_on,s.reg_no,s.father_cnic,s.dob,s.gender,s.image,s.address,s.status,c.class,se.section from student_registration as s,class as c,section as se where s.section_id=se.id and s.class_id=c.id and c.is_deleted=0 and s.is_deleted=0 and se.is_deleted=0 and s.class_id='$name' and s.section_id='$name2'");
		return $qry1->result();
	}

	public function print_staff_detail(){
	
    
$this->db->select_max('id');
     $last_row= $this->db->get('tch_registration')->result();
 foreach ($last_row as $r) {
    $v=$r->id; 
}     
		$qry1=$this->db->query("select * from tch_registration as t,class as c,section as s,qualification as q,degree as d where t.class_id=c.id and t.section_id=s.id and t.qualification=q.id and t.degree_id=d.id and c.id=s.class_id and q.id=d.qualification_id and t.id='$v'");
		return $qry1->result();
	}

	public function Student_edit(){
		$id=$this->input->post('id');

		$qry=$this->db->query("select * from student_registration where id='$id'");
		return $qry->result();
	}

	public function Student_update($image,$image1,$image2){
		$id=$this->input->post('id');
		$date=date("Y-m-d");

		$data=array(
		'household_income'=> $this->input->post('household_income'),
			'mother_income'=> $this->input->post('mother_income'),
			'father_income'=> $this->input->post('father_income'),
			'mother_education'=> $this->input->post('mother_education'),
			'father_education'=> $this->input->post('father_education'),
			'job_type'=> $this->input->post('job_type'),
			'no_of_children'=> $this->input->post('no_of_children'),
			'mother_cnic'=> $this->input->post('mcnic'),

			'guardian_cnic'=> $this->input->post('gcnic'),
			'religion'=> $this->input->post('religion'),
			'guardian_name'=> $this->input->post('gname'),
			'nationality'=> $this->input->post('nationality'),
			'admission_date'=> $this->input->post('admission_date'),
 'mother_profession'=> $this->input->post('mother_profession'),

    
			'previous_school'=> $this->input->post('previous_school'),
			'inclusive'=> $this->input->post('inclusive'),
			
			'fathername'=> $this->input->post('fname'),
 
      
  
    'name'=> $this->input->post('name'),  	
			'gender'=> $this->input->post('gender'),
			'contact'=> $this->input->post('contact'),
			'address'=> $this->input->post('address'),
			'image' =>$image,
			'cnic_img' =>$image1,


			'bform_img' =>$image2,
			'dob'=> $this->input->post('dob'),
			
			'father_cnic'=> $this->input->post('fcnic'),
			'father_occupation'=> $this->input->post('foccupation'),
			'b_form'=> $this->input->post('bform'),
				'reg_no'=> $this->input->post('reg'),
			'status'=> $this->input->post('status'),


			'section_id'=> $this->input->post('section1'),
			'class_id'=> $this->input->post('class1'),
			'updated_on'=>$date,
		);
		$this->db->where('id',$id);
		
		$this->db->update('student_registration',$data);
	}
	public function Student_delete(){
	$date=date("Y-m-d");
		$id=$this->input->post('id');
			$data=array(
			'deleted_on'=>$date,
			'is_deleted'=>1,
		);

		$this->db->where('id',$id);
		$qry=$this->db->update('student_registration',$data);
	
	}
public function showclass(){
	$this->db->where('is_deleted',0);
	$qry=$this->db->get('class');
		return $qry->result();
}
public function showsection(){
	$m=$this->input->post('c');
	 $qry=$this->db->query("select s.id,c.class,s.section from section as s,class as c where s.class_id=c.id and s.is_deleted=0 and c.is_deleted=0 and s.class_id='$m'");
		return $qry->result();
}
public function showreg(){
	$reg=$this->input->post('reg');
	$this->db->where('reg_no',$reg);
	$qry=$this->db->get('student_registration');
		return $qry->result();
}










	public function Teacher_insert($image){
		$date=date("Y-m-d");
$student_pic='';

if($image==''){
$student_pic='user.png';
}
else{
	$student_pic=$image;
}





		$data=array(
			'subject'=> $this->input->post('subject'),

			'father_cnic'=> $this->input->post('father_cnic'),
			'past_experience'=> $this->input->post('past_experience'),
			'status'=> $this->input->post('status'),
			'section_id'=> $this->input->post('section_id'),
			'class_id'=> $this->input->post('class_id'),
			'experience'=> $this->input->post('experience'),
			'date_of_joining'=> $this->input->post('doj'),
			'name'=> $this->input->post('name'),
			'fathername'=> $this->input->post('fname'),
			'cnic'=> $this->input->post('cnic'),
			'gender'=> $this->input->post('gender'),
			'designation'=> $this->input->post('designation'),
			'contact'=> $this->input->post('contact'),
			'address'=> $this->input->post('address'),

			'image' =>$student_pic,
			
			
			'pay'=> $this->input->post('pay'),
			'qualification'=> $this->input->post('qual'),
			'degree_id'=> $this->input->post('degree'),
			'created_on'=>$date,
			'is_deleted'=>0,

			
			

		);
		$this->db->insert('tch_registration',$data);
			
		
	}
	public function Teacher_show(){
		$qry=$this->db->query('select t.name,t.fathername,t.id,t.cnic,t.designation,q.qualification,t.address,d.degree,t.pay,t.contact,t.image,t.gender from tch_registration as t,qualification as q,degree as d where t.qualification=q.id and t.degree_id=d.id and t.is_deleted=0 and d.is_deleted=0 and q.is_deleted=0');
		return $qry->result();
	}
	public function Teacher_edit(){
		$id=$this->input->post('id');

		$this->db->where('id',$id);
		$qry=$this->db->get('tch_registration');
		return $qry->result();
	}

	public function Teacher_update($image){
		$date=date("Y-m-d");



		$id=$this->input->post('id');
		$data=array(
			'name'=> $this->input->post('name1'),
			'fathername'=> $this->input->post('fname1'),
			'cnic'=> $this->input->post('cnic1'),
			'gender'=> $this->input->post('gender1'),
			'designation'=> $this->input->post('designation1'),
			'contact'=> $this->input->post('contact1'),
			'address'=> $this->input->post('address1'),
			'image' =>$image,
			'status'=> $this->input->post('status'),
'updated_on'=>$date,
			
			'pay'=> $this->input->post('pay1'),
			'qualification'=> $this->input->post('qual1'),
			'degree_id'=> $this->input->post('degree1'),
		);
		$this->db->where('id',$id);
		
		$this->db->update('tch_registration',$data);
	}
	public function Teacher_delete(){
	$date=date("Y-m-d");
		$id=$this->input->post('id');
			$data=array(
			'deleted_on'=>$date,
			'is_deleted'=>1,
		);

		$this->db->where('id',$id);
		$qry=$this->db->update('tch_registration',$data);

	
	}

}