<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Attendance extends CI_Controller {

    function __construct(){
		parent:: __construct();
		$this->load->model('Attendance_model','m');

       if(!isset($_SESSION['login'])){


        redirect('MyLogin');
       }
	
    }
    	public function Student_Attendance()
			{
				
				$this->load->view('admin/header');
				$this->load->view('admin/sidebar');
				$this->load->view('user/attendance_view');
				$this->load->view('admin/footer');

			}
				public function Staff_Attendance()
			{
				
				$this->load->view('admin/header');
				$this->load->view('admin/sidebar');
				$this->load->view('user/tch_attendance');
				$this->load->view('admin/footer');

			}

			public function show()
			{	
				$data=$this->m->show();
				echo json_encode($data);


				}
	public function insert()
			{
				$data=$this->m->insert();
				echo json_encode($data);


				}
		public function showreport()
		{
			$this->load->model('m');
			$data=$this->m->showreport();
			echo json_encode($data);
		}



			public function show1()
			{	$this->load->model('m');
				$data=$this->m->show1();
				echo json_encode($data);


				}
	public function insert1()
			{	$this->load->model('m');
				$data=$this->m->insert1();
				echo json_encode($data);


				}
		public function showreport1()
		{
			$this->load->model('m');
			$data=$this->m->showreport1();
			echo json_encode($data);
		}
		public function roznamcha()
			{
				
				$this->load->view('admin/header');
				$this->load->view('admin/sidebar');
				
			$dat=$this->m->showroznamcha();
			$data1=$this->m->showroznamcha1();
			$data2=$this->m->showroznamcha2();
			$data3=$this->m->showroznamcha3();
			$data4=$this->m->showroznamcha4();
			$data5=$this->m->showroznamcha5();
			$data6=$this->m->showroznamcha6();

			$data7=$this->m->showroznamcha7();
			$data8=$this->m->showroznamcha8();
			$data9=$this->m->showroznamcha9();

			$data10=$this->m->showroznamcha10();
			$data11=$this->m->showroznamcha11();
			$data12=$this->m->showroznamcha12();
			$data13=$this->m->showroznamcha13();

			$data14=$this->m->showroznamcha14();

			$data15=$this->m->showroznamcha15();
			$data16=$this->m->showroznamcha16();
			$data17=$this->m->showroznamcha17();
			$data18=$this->m->showroznamcha18();

			$data19=$this->m->showroznamcha19();
			$data20=$this->m->showroznamcha20();
			$data21=$this->m->showroznamcha21();
			$data22=$this->m->showroznamcha22();
			$data23=$this->m->showroznamcha23();
			$data24=$this->m->showroznamcha24();
			$data25=$this->m->showroznamcha25();
			$data26=$this->m->showroznamcha26();
			$data27=$this->m->showroznamcha27();
			$data28=$this->m->showroznamcha28();
			$data29=$this->m->showroznamcha29();
				$data30=$this->m->showroznamcha30();
					$data31=$this->m->showroznamcha31();
					$data32=$this->m->showroznamcha32();
						$data33=$this->m->showroznamcha33();

			$this->load->view('user/std_roznamcha',['data30'=>$data30,'dat'=>$dat,'data1'=>$data1,'data2'=>$data2,'data3'=>$data3,'data4'=>$data4,'data5'=>$data5,'data6'=>$data6,'data7'=>$data7,'data8'=>$data8,'data9'=>$data9,'data10'=>$data10,'data11'=>$data11,'data12'=>$data12,'data13'=>$data13,'data14'=>$data14,'data15'=>$data15,'data16'=>$data16,'data17'=>$data17,'data18'=>$data18,'data19'=>$data19,'data20'=>$data20,'data21'=>$data21,'data22'=>$data22,'data23'=>$data23,'data24'=>$data24,'data25'=>$data25,'data26'=>$data26,'data27'=>$data27,'data28'=>$data28,'data29'=>$data29,'data31'=>$data31,'data32'=>$data32,'data33'=>$data33]);
				
				$this->load->view('admin/footer');

			}
			
		
          public function tch_roznamcha()
			{
				
				$this->load->view('admin/header');
				$this->load->view('admin/sidebar');
				$this->load->model('m');
			$data['result']=$this->m->tchroznamcha();
			$this->load->view('user/tch_roznamcha',$data);
				
				$this->load->view('admin/footer');

			}
			
			
}
