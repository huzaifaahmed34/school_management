<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Attendance_model extends CI_Model {

		
		public function show(){
			$sid=$this->input->post('s_id');
			$cid=$this->input->post('c_id');
		
			$qry=$this->db->query("select * from student_registration as s where s.section_id='$sid' and s.class_id='$cid' and s.is_deleted=0 and s.status='In-Progress'");
			return $qry->result();
		
		}
		public function insert(){
			
			$class_id=$this->input->post('class_id1');

			$sec_id=$this->input->post('sec_id1');
			$date=date("Y-m-d");
				
// Attandance Chek
	$check=$this->db->query("select * from attendance where class_id='$class_id' and section_id='$sec_id' and Date='$date'");
	$check1=$check->num_rows();
	
	if($check1>0){
				return 5;		
	}
	else{

				$count=$this->db->query("SELECT count(*) as c FROM `student_registration` WHERE class_id='$class_id' and section_id='$sec_id' and is_deleted=0");
				$qry=$count->result();
				foreach ($qry as $k) {
					# code...
				
				$r=$k->c;

			};
				
 				for($i=1;$i<=$r;$i++){
 					
 				
					$data=array(
						'st_id'=>$this->input->post('st_id'.$i),
						'class_id'=>$this->input->post('class_id'.$i),
						'section_id'=>$this->input->post('sec_id'.$i),
						'Date'=>$date,	
						'attendance'=>$this->input->post('attandance'.$i),
                    
                    );
                    $attendance=$this->input->post('attandance'.$i);
                     $contect=$this->input->post('contect'.$i);
					$this->db->insert('attendance',$data);
                    if($attendance=='Absent' OR $attendance=='Leave')
                    {
                          /*Send SMS Module                  
  $strResult = "n/a";
  $strRecipient = "+92";
  $strPincode = "";
  
  $objGsm = new COM("AxSms.Gsm", NULL, CP_UTF8 );
  $objGsm->LogFile = sys_get_temp_dir()."Gsm.log"; 
  //Windows default: 'C:\Windows\Temp\Gsm.log'
  
  //Form submitted
 
    $obj;
    $strMessageReference;
    $objSmsMessage   = new COM("AxSms.Message",    NULL, CP_UTF8 );
    $objSmsConstants = new COM("AxSms.Constants" , NULL, CP_UTF8 );
    
    $strName = "D-Link HSPA+DataCard Diagnostics Interface #2";
    $strRecipient = '';//$_POST["txtToAddress"];
    $iDeviceSpeed = '';//$_POST["ddlDeviceSpeed"];
    $objGsm->Clear();
    $objGsm->LogFile ='';// $_POST["txtResult"];
    $objGsm->Open($strName, $iDeviceSpeed);
    
    if ($objGsm->LastError != 0)
    {
      $strResult = $objGsm->LastError . ": " . $objGsm->GetErrorDescription($objGsm->LastError);
      $objGsm->Close();
    }
    else
    {
    
        $nmb=$contect;
      $objSmsMessage->Clear();
      $objSmsMessage->ToAddress =$nmb;
      $objSmsMessage->Body = 'Dear Parents, sms testing';//$_POST["txtMessage"];
     
      if (isset( $_POST["cbxUnicode"] ))
      {
        $objSmsMessage->DataCoding = $objSmsConstants->DATACODING_UNICODE;
      }
      
      //Send the message !
      $obj = $objSmsMessage;
      $objGsm->SendSms($obj, $objSmsConstants->MULTIPART_ACCEPT, 0);
      $objSmsMessage = $obj;
      
      $strResult = $objGsm->LastError . ": " . $objGsm->GetErrorDescription($objGsm->LastError);
      // loop end yaha krni ha
      $objGsm->Close();
   
    }
                    //sms module end here */
                    }

				};
			}

		}

		public function showreport(){
				$sec_id=$this->input->post('s');
			$class_id=$this->input->post('c');
			$date=$this->input->post('date');
		
		$qry=$this->db->query("select * from attendance as a,student_registration as s where a.st_id=s.id and a.class_id='$class_id' and a.section_id='$sec_id' and Date='$date'");
		return $qry->result();



		}

		public function show1(){
			
			$qry=$this->db->query("select * from tch_registration where is_deleted=0 and status='1' ");
			return $qry->result();
		
		}
		public function insert1(){
			
		
			$date=date("Y-m-d");
				

	$check=$this->db->query("select * from staff_attendance where date='$date'");
	$check1=$check->num_rows();
	
	if($check1>0){
				return 5;		
	}
	else{

				$count=$this->db->query("SELECT count(*) as c FROM `tch_registration` where is_deleted=0");
				$qry=$count->result();
				foreach ($qry as $k) {
					# code...
				
				$r=$k->c;

			};
				
 				for($i=1;$i<=$r;$i++){
 					
 				
					$data=array(
						'tch_id'=>$this->input->post('st_id'.$i),
						
						'Date'=>$date,	
						'attendance'=>$this->input->post('present'.$i),
						
												);
					$this->db->insert('staff_attendance',$data);
				};
			}

		}

		public function showreport1(){
				
			$date=$this->input->post('date');
		
		$qry=$this->db->query("select * from staff_attendance as s,tch_registration as t where s.tch_id=t.id  and Date='$date'");
		return $qry->result();



		}

		public function showroznamcha31(){
		
				$qry=$this->db->query("SELECT * FROM `student_registration` as s,class as c,section as sec,attendance as a 
                where s.id=a.st_id and s.class_id=c.id and s.section_id=sec.id and c.id=1 and section='A'");
			return $qry->result();
			}
        public function showroznamcha32(){
    
        $qry=$this->db->query("SELECT * FROM `student_registration` as s,class as c,section as sec,attendance as a 
                where s.id=a.st_id and s.class_id=c.id and s.section_id=sec.id and c.id=1 and section='B'");
      return $qry->result();
      }
        public function showroznamcha30(){
        
                $qry=$this->db->query("SELECT * FROM `student_registration` as s,class as c,section as sec,attendance as a where s.id=a.st_id and s.class_id=c.id and s.section_id=sec.id and c.id=2 and section='A'");
            return $qry->result();
            }
        public function showroznamcha33(){
        
                $qry=$this->db->query("SELECT * FROM `student_registration` as s,class as c,section as sec,attendance as a where s.id=a.st_id and s.class_id=c.id and s.section_id=sec.id and c.id=2 and section='B'");
            return $qry->result();
            }
        public function showroznamcha(){
        
                $qry=$this->db->query("SELECT * FROM `student_registration` as s,class as c,section as sec,attendance as a where s.id=a.st_id and s.class_id=c.id and s.section_id=sec.id and c.id='3' and sec.section='A' and s.is_deleted=0");
            return $qry->result();
            }

        public function showroznamcha1(){
        
                $qry=$this->db->query("SELECT * FROM `student_registration` as s,class as c,section as sec,attendance as a where s.id=a.st_id and s.class_id=c.id and s.section_id=sec.id and c.id=3 and sec.section='B'  and s.is_deleted=0");
            return $qry->result();
            }
        public function showroznamcha2(){
        
                $qry=$this->db->query("SELECT * FROM `student_registration` as s,class as c,section as sec,attendance as a where s.id=a.st_id and s.class_id=c.id and s.section_id=sec.id and c.id=3 and sec.section='C' and s.is_deleted=0");
            return $qry->result();
            }


        public function showroznamcha3(){
        
                $qry=$this->db->query("SELECT * FROM `student_registration` as s,class as c,section as sec,attendance as a where s.id=a.st_id and s.class_id=c.id and s.section_id=sec.id and c.id=4  and s.is_deleted=0 and sec.section='A'");
            return $qry->result();
            }


                public function showroznamcha4(){
        
                $qry=$this->db->query("SELECT * FROM `student_registration` as s,class as c,section as sec,attendance as a where s.id=a.st_id and s.class_id=c.id and s.section_id=sec.id and c.id=4  and s.is_deleted=0  and section='B'");
            return $qry->result();
            }


                public function showroznamcha5(){
        
                $qry=$this->db->query("SELECT * FROM `student_registration` as s,class as c,section as sec,attendance as a where s.id=a.st_id and s.class_id=c.id and s.section_id=sec.id and c.id=4  and s.is_deleted=0  and section='C'");
            return $qry->result();
            }


                public function showroznamcha6(){
        
                $qry=$this->db->query("SELECT * FROM `student_registration` as s,class as c,section as sec,attendance as a where s.id=a.st_id and s.class_id=c.id and s.section_id=sec.id and c.id=5 and s.is_deleted=0  and section='A'");
            return $qry->result();
            }


                      public function showroznamcha7(){
        
                $qry=$this->db->query("SELECT * FROM `student_registration` as s,class as c,section as sec,attendance as a where s.id=a.st_id and s.class_id=c.id and s.section_id=sec.id and c.id=5  and s.is_deleted=0   and section='B'");
            return $qry->result();
            }


                      public function showroznamcha8(){
    
                $qry=$this->db->query("SELECT * FROM `student_registration` as s,class as c,section as sec,attendance as a where s.id=a.st_id and s.class_id=c.id and s.section_id=sec.id and c.id=5  and s.is_deleted=0   and section='C'");
            return $qry->result();
            }


                      public function showroznamcha9(){
        
                $qry=$this->db->query("SELECT * FROM `student_registration` as s,class as c,section as sec,attendance as a where s.id=a.st_id and s.class_id=c.id and s.section_id=sec.id and c.id=6  and s.is_deleted=0   and section='A'");
            return $qry->result();
            }


                      public function showroznamcha10(){
        
                $qry=$this->db->query("SELECT * FROM `student_registration` as s,class as c,section as sec,attendance as a where s.id=a.st_id and s.class_id=c.id and s.section_id=sec.id and c.id=6 and s.is_deleted=0  and section='B'");
            return $qry->result();
            }


                      public function showroznamcha11(){
        
                $qry=$this->db->query("SELECT * FROM `student_registration` as s,class as c,section as sec,attendance as a where s.id=a.st_id and s.class_id=c.id and s.section_id=sec.id and c.id=6  and s.is_deleted=0  and section='C'");
            return $qry->result();
            }


                      public function showroznamcha12(){
        
                $qry=$this->db->query("SELECT * FROM `student_registration` as s,class as c,section as sec,attendance as a where s.id=a.st_id and s.class_id=c.id and s.section_id=sec.id and c.id=7  and s.is_deleted=0  and section='A'");
            return $qry->result();
            }


                      public function showroznamcha13(){
        
                $qry=$this->db->query("SELECT * FROM `student_registration` as s,class as c,section as sec,attendance as a where s.id=a.st_id and s.class_id=c.id and s.section_id=sec.id and c.id=7 and s.is_deleted=0  and section='B'");
            return $qry->result();
            }


                      public function showroznamcha14(){
        
                $qry=$this->db->query("SELECT * FROM `student_registration` as s,class as c,section as sec,attendance as a where s.id=a.st_id and s.class_id=c.id and s.section_id=sec.id and c.id=7  and s.is_deleted=0  and section='C'");
            return $qry->result();
            }


                      public function showroznamcha15(){
        
                $qry=$this->db->query("SELECT * FROM `student_registration` as s,class as c,section as sec,attendance as a where s.id=a.st_id and s.class_id=c.id and s.section_id=sec.id and c.id=8  and s.is_deleted=0  and section='A'");
            return $qry->result();
            }


                      public function showroznamcha16(){
        
                $qry=$this->db->query("SELECT * FROM `student_registration` as s,class as c,section as sec,attendance as a where s.id=a.st_id and s.class_id=c.id and s.section_id=sec.id and c.id=8  and s.is_deleted=0  and section='B'");
            return $qry->result();
            }


                      public function showroznamcha17(){
        
                $qry=$this->db->query("SELECT * FROM `student_registration` as s,class as c,section as sec,attendance as a where s.id=a.st_id and s.class_id=c.id and s.section_id=sec.id and c.id=8  and s.is_deleted=0  and section='C'");
            return $qry->result();
            }


                      public function showroznamcha18(){
        
                $qry=$this->db->query("SELECT * FROM `student_registration` as s,class as c,section as sec,attendance as a where s.id=a.st_id and s.class_id=c.id and s.section_id=sec.id and c.id=9  and s.is_deleted=0  and section='A'");
            return $qry->result();
            }


                      public function showroznamcha19(){
        
                $qry=$this->db->query("SELECT * FROM `student_registration` as s,class as c,section as sec,attendance as a where s.id=a.st_id and s.class_id=c.id and s.section_id=sec.id and c.id=9  and s.is_deleted=0 and section='B'");
            return $qry->result();
            }


                      public function showroznamcha20(){
        
                $qry=$this->db->query("SELECT * FROM `student_registration` as s,class as c,section as sec,attendance as a where s.id=a.st_id and s.class_id=c.id and s.section_id=sec.id and c.id=9  and s.is_deleted=0 and section='C'");
            return $qry->result();
            }


                      public function showroznamcha21(){
        
                $qry=$this->db->query("SELECT * FROM `student_registration` as s,class as c,section as sec,attendance as a where s.id=a.st_id and s.class_id=c.id and s.section_id=sec.id and c.id=10  and s.is_deleted=0 and section='A'");
            return $qry->result();
            }


                      public function showroznamcha22(){
        
                $qry=$this->db->query("SELECT * FROM `student_registration` as s,class as c,section as sec,attendance as a where s.id=a.st_id and s.class_id=c.id and s.section_id=sec.id and c.id=10 and s.is_deleted=0 and section='B'");
            return $qry->result();
            }


                      public function showroznamcha23(){
        
                $qry=$this->db->query("SELECT * FROM `student_registration` as s,class as c,section as sec,attendance as a where s.id=a.st_id and s.class_id=c.id and s.section_id=sec.id and c.id=10  and s.is_deleted=0 and section='C'");
            return $qry->result();
            }


                      public function showroznamcha24(){
        
                $qry=$this->db->query("SELECT * FROM `student_registration` as s,class as c,section as sec,attendance as a where s.id=a.st_id and s.class_id=c.id and s.section_id=sec.id and c.id=11  and s.is_deleted=0 and section='A'");
            return $qry->result();
            }


                      public function showroznamcha25(){
        
                $qry=$this->db->query("SELECT * FROM `student_registration` as s,class as c,section as sec,attendance as a where s.id=a.st_id and s.class_id=c.id and s.section_id=sec.id and c.id=11  and s.is_deleted=0 and section='B'");
            return $qry->result();
            }


                      public function showroznamcha26(){
        
                $qry=$this->db->query("SELECT * FROM `student_registration` as s,class as c,section as sec,attendance as a where s.id=a.st_id and s.class_id=c.id and s.section_id=sec.id and c.id=11  and s.is_deleted=0 and section='C'");
            return $qry->result();
            }


                      public function showroznamcha27(){
        
                $qry=$this->db->query("SELECT * FROM `student_registration` as s,class as c,section as sec,attendance as a where s.id=a.st_id and s.class_id=c.id and s.section_id=sec.id and c.id=12  and s.is_deleted=0 and section='A'");
            return $qry->result();
            }


                      public function showroznamcha28(){
        
                $qry=$this->db->query("SELECT * FROM `student_registration` as s,class as c,section as sec,attendance as a where s.id=a.st_id and s.class_id=c.id and s.section_id=sec.id and c.id=12  and s.is_deleted=0 and section='B'");
            return $qry->result();
            }


                      public function showroznamcha29(){
        
                $qry=$this->db->query("SELECT * FROM `student_registration` as s,class as c,section as sec,attendance as a where s.id=a.st_id and s.class_id=c.id and s.section_id=sec.id and c.id=12  and s.is_deleted=0 and section='C'");
            return $qry->result();
            }



public function tchroznamcha(){
	$date=date("Y-m-d");
				$qry=$this->db->query("SELECT * FROM staff_attendance,tch_registration as s WHERE staff_attendance.attendance='Absent' and s.id=staff_attendance.tch_id and staff_attendance.date='$date' ");
		
			return $qry->result();
			

		}


}