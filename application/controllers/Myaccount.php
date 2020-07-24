<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class myaccount extends CI_Controller {

	 
	public function __construct()
	{
			parent::__construct();
                        $this->load->model(array('commonmodel'));
                        $this->load->helper('form');
                        $this->load->library('form_validation');
                        $this->load->helper('string');
    }	

    public function my_profile()
    {
      $id=$this->session->userdata('user_id');
		$data['title']="EDIT USER";
		$whr=array("id"=>$id);
		$data['user']=$this->commonmodel->fetch_result_with_condition_return_row("user",$whr);
		$data['cities']=$this->commonmodel->display_all_data('cities');
		$select=array('user_id',"f_name",'l_name','role','status');
		$cond=array("status"=>'1',"role"=>'manager');
	   $data['managerList'] =$this->commonmodel->fetch_selected_col_with_where("user",$select,$cond);
	  
      $this->load->view('common_files/header');
      $this->load->view('users/myProfile',$data);
      $this->load->view('common_files/footer');
    }

    function update_Profile()
	{
		$user=$this->input->post('user');
		$whr=array("id"=>$user['user_id']);
	   $this->commonmodel->update_data("user",$whr,$user);
	   $this->session->set_flashdata('true','User updated successfully !');
	  	redirect("Mydashboard");
	}

    public function set_password()
    {
            $str=$this->uri->segment(3);
            $select=array('user_id');
            $cond=array("password_string"=>$str);
            $data['id'] =$this->commonmodel->fetch_selected_col_with_where_row("user",$select,$cond);
              if(!empty($data['id'])){
                 $this->load->view("users/set_password",$data);
              }else{
                $this->session->set_flashdata('true','Your set password link has been expired please contact to admin ! ');
                redirect("login");    
              }
    }

    public function update_password()
    {
            $user_id=$this->input->post("user_id");
            $password=$this->input->post("password");
            $confpassword=$this->input->post("cofpassword");
            $this->form_validation->set_rules('user_id', 'user_id', 'trim|required');
            $this->form_validation->set_rules('password', 'New Password', 'trim|required');
            $this->form_validation->set_rules('cofpassword', 'Confirm Password', 'trim|required|matches[password]');
            if($this->form_validation->run() == true) {
                
              $select=array('password_string');
              $cond=array("id"=>$user_id);
              $data =$this->commonmodel->fetch_selected_col_with_where_row("user",$select,$cond);
               
                $flag=explode("-", $data->password_string);
              if($flag[1] == "npassword")
              {
                  $encrypt_password= password_hash($password, PASSWORD_DEFAULT);
                  $user=array("password_string"=>null,"password"=>$encrypt_password,"status"=>1);
                  $whr=array("id"=>$user_id);
                  $this->commonmodel->update_data("user",$whr,$user);
                  $this->session->set_flashdata('true','Your password set successfully ! ');
                  redirect("login");
              }else if($flag[1] == "fpassword")
              {
                  $encrypt_password= password_hash($password, PASSWORD_DEFAULT);
                  $user=array("password_string"=>null,"password"=>$encrypt_password);
                  $whr=array("id"=>$user_id);
                  $this->commonmodel->update_data("user",$whr,$user);
                  $this->session->set_flashdata('true','Your password set successfully ! ');
                  redirect("login");
              }

            
              
            } else {
                $this->session->set_flashdata('true','Somthing went wrong ! ');
                redirect("login");
            }
    
    }

    public function update_myPassword()
    {
      $user_id=$this->input->post("user_id");
      $password=$this->input->post("password");
      $confpassword=$this->input->post("cofpassword");
      $this->form_validation->set_rules('user_id', 'user_id', 'trim|required');
      $this->form_validation->set_rules('password', 'New Password', 'trim|required');
      $this->form_validation->set_rules('cofpassword', 'Confirm Password', 'trim|required|matches[password]');
      if($this->form_validation->run() == true) {
          
           
            $encrypt_password= password_hash($password, PASSWORD_DEFAULT);
            $user=array("password"=>$encrypt_password);
            $whr=array("id"=>$user_id);
            $this->commonmodel->update_data("user",$whr,$user);
            $this->session->set_flashdata('true','Your password updated successfully ! ');
            redirect("login");
          
      }
    }
    public function forgot_password()
    {
            $email=$this->input->post("email");
            
            $select=array('user_id','username');
            $cond=array("email"=>$email);
            $data =$this->commonmodel->fetch_selected_col_with_where_row("user",$select,$cond);
            if(!empty($data))
              {
                          $str=random_string('alnum', 16);
                          $str =  $str."-fpassword";
                          $whr=array("id"=>$data->user_id);
                          $this->commonmodel->update_data("user",$whr,array('password_string'=>$str)); 
                          $body="Forgot your password? <br><br>   Kindly visit the link below, to reset your password,";
                          $this->emailmodel->send_activation_mail($str,$email,$data->username,$body);
                          $this->session->set_flashdata('true','Please check your email to reset your password');
                          redirect("login");
              }else{
                $this->session->set_flashdata('true','Invalid email id !');
                redirect("login");
              }
             
    }
}