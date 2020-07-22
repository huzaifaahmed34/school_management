<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Mymodel extends CI_Model {

	public function class_insert(){
		$date=date("Y-m-d");
		$data=array(
			'class'=> $this->input->post('class1'),
			'code'=> $this->input->post('code1'),
			'created_on'=>$date,
			'is_deleted'=>0,
		);
		$this->db->insert('class',$data);
	}
	public function class_show(){
		$this->db->where('is_deleted',0);
		$qry=$this->db->get('class');

		return $qry->result();
	}
	public function class_edit(){
		$id=$this->input->post('id');

		$this->db->where('id',$id);
		$qry=$this->db->get('class');
		return $qry->result();
	}

	public function class_update(){
		$date=date("Y-m-d");
		$id=$this->input->post('id');
		$data=array(
			'class'=> $this->input->post('class'),
			'code'=> $this->input->post('code'),
			'updated_on'=>$date,
		);
		$this->db->where('id',$id);
	
		
		$this->db->update('class',$data);
	}
	public function class_delete(){
		$date=date("Y-m-d");
		$id=$this->input->post('id');
			$data=array(
			'is_deleted'=> 1,
			'deleted_on'=>$date,
		);
		$this->db->where('id',$id);
		$qry=$this->db->update('class',$data);
	
	}





	public function Qualification_insert(){
		$date=date("Y-m-d");
		$data=array(
			'qualification'=> $this->input->post('class1'),
			
			'created_on'=>$date,
			'is_deleted'=>0,
		);
		$this->db->insert('qualification',$data);
	}
	public function Qualification_show(){
		$this->db->where('is_deleted',0);
		$qry=$this->db->get('qualification');

		return $qry->result();
	}
	public function Qualification_edit(){
		$id=$this->input->post('id');

		$this->db->where('id',$id);
		$qry=$this->db->get('qualification');
		return $qry->result();
	}

	public function Qualification_update(){
		$date=date("Y-m-d");
		$id=$this->input->post('id');
		$data=array(
			'qualification'=> $this->input->post('class'),
			
			'updated_on'=>$date,
		);
		$this->db->where('id',$id);
	
		
		$this->db->update('qualification',$data);
	}
	public function Qualification_delete(){
		$date=date("Y-m-d");
		$id=$this->input->post('id');
			$data=array(
			'deleted_on'=>$date,
			'is_deleted'=>1,
		);

		$this->db->where('id',$id);
		$qry=$this->db->update('qualification',$data);
	
	}



	public function section_insert(){
		$date=date("Y-m-d");


		$data=array(
			'section'=> $this->input->post('class1'),
			'class_id'=> $this->input->post('code1'),
			'created_on'=>$date,
			'is_deleted'=>0,
		);
		$this->db->insert('section',$data);
	}

	public function section_edit(){
		$id=$this->input->post('id');

		$this->db->where('id',$id);
		$qry=$this->db->get('section');
		return $qry->result();
	}

	public function section_update(){
		$id=$this->input->post('id');
		$data=array(
			'section'=> $this->input->post('class'),
			'class_id'=> $this->input->post('code'),
			'updated_on'=>$date,
			 
		);
		$this->db->where('id',$id);
		
		$this->db->update('section',$data);
	}
	public function section_delete(){
	$date=date("Y-m-d");
		$id=$this->input->post('id');
			$data=array(
			'deleted_on'=>$date,
			'is_deleted'=>1,
		);

		$this->db->where('id',$id);
		$qry=$this->db->update('section',$data);
	
	}

	public function section_show(){
			
		$qry=$this->db->query('select s.id,c.class,s.section from section as s,class as c where s.class_id=c.id and s.is_deleted=0 and c.is_deleted=0');
		return $qry->result();
	}

	


	public function session_insert2(){
		
		$date=date("Y-m-d");


		$data=array(

			'session'=> $this->input->post('class1'),
			'code'=> $this->input->post('code1'),
			'is_deleted'=>0,
'created_on'=>$date,
		);
		$this->db->insert('session',$data);
	}
	public function session_show2(){
			$this->db->where('is_deleted',0);
		$qry=$this->db->get('session');
		return $qry->result();
	}
	public function session_edit2(){
		$id=$this->input->post('id');

		$this->db->where('id',$id);
		$qry=$this->db->get('session');
		return $qry->result();
	}

	public function session_update2(){
	$date=date("Y-m-d");

		$id=$this->input->post('id');
		$data=array(
			'session'=> $this->input->post('class'),
			'code'=> $this->input->post('code'),
			'updated_on'=>$date,
		);
		$this->db->where('id',$id);
		
		$this->db->update('session',$data);
	}
	public function session_delete2(){
			$date=date("Y-m-d");
		$id=$this->input->post('id');
			$data=array(
			'deleted_on'=>$date,
			'is_deleted'=>1,
		);

		$this->db->where('id',$id);
		$qry=$this->db->update('session',$data);
	
	}



public function showdepartment(){
	$this->db->where('is_deleted',0);
	$qry=$this->db->get('department');
		return $qry->result();
}












	public function Degree_insert3(){
		$date=date("Y-m-d");

		$data=array(
			'degree'=> $this->input->post('name'),
			
			'qualification_id'=> $this->input->post('class_id'),
			'created_on'=>$date,
			'is_deleted'=>0,

		);
		$this->db->insert('degree',$data);
			
		
	}
	public function Degree_show3(){

		$qry1=$this->db->query('select c.id,c.degree,c.qualification_id,cl.qualification from degree as c,qualification as cl where c.qualification_id=cl.id and c.is_deleted=0 and cl.is_deleted=0');
		return $qry1->result();
	}
	public function Degree_edit3(){
		$id=$this->input->post('id');

	
		$qry=$this->db->query("select * from degree where id='$id'");
		return $qry->result();
	}

	public function Degree_update3(){
			$date=date("Y-m-d");

		$id=$this->input->post('id');
		$data=array(
		'degree'=> $this->input->post('name1'),
			
			'qualification_id'=> $this->input->post('class1'),
			'updated_on'=>$date,
		);
		$this->db->where('id',$id);
		
		$this->db->update('degree',$data);
	}
	public function Degree_delete3(){
			$date=date("Y-m-d");
		$id=$this->input->post('id');
			$data=array(
			'deleted_on'=>$date,
			'is_deleted'=>1,
		);

		$this->db->where('id',$id);
		$qry=$this->db->update('degree',$data);
	
	}

public function showqualification1(){
	$this->db->where('is_deleted',0);
	$qry=$this->db->get('qualification');
		return $qry->result();
}

	public function postinsert($image){
		$date=date("Y-m-d");
		$data=array(
			'post'=> $this->input->post('post'),
			'title'=> $this->input->post('title'),
			'image'=> $image,
			'created_on'=>$date,
			'is_deleted'=>0,
		);
		$this->db->insert('posts',$data);
	}
	public function heroesinsert(){
		
		$data=array(
			'marks'=> $this->input->post('marks'),
			'remarks'=> $this->input->post('remarks'),
			'std_id'=> $this->input->post('std_id'),
			'class_id'=> $this->input->post('class_id'),
			'section_id'=> $this->input->post('section_id'),
			'position'=> $this->input->post('position'),
			'session'=> $this->input->post('session'),
			
		);
		$this->db->insert('heros',$data);
	}




public function heroesshow(){
			$sid=$this->input->post('s_id');
			$cid=$this->input->post('c_id');
		
			$qry=$this->db->query("select h.id,h.position,h.marks,h.remarks,h.session,s.name,s.fathername,s.reg_no from heros as h,student_registration as s where s.section_id='$sid' and s.class_id='$cid' and h.std_id=s.id  ");
			return $qry->result();
		
		}

public function heroessessionshow(){
			
		
			$qry=$this->db->query("select * from session as s where s.is_deleted=0 ");
			return $qry->result();
		
		}
		


public function heroesstdshow(){
			$sid=$this->input->post('s');
			$cid=$this->input->post('c');

			$qry=$this->db->query("select * from student_registration as s where s.section_id='$sid' and s.class_id='$cid' and is_deleted=0");
			return $qry->result();
		
		}




public function heroesupdate(){
		$id=$this->input->post('id');
		
		$data=array(
		
			'marks'=> $this->input->post('marks1'),
			'remarks'=> $this->input->post('remarks1'),
			'std_id'=> $this->input->post('std_id1'),
			'class_id'=> $this->input->post('class_id1'),
			'section_id'=> $this->input->post('section_id1'),
			'position'=> $this->input->post('position1'),
			'session'=> $this->input->post('session1'),
		);
		$this->db->where('id',$id);
		
		$this->db->update('heros',$data);
	}
	public function heroesedit(){
		$id=$this->input->post('id');

		$this->db->where('id',$id);
		$qry=$this->db->get('heros');
		return $qry->result();
	}

	public function heroesdelete(){
		
		$id=$this->input->post('id');
		

		$this->db->where('id',$id);
		$qry=$this->db->delete('heros');
	

	}


public function feeinsert(){
		$date=date('m-y');
		$data=array(
			'pay_amount'=> $this->input->post('marks'),
			'fee_concession'=> $this->input->post('remarks'),
			'std_id'=> $this->input->post('std_id'),
			'class_id'=> $this->input->post('class_id'),
			'section_id'=> $this->input->post('section_id'),
			'total_fee'=> $this->input->post('position'),
			'rem_amount'=> $this->input->post('amount'),
			'date'=>$date,
		);
		$this->db->insert('fee_collection',$data);
	}


public function feeinsert1(){
	$std=$this->input->post('std_id1');

	$month=date('m-y',strtotime($this->input->post('month')));
	$qry=$this->db->where(['date'=>$month,'std_id'=>$std])->get('fee_collection')->num_rows();
	if($qry>0){
		return false;
	}
		else{

		$data=array(
			'pay_amount'=> $this->input->post('marks1'),
			'fee_concession'=> $this->input->post('remarks1'),
			'std_id'=> $std,
			'class_id'=> $this->input->post('class_id1'),
			'section_id'=> $this->input->post('section_id1'),
			'total_fee'=> $this->input->post('position1'),
			'rem_amount'=> $this->input->post('amount1'),
			'date'=>$month,
		);
		$this->db->insert('fee_collection',$data);
		return true;
	}
	}







	public function syllabus_insert5($image){
		$date=date("Y-m-d");

		$data=array(
		
			'syllabus' =>$image,
			
			'class_id'=> $this->input->post('class_id'),
			'created_on'=>$date,
			'is_deleted'=>0,
			

		);
		$this->db->insert('syllabus',$data);
			
		
	}

public function syllabus_show5(){
	$this->db->where('is_deleted',0);
	$qry=$this->db->get('syllabus');
		return $qry->result();
}
	
	public function syllabus_update5($image){
		$id=$this->input->post('id');
		$date=date("Y-m-d");

		$data=array(
		
			'syllabus' =>$image,
			
			'class_id'=> $this->input->post('class1'),
			'updated_on'=>$date,
		);
		$this->db->where('id',$id);
		
		$this->db->update('syllabus',$data);
	}
	public function syllabus_edit5(){
		$id=$this->input->post('id');

		$this->db->where('id',$id);
		$qry=$this->db->get('syllabus');
		return $qry->result();
	}

	public function syllabus_delete5(){
		$date=date("Y-m-d");
		$id=$this->input->post('id');
			$data=array(
			'deleted_on'=>$date,
			'is_deleted'=>1,
		);

		$this->db->where('id',$id);
		$qry=$this->db->update('syllabus',$data);
	
	}
	
	public function Studentfeereport(){
		$section_id=$this->input->post('s');
$class_id=$this->input->post('c');
		$std_id=$this->input->post('std_id');
	
		$qry=$this->db->query("select * from fee_collection as f,student_registration as s where s.id=f.std_id and s.id='$std_id' and s.class_id='$class_id' and s.section_id='$section_id'");
		return $qry->result();


	}

	public function feereport(){
		$section_id=$this->input->post('s');
$class_id=$this->input->post('c');
		$date=$this->input->post('date');
	
		$qry=$this->db->query("select * from fee_collection as f,student_registration as s where s.id=f.std_id and date='$date' and s.class_id='$class_id' and s.section_id='$section_id'");
		return $qry->result();


	}

	public function feecheck(){
		$std_id=$this->input->post('s');

		$date=date('m-y');
	
		$qry=$this->db->query("select * from fee_collection where std_id='$std_id' and date='$date'");
		return $qry->result();


	}




		public function postshow(){
		$this->db->where('is_deleted',0);
		$qry=$this->db->get('posts');

		return $qry->result();
	}
	public function postedit(){
		$id=$this->input->post('id');

		$this->db->where('id',$id);
		$qry=$this->db->get('posts');
		return $qry->result();
	}

	public function postupdate($image){
		$date=date("Y-m-d");
		$id=$this->input->post('id');
		$data=array(
			'post'=> $this->input->post('post1'),
			'image'=> $image,
			'title'=> $this->input->post('title1'),
			'updated_on'=>$date,
		);
		$this->db->where('id',$id);
	
		
		$this->db->update('posts',$data);
	}
	public function postdelete(){
		$date=date("Y-m-d");
		$id=$this->input->post('id');
			$data=array(
			'deleted_on'=>$date,
			'is_deleted'=>1,
		);

		$this->db->where('id',$id);
		$qry=$this->db->update('posts',$data);
	
	}

}