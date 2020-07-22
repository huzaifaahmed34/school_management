
<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Resultmodel extends CI_Model {


public function saveResult(){
$date=date('y-m-d');
    $std_id=$this->input->post('std_id');
    $class_id=$this->input->post('class_id');
    $section_id=$this->input->post('section_id');
        
    //insert data for class prep, nursury
    if($class_id <=2 and $class_id < 3)
    {
        	$data=array(
            'std_id'=>$std_id,
            'class_id'=>$class_id,
            'section_id'=>$section_id,
            'urdu'=>$this->input->post('urdu'),
            'english'=>$this->input->post('english'),
            'math'=>$this->input->post('math'),
             'nazra'=>$this->input->post('nazra'),
            'urdu_oral'=>$this->input->post('urdu_oral'),
            'math_oral'=>$this->input->post('math_oral'),
            'english_oral'=>$this->input->post('english_oral'),
            'total_urdu'=>$this->input->post('t_urdu'),
             'total_english'=>$this->input->post('t_english'),
              'total_math'=>$this->input->post('t_math'),
               'total_urduoral'=>$this->input->post('t_urdu_oral'),
                'total_englishoral'=>$this->input->post('t_english_oral'),
                 'total_mathoral'=>$this->input->post('t_math_oral'),
                  'total_nazra'=>$this->input->post('t_nazra'),


           'created_on'=>date('Y-m-d'),
		);
		 $qry=$this->db->insert('result',$data);
          }
    
         else if($class_id <=3){
           
            $data=array(
            'std_id'=>$std_id,
            'class_id'=>$class_id,
            'section_id'=>$section_id,
            'urdu'=>$this->input->post('urdu'),
            'english'=>$this->input->post('english'),
            'math'=>$this->input->post('math'),
            'gk'=>$this->input->post('gk'),
            'total_urdu'=>$this->input->post('t_urdu'),
            'total_english'=>$this->input->post('t_english'),
            'total_gk'=>$this->input->post('t_gk'),
            'total_math'=>$this->input->post('t_math'),
            'created_on'=>date('Y-m-d'),




		);
		 $qry=$this->db->insert('result',$data);
         }
    
     
      
     if($class_id >=5 AND $class_id < 6 )
       {
           $data=array(
            'std_id'=>$std_id,
            'class_id'=>$class_id,
            'section_id'=>$section_id,
            'urdu'=>$this->input->post('urdu'),
            'english'=>$this->input->post('english'),
            'math'=>$this->input->post('math'),
            'gk'=>$this->input->post('gk'),
            'islamic_study'=>$this->input->post('islamic_study'),
            'created_on'=>date('Y-m-d'),

            'total_urdu'=>$this->input->post('t_urdu'),
            'total_english'=>$this->input->post('t_english'),
            'total_math'=>$this->input->post('t_math'),
            'total_islamic_study'=>$this->input->post('t_islamic_study'),
            'total_gk'=>$this->input->post('t_gk'),
           
		);
		 $qry=$this->db->insert('result',$data); 
       }
    
    if($class_id >=6 AND  $class_id <=7)
    {
        $data=array(
            'std_id'=>$std_id,
            'class_id'=>$class_id,
            'section_id'=>$section_id,
            'urdu'=>$this->input->post('urdu'),
            'english'=>$this->input->post('english'),
            'math'=>$this->input->post('math'),
            'gk'=>$this->input->post('gk'),
            'islamic_study'=>$this->input->post('islamic_study'),
            'pak_study'=>$this->input->post('pak_study'),
            'created_on'=>date('Y-m-d'),
  'total_urdu'=>$this->input->post('t_urdu'),
  'total_english'=>$this->input->post('t_english'),
  'total_math'=>$this->input->post('t_math'),
    'total_islamic_study'=>$this->input->post('t_islamic_study'),
      'total_gk'=>$this->input->post('t_gk'),
       'total_pak_study'=>$this->input->post('t_pak_study'),

           
		);
		 $qry=$this->db->insert('result',$data); 
    }
    
    if($class_id >=8 AND $class_id <=10)
    {
       $data=array(
            'std_id'=>$std_id,
            'class_id'=>$class_id,
            'section_id'=>$section_id,
            'urdu'=>$this->input->post('urdu'),
            'english'=>$this->input->post('english'),
            'math'=>$this->input->post('math'),
            'gk'=>$this->input->post('gk'),
            'islamic_study'=>$this->input->post('islamic_study'),
            'pak_study'=>$this->input->post('pak_study'),
            'arabic'=>$this->input->post('arabic'),
           'computer'=>$this->input->post('computer'),
           'elective8'=>$this->input->post('elective1'),
            'created_on'=>date('Y-m-d'),
 'total_urdu'=>$this->input->post('t_urdu'),
  'total_english'=>$this->input->post('t_english'),
   'total_math'=>$this->input->post('t_math'),
    'total_gk'=>$this->input->post('t_gk'),
     'total_islamic_study'=>$this->input->post('t_islamic_study'),
      'total_pak_study'=>$this->input->post('t_pak_study'),
       'total_elective8'=>$this->input->post('t_elective1'),
        'total_computer'=>$this->input->post('t_computer'),
 'total_arabic'=>$this->input->post('t_arabic'),


  
		);
		 $qry=$this->db->insert('result',$data); 
    }
    
    if($class_id >=11 AND $class_id <=12)
    {
         $data=array(
            'std_id'=>$std_id,
            'class_id'=>$class_id,
            'section_id'=>$section_id,
            'urdu'=>$this->input->post('urdu'),
            'english'=>$this->input->post('english'),
            'math'=>$this->input->post('math'),
            'islamic_study'=>$this->input->post('islamic_study'),
            'pak_study'=>$this->input->post('pak_study'),
            'physics'=>$this->input->post('physics'),
           'chemistry'=>$this->input->post('chemistry'),
           'elective_matric'=>$this->input->post('elective'),
            'subject'=>$this->input->post('subject'),
            'created_on'=>date('Y-m-d'),
 'total_urdu'=>$this->input->post('t_urdu'),
  'total_english'=>$this->input->post('t_english'),
   'total_math'=>$this->input->post('t_math'),
    'total_islamic_study'=>$this->input->post('t_islamic_study'),
     'total_pak_study'=>$this->input->post('t_pak_study'),
      'total_physics'=>$this->input->post('t_physics'),
       'total_chemistry'=>$this->input->post('t_chemistry'),
        'total_elective_matric'=>$this->input->post('t_elective'),


		);
		 $qry=$this->db->insert('result',$data); 
    }
        
          if($this->db->affected_rows() > 0){
			return true;
		}else{
			return false;
		}
          
     
    }
    

    public function resultcheck(){
        $std_id=$this->input->post('s');

        $date=date('m');
     $y=date('Y');

        $qry=$this->db->query("select * from result where std_id='$std_id' and MONTH(created_on)='$date' and YEAR(created_on)='$y'");
        return $qry->result();


    }

    public function resultcheck1(){
        $std_id=$this->input->post('s_id');

        $date=date('m');
    
        $qry=$this->db->query("select * from student_registration where reg_no='$std_id' or b_form='$std_id'");
        return $qry->result();


    }
    public function getStudent()
    {
        $sid=$this->input->post('s_id');
			$cid=$this->input->post('c_id');
		
			$qry=$this->db->query("select * from student_registration as s where s.section_id='$sid' and s.class_id='$cid' and s.is_deleted=0 and s.status='In-Progress'");
			return $qry->result();
    }

       public function resultcard($regno)
    {           $date=date('m');
    $y=date('Y');
            $qry=$this->db->query("SELECT r.id,r.created_on,s.name,s.fathername,r.class_id,r.std_id FROM result as r,student_registration as s
            WHERE r.std_id=s.id AND (s.reg_no='$regno' or s.b_form='$regno') and  MONTH(r.created_on)='$date' and YEAR(r.created_on)='$y'");
            return $qry->result();
    }  


        
          public function getResult($std_id,$class_id)
    {        
			$qry=$this->db->query("SELECT r.id,r.created_on,s.name,s.fathername,r.class_id,r.std_id FROM result r,student_registration s
            WHERE r.std_id=s.id AND r.std_id=$std_id AND r.class_id=$class_id ");
			return $qry->result();
    }  

     public function getResultall($std_id,$class_id)
    {       
      $qry=$this->db->query("SELECT  r.id,r.created_on,s.name,s.fathername,r.class_id,r.std_id FROM result r,student_registration s
            WHERE r.std_id=s.id AND r.std_id=$std_id AND r.class_id=$class_id");
      return $qry->result();
    }  
              
    public function allResultCard($classId,$sectionId)
    {            $date=date('m');
    $y=date('Y');
     $qry=$this->db->query("SELECT * FROM result r,student_registration s
     WHERE r.std_id=s.id AND r.section_id=$sectionId AND r.class_id=$classId and  MONTH(r.created_on)='$date' and YEAR(r.created_on)='$y'");
      return $qry->result();
    } 
    
	}