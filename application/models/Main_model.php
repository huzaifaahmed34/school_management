<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class main_model extends CI_Model{
			public function post_show(){
					$qry1=$this->db->query('select * from posts where is_deleted=0  order by id DESC limit 5');
					return $qry1->result();


			}
	public function heroes_show(){
					$qry=$this->db->query('select * from heros as h,student_registration as s where h.std_id=s.id and  s.is_deleted=0  order by h.id DESC limit 6');
					return $qry->result();


			}
public function syllabus_show(){
                    $qry=$this->db->query('select * from syllabus as s,class as c  where s.is_deleted=0 and c.is_deleted=0 and s.class_id=c.id');
                    return $qry->result();


            }


				public function attendance_show(){
					$data=$this->input->post('data');
					$date1=date('Y-m-01');
					$date=date('Y-m-d');
					$qry=$this->db->query("SELECT * from student_registration as s,attendance as a,class as c where s.id=a.st_id and s.class_id=c.id and a.class_id=c.id and s.reg_no='$data' and a.date Between '$date1' and '$date'");
   
					return $qry->result();


			}

				public function heroes(){
					$qry=$this->db->query('select * from heros as h,student_registration as s,class as c where h.std_id=s.id and h.class_id=c.id and s.is_deleted=0  order by h.id DESC ');
					return $qry->result();


			}
			public function count_show(){
					$qry=$this->db->query("SELECT  (
SELECT COUNT(*)
    FROM   student_registration where status='Completed'
    ) AS c,
    (
    SELECT COUNT(*)
    FROM    student_registration where status='In-Progress'
    ) AS c1,
    (
    SELECT COUNT(*)
    FROM    student_registration
    ) AS c2,
     (
    SELECT COUNT(*)
    FROM   tch_registration
    ) AS c3");
					return $qry->result();


			}





			}