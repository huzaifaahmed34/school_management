<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class MyLoginModel extends CI_Model
{
	function __construct()
    {
        parent::__construct();
    }
	
	function get_user($user_name,$email)
	{
       
		$this->db->where('user_name', $user_name);
		$this->db->where('email',$email);
        $query = $this->db->get('aims_user');
		return $query->result();
	}
    function login($user_name,$pass)
	{
  
		$query=$this->db->query("select * from aims_user as u where  u.user_name='$user_name' and  u.password='$pass'");
		return $query->result();
	}
	
	// get user
	function get_user_by_id($id)
	{
		$this->db->where('id', $id);
        $query = $this->db->get('user');
		return $query->result();
	}
	
	// insert
	function insert_user()
    {
         $data=array(
        'full_name'=>$this->input->post('fname'),
         'lname'=>$this->input->post('lname'),
          'user_name'=>$this->input->post('user_name'),
         'email'=>$this->input->post('email'),
         'password'=>$this->input->post('password'),
            );
		return $this->db->insert('aims_user', $data);
	}
    
    function sendPassword()
    {
        $email=$this->input->post('user_name');
        $qry=$this->db->query("select * from aims_user where email='$email'");
        return $qry->result();
        
    }

}?>