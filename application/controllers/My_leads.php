<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class my_leads extends CI_Controller {

     
    public function __construct()
    {
            parent::__construct();
            $this->load->model('user_model');
        $this->load->model('common_model');
        $this->load->model('callback_model');
        $this->load->model('leadmodel');
        $this->load->library('session');
        $this->load->model('login_model'); 
            // if($this->session->userdata('logged_in')){
            // }else{redirect("login");}
    }   
    
    public function my_leads()
    {
      
        $this->load->view('common_files/header');
        $this->load->view('leads/my_leads');
        $this->load->view('common_files/footer');
    }

    public function get_all_my_leads()
    {
            $ids= $this->uri->segment(3);
            if(isset($ids)){
                $id= $this->uri->segment(3);
            }else{
        $id=$this->session->userdata('user_id');}
        $results=$this->leadmodel->get_my_active_leads($id);


        $data = array();
        $i=1;
            foreach ($results  as $r) {
                array_push($data, array(
                        //print_r($r);
                        $i,
                        $r->leadid,
                        $r->name,
                        $r->contact_no1,
                        $r->email1,
                        $r->project_name,
                        $r->call_back_type,
                        $r->lead_status,
                        $r->date_added,
                        anchor('leads/edit_leads/'.$r->id, '<button type="button" rel="tooltip" title="" class="btn btn-primary btn-link btn-sm" data-original-title="Edit Task" aria-describedby="tooltip66014">
                        <i class="material-icons">edit</i>
                      <div class="ripple-container"><div class="ripple-decorator ripple-on ripple-out" style="left: 10px; top: 9px; background-color: rgb(156, 39, 176); transform: scale(3.44923);"></div></div></button>'),
                    

                     
                            
                ));
                $i++;
            }
            //print_r($results);
        echo json_encode(array('data' => $data));//send data to data table
    }

        public function get_all_my_dead_leads()
        {
            $ids= $this->uri->segment(3);
            if(isset($ids)){
                $id= $this->uri->segment(3);
            }else{
        $id=$this->session->userdata('user_id');}
            $results=$this->leadmodel->fetch_all_my_leads_by_status("Dead",$id);

    $data = array();
    $i=1;
        foreach ($results  as $r) {
            array_push($data, array(
                    //print_r($r);
                    $i,
                    $r->lead_id,
                    $r->name,
                    $r->phone_1,
                    $r->email_1,
                    $r->project_name,
                    $r->call_back_type,
                    $r->status_name,
                    $r->inserted_date,
                    anchor('leads/edit_leads/'.$r->id, '<button type="button" rel="tooltip" title="" class="btn btn-primary btn-link btn-sm" data-original-title="Edit Task" aria-describedby="tooltip66014">
                    <i class="material-icons">edit</i>
                    <div class="ripple-container"><div class="ripple-decorator ripple-on ripple-out" style="left: 10px; top: 9px; background-color: rgb(156, 39, 176); transform: scale(3.44923);"></div></div></button>'),
                

                 
                        
            ));
            $i++;
        }
        //print_r($results);
    echo json_encode(array('data' => $data));//send data to data table
        }

        public function get_all_my_close_leads()
        {
            $ids= $this->uri->segment(3);
            if(isset($ids)){
                $id= $this->uri->segment(3);
            }else{
        $id=$this->session->userdata('user_id');}
            $results=$this->leadmodel->fetch_all_my_leads_by_status(5,$id);

    $data = array();
    $i=1;
        foreach ($results  as $r) {
            array_push($data, array(
                    //print_r($r);
                    $i,
                    $r->leadid,
                        $r->name,
                        $r->contact_no1,
                        $r->email1,
                        $r->project_name,
                        $r->call_back_type,
                        $r->lead_status,
                        $r->date_added,
                    anchor('leads/edit_leads/'.$r->id, '<button type="button" rel="tooltip" title="" class="btn btn-primary btn-link btn-sm" data-original-title="Edit Task" aria-describedby="tooltip66014">
                    <i class="material-icons">edit</i>
                    <div class="ripple-container"><div class="ripple-decorator ripple-on ripple-out" style="left: 10px; top: 9px; background-color: rgb(156, 39, 176); transform: scale(3.44923);"></div></div></button>'),
                

                 
                        
            ));
            $i++;
        }
        //print_r($results);
    echo json_encode(array('data' => $data));//send data to data table
        }

        function get_all_important_leads($col)
        {
            $col=$this->uri->segment('3');
            $ids= $this->uri->segment(4);
            if(isset($ids)){
                $id= $this->uri->segment(4);
            }else{
        $id=$this->session->userdata('user_id');
    }
            //$results=$results=$this->callback_model->fetch_important_callbacks($id);
    
    $results=$this->leadmodel->get_all_import_leads($col,$id);
           // print_r($results);die;
    $data = array();
    $i=1;
        foreach ($results  as $r) {
            array_push($data, array(
                    //print_r($r);
                    $i,
                     $r->leadid,
                    $r->name,
                    $r->contact_no1,
                    $r->email1,
                    $r->project_name,
                    $r->call_back_type,
                    $r->lead_status,
                    $r->date_added,
                    anchor('leads/edit_leads/'.$r->id, '<button type="button" rel="tooltip" title="" class="btn btn-primary btn-link btn-sm" data-original-title="Edit Task" aria-describedby="tooltip66014">
                    <i class="material-icons">edit</i>
                    <div class="ripple-container"><div class="ripple-decorator ripple-on ripple-out" style="left: 10px; top: 9px; background-color: rgb(156, 39, 176); transform: scale(3.44923);"></div></div></button>'),
                

                 
                        
            ));
            $i++;
        }
        //print_r($results);
    echo json_encode(array('data' => $data));//send data to data table
        }

        function get_all_site_visit_fix()
        {
            $col=$this->uri->segment('3');
            $ids= $this->uri->segment(4);
            if(isset($ids)){
                $id= $this->uri->segment(4);
            }else{
        $id=$this->session->userdata('user_id');}
            $results=$this->leadmodel->get_all_site_visit_fixes($id);

    $data = array();
    $i=1;
        foreach ($results  as $r) {
            array_push($data, array(
                    //print_r($r);
                    $i,
                    $r->leadid,
                        $r->name,
                        $r->contact_no1,
                        $r->email1,
                        $r->project_name,
                        $r->call_back_type,
                        $r->lead_status,
                        $r->date_added,
                    anchor('leads/edit_leads/'.$r->id, '<button type="button" rel="tooltip" title="" class="btn btn-primary btn-link btn-sm" data-original-title="Edit Task" aria-describedby="tooltip66014">
                    <i class="material-icons">edit</i>
                    <div class="ripple-container"><div class="ripple-decorator ripple-on ripple-out" style="left: 10px; top: 9px; background-color: rgb(156, 39, 176); transform: scale(3.44923);"></div></div></button>'),
                

                 
                        
            ));
            $i++;
        }
        //print_r($results);
    echo json_encode(array('data' => $data));//send data to data table

        }
        public function get_all_todays_leads()
        {
                                    $col=$this->uri->segment('3');
                                    $ids= $this->uri->segment(4);
                                    if(isset($ids)){
                                        $id= $this->uri->segment(4);
                                    }else{
                                        $id=$this->session->userdata('user_id');}
                                    $results=$this->leadmodel->fetch_all_todays_leadsd($id);

                            $data = array();
                            $i=1;
                                foreach ($results  as $r) {
                                    array_push($data, array(
                                            //print_r($r);
                                            $i,
                                            $r->leadid,
                                            $r->name,
                                            $r->contact_no1,
                                            $r->email1,
                                            $r->project_name,
                                            $r->call_back_type,
                                            $r->lead_status,
                                            $r->date_added,
                                            anchor('leads/edit_leads/'.$r->id, '<button type="button" rel="tooltip" title="" class="btn btn-primary btn-link btn-sm" data-original-title="Edit Task" aria-describedby="tooltip66014">
                                            <i class="material-icons">edit</i>
                                            <div class="ripple-container"><div class="ripple-decorator ripple-on ripple-out" style="left: 10px; top: 9px; background-color: rgb(156, 39, 176); transform: scale(3.44923);"></div></div></button>'),
                                        

                                        
                                                
                                    ));
                                    $i++;
                                }
                                //print_r($results);
                            echo json_encode(array('data' => $data));//send data to data table
        }

        public function add_leads()
    {
     
        $data['title']="ADD LEADS";
        $data['dept']=$this->commonmodel->display_all_data("dept");
        $data['project']=$this->commonmodel->display_all_data("project");
        $data['status']=$this->commonmodel->display_all_data("lead_status");
         $select=array('user_id',"f_name",'l_name','role','status');
         $cond=array("status"=>1);
        $data['users']=$this->commonmodel->fetch_selected_col_with_where("users",$select,$cond);
        $this->load->view('common_files/header');
        $this->load->view('leads/add_leads',$data);
        $this->load->view('common_files/footer');
    }

}