<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class commonmodel extends CI_Model {
    public function __construct()
	{
			parent::__construct();
			$this->load->database();
			 
    }
    
    public function insert_data($table,$data)
    {
        $this->db->insert($table, $data);
        return true;
    }
    public function insert_data_return_id($table,$data)
    {
        $this->db->insert($table, $data);
        return  $insert_id = $this->db->insert_id();
    }

    public function update_data($tbl,$whr,$data)
    {
        $this->db->update($tbl,$data,$whr);
        return true;
    }
 
    public function display_all_data($tbl)
    {
            $this->db->select('*');
            $this->db->from($tbl);
             $query = $this->db->get();
             return  $query->result();
             
    }

    public function fetch_selected_col($tbl,$data)
    {
        $this->db->select($data);
        $this->db->from($tbl);
         $query = $this->db->get();
         return  $query->result();
    }

    public function fetch_selected_col_with_where($tbl,$data,$cond)
    {
        $this->db->select($data);
        $this->db->from($tbl);
        $this->db->where($cond);
         $query = $this->db->get();
         return  $query->result();
    }

    public function fetch_selected_col_with_where_row($tbl,$data,$cond)
    {
        $this->db->select($data);
        $this->db->from($tbl);
        $this->db->where($cond);
         $query = $this->db->get();
         return  $query->row();
    }
    public function delete_data($tbl,$data)
    {
        $this->db->delete($tbl, $data);
    }
    public function fetch_result_with_condition($tbl,$cond)
    {
        $this->db->select("*");
        $this->db->from($tbl);
        $this->db->where($cond);
         $query = $this->db->get();
         return  $query->result();
    }

    public function fetch_result_with_condition_return_row($tbl,$cond)
    {
        $this->db->select("*");
        $this->db->from($tbl);
        $this->db->where($cond);
         $query = $this->db->get();
         return  $query->row();
    }
 

    public function join_tow_tables($tbl1,$tbl2,$con)
    {
        $this->db->select("*");
        $this->db->from($tbl1);
        $this->db->join($tbl2,$con);
         $query = $this->db->get();
         return  $query->result();
    }

    function fetch_selected_col_withi_join_to_table($tbl1,$tbl2,$con,$sel)
    {
        $this->db->select($sel);
        $this->db->from($tbl1);
        $this->db->join($tbl2,$con);
         $query = $this->db->get();
         return  $query->result();
    }

    function fetch_selected_col_withi_join_to_table_where($tbl1,$tbl2,$con,$sel,$whr)
    {
        $this->db->select($sel);
        $this->db->from($tbl1);
        $this->db->join($tbl2,$con);
        $this->db->where($whr);
         $query = $this->db->get();
         return  $query->result();
    }
    function fetch_selected_col_withi_join_to_table_where_left($tbl1,$tbl2,$con,$sel,$whr)
    {
        $this->db->select($sel);
        $this->db->from($tbl1);
        $this->db->join($tbl2,$con,'left');
        $this->db->where($whr);
         $query = $this->db->get();
         return  $query->result();
    }

    function fetch_all_todays_leadsd($id)
    {
        $query='SELECT COUNT(reassign_date) AS totlcalls  FROM  leads where  assign_to ="'.$id.'" and reassign_date ="'.date("Y-m-d").'"';
        $query=$this->db->query($query);
        return  $query->row();
    }

function calculate_netrevenue($id)
{
    $query='SELECT sum(net_revenu) as net_revenu FROM leads l join close_leads cl on l.id = cl.lead_id where assign_to ="'.$id.'"';
    $query=$this->db->query($query);
    return  $query->row();
    
}
}