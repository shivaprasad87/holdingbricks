<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class leadmodel extends CI_Model {
    public function __construct()
	{
			parent::__construct();
			$this->load->database();
        
    }

    function fetch_all_leads_by_status($status,$id)
    {
        $query='SELECT C.*,p.project_name,ls.status_name FROM callback C join project p on C.project_id = p.project_id join lead_status ls on
        C.status_id=ls.status_id  where status_name != "Dead" and status_name != "Close" and assign_to = "'.$id.'" or assign_to = "" or assign_to = null';
        $query=$this->db->query($query);
        return  $query->result();

    } 
    function fetch_all_my_leads_by_status($status,$id)
    {
        $query='SELECT C.*,p.name as project_name ,ls.name as lead_status,ct.name as call_back_type FROM callback C join project p on C.project_id = p.id join lead_source ls on
        C.status_id=ls.id  join callback_type ct on C.callback_type_id = ct.id where ls.id ="'.$status.'" and user_id = "'.$id.'"';
        $query=$this->db->query($query);
        return  $query->result();

    }

    function fetch_all_my_leads_by_status_ALL($status,$id)
    {
        $query='SELECT C.*,p.project_name,ls.status_name FROM callback C join project p on C.project_id = p.project_id join lead_status ls on
        C.status_id=ls.status_id  where status_name != "Dead" and status_name != "Close" and assign_to = "'.$id.'"';
        $query=$this->db->query($query);
        return  $query->result();

    }


    function fetch_all_dead_leads($status)
    {
        $query='SELECT C.*,u.f_name,u.l_name,p.project_name,ls.status_name FROM callback C join project p on C.project_id = p.project_id join lead_status ls on
        C.status_id=ls.status_id left join users u on C.assign_to = u.user_id where status_name="'.$status.'" ';
        $query=$this->db->query($query);
        return  $query->result();

    }

    function fetch_lead_by_id($id)
    {
        $query='SELECT C.*,u.f_name,u.l_name,p.project_name,ls.status_name FROM callback C join project p on C.project_id = p.project_id join lead_status ls on
        C.status_id=ls.status_id left join users u on C.assign_to = u.user_id where C.id="'.$id.'" ';
        $query=$this->db->query($query);
        return  $query->row();

    }

    function get_all_import_leads($col,$id)
    {
        $query='SELECT C.*,p.name as project_name ,ls.name as lead_status, ct.name as call_back_type FROM callback C join project p on C.project_id = p.id join lead_source ls on
        C.status_id=ls.id join callback_type ct on C.callback_type_id = ct.id where '.$col.'= "1" and  '.$col.'  ="1" and C.user_id="'.$id.'"  and C.status_id != 4  and C.status_id != 5';
        $query=$this->db->query($query);
        return  $query->result();

    }
    public function get_all_leads()
    {
        $query="select  count(ls.status_name) as count,ls.status_name from callback C join lead_status ls on C.status_id = ls.status_id group by ls.status_name";
        $query=$this->db->query($query);
        return  $query->result();

    }
    public function get_all_leads_byuser($id)
    {
        $query="select  count(ls.status_name) as count,ls.status_name from callback C join lead_status ls on C.status_id = ls.status_id where C.assign_to= '".$id."'group by ls.status_name";
        $query=$this->db->query($query);
        return  $query->result();

    }

    public function fetch_all_todays_leadsd($id)
    {
   
        $query='SELECT C.*,p.name as project_name ,ls.name as lead_status, ct.name as call_back_type  FROM callback C join project p on C.project_id = p.id join lead_source ls on
        C.status_id=ls.id join callback_type ct on C.callback_type_id = ct.id  where  C.user_id="'.$id.'" and C.due_date <"'.date("Y-m-d").'"';
        $query=$this->db->query($query);
        return  $query->result();
    }
     public function fetch_over_due_leadsd($id)
    {
   
        $query='SELECT C.*,p.name as project_name ,ls.name as lead_status, ct.name as call_back_type  FROM callback C left join project p on C.project_id = p.id left join lead_source ls on
        C.status_id=ls.id left join callback_type ct on C.callback_type_id = ct.id  where C.user_id='.$id.' and  C.status_id != 4 AND C.status_id != 5 and  C.due_date < "'.date("Y-m-d H:i:s").'"';
        $query=$this->db->query($query);
        //echo $this->db->last_query();die;
        return $query->result();
       
    }

    function get_my_active_leads($id)
    {
        $query='SELECT C.*,p.name as project_name ,ls.name as lead_status, ct.name as call_back_type FROM callback C left join project p on C.project_id = p.id left join lead_source ls on
        C.status_id=ls.id left join callback_type ct on C.callback_type_id = ct.id where C.status_id != "4" and C.status_id  != "5"  ';


        if($this->session->userdata("user_type")!="admin"){
            $query.=' and C.user_id = "'.$id.'" ';
        };
        $query=$this->db->query($query);
        
        //print_r($query->result());die;  
        return  $query->result();

    }

    function get_all_site_visit_fixes($id)
    {
        $query='SELECT C.*,p.name as project_name ,ls.name as lead_status, ct.name as call_back_type FROM callback C join project p on C.project_id = p.id join lead_source ls on
        C.status_id=ls.id join callback_type ct on C.callback_type_id = ct.id  where C.user_id="'.$id.'" and C.status_id =6 and C.status_id != 4';
        $query=$this->db->query($query);
        return  $query->result();

    }
}