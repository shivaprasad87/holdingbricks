<div class="content">
          <div class="container-fluid">
 
          <div class="row">
            <div class="col-lg-12 col-md-12">
              <div class="card">
                <div class="card-header-primary">
                <h4> <?=$heading;?> </h4>
                </div>
                <div class="card-body">
                    <div class="container">

    <style>
        
    @media screen and (min-width: 768px) {
      
        .modal-dialog  {
            width:900px;
        }
    }
    .form-group input[type="checkbox"] {
        display: none;
    }
    .form-group input[type="checkbox"] + .btn-group > label span {
        width: 20px;
    }
    .form-group input[type="checkbox"] + .btn-group > label span:first-child {
        display: none;
    }
    .form-group input[type="checkbox"] + .btn-group > label span:last-child {
        display: inline-block;   
    }
    .form-group input[type="checkbox"]:checked + .btn-group > label span:first-child {
        display: inline-block;
    }
    .form-group input[type="checkbox"]:checked + .btn-group > label span:last-child {
        display: none;   
    }
    tr.highlight_past td.due_date{
        background-color: #cc6666 !important;
    }
    tr.highlight_now td.due_date{
        background-color: #e4b13e !important;
    }
    tr.highlight_future td.due_date{
        background-color: #65dc68 !important;
    }
    #history_table td {
        border: 1px solid #aaa;
        padding: 5px
    }

    .icon .fa{
            background-color: #ffffff00; 
            color:#ff1122;
             font-size:20px;
             padding-right:5px;
        }

    @media (max-width: 991px){
        .priority-7,.priority-8,.priority-13,.priority-14{
            display:none;
        }
        #search_form{
            display:block;
        }
        }
        @media (max-width: 1150px){
            .priority-10, .priority-7,.priority-8,.priority-13,.priority-14{
            display:none;
        }

        }
 
    @media screen and (max-width: 900px) and (min-width: 550px) {
        #search_form{
            display:block;
        }
        .priority-4,.priority-5,.priority-6, .priority-7,.priority-8,.priority-10,.priority-13,.priority-14{
            display:none;
        }
       
    }
    
    @media screen and (max-width: 550px) {
        .priority-4,.priority-5,.priority-6, .priority-7,.priority-8,.priority-10,.priority-13,.priority-14{
            display:none;
        }
        #search_form{
            display:block;
        }
        .icon .fa{
            background-color: #ffffff00; 
            color:#ff1122;
             font-size:16px!important;
            
        }
       
    }
    /* @media screen and (max-width: 384px) {
        #search_form{
            display:block;
        }
        .priority-4,.priority-5,.priority-6, .priority-7,.priority-8,.priority-10,.priority-11{
            display:none;
        }
   
    }  */
    @media screen and (max-width: 300px) {
        .icon .fa{
            background-color: #ffffff00; 
            color:#ff1122;
             font-size:16px!important;
            
        }
        .
        #search_form{
            display:block;
        }
        .priority-4,.priority-5,.priority-6, .priority-7,.priority-8,.priority-10,.priority-11,.priority-13,.priority-14{
            display:none;
        }
   
    }
</style>
    <form method="POST" id="search_form">
        <?php if($this->session->userdata("user_type")=="manager") { ?>
            <input type="hidden" name="self" id="self_input" value="<?php echo $this->session->userdata('self'); ?>">
            <div class="col-md-3 form-group">
                <label for="emp_code">Advisor:</label>
                <select  class="form-control"  id="dept" name="advisor" >
                    <option value="">Select</option>
                    <?php $all_advisor=$this->common_model->all_active_advisors();
                    foreach($all_advisor as $advisor){ ?>
                        <option value="<?php echo $advisor->id; ?>" <?php if(($this->session->userdata("advisor"))==$advisor->id) echo 'selected' ?>><?php echo $advisor->first_name." ".$advisor->last_name; ?></option>
                    <?php }?>             
                </select>
            </div>            
        <?php } ?>
        <?php if($this->session->userdata("user_type")!="user") { ?>
            <div class="col-md-3 form-group">
                <label for="emp_code">Department:</label>
                <select  class="form-control"  id="dept" name="dept" >
                    <option value="">Select</option>
                    <?php $all_department=$this->common_model->all_active_departments();
                    foreach($all_department as $department){ ?>
                        <option value="<?php echo $department->id; ?>" <?php if(($this->session->userdata("department"))==$department->id) echo 'selected' ?>><?php echo $department->name; ?></option>
                    <?php }?>             
                </select>
            </div>
        <?php } ?>
        <div class="col-md-3 form-group">
            <label for="emp_code">Project:</label>
            <select  class="form-control"  id="project" name="project" >
                <option value="">Select</option>
                <?php $projects= $this->common_model->all_active_projects(); 
                foreach( $projects as $project){ ?>
                    <option value="<?php echo $project->id ?>" <?php if(($this->session->userdata("project"))==$project->id) echo 'selected' ?>><?php echo $project->name ?></option>
                <?php }?>              
            </select>
        </div>
        <?php if($this->session->userdata("user_type")!="user") { ?>
            <div class="col-md-3 form-group">
                <label for="assign">Lead Source:</label>
                <select  class="form-control"  id="lead_source" name="lead_source" >
                    <option value="">Select</option>
                    <?php $lead_source= $this->common_model->all_active_lead_sources(); 
                    foreach( $lead_source as $source){ ?>
                        <option value="<?php echo $source->id ?>" <?php if(($this->session->userdata("lead_source"))==$source->id) echo 'selected' ?>><?php echo $source->name ?></option>
                    <?php } ?>             
                </select>
            </div>
            <div class="col-md-3 form-group">
                <label for="assign">Sub Broker:</label>
                <select  class="form-control"  id="sub_broker" name="sub_broker" >
                    <option value="">Select</option>
                    <?php $brokers= $this->common_model->all_active_brokers(); 
                    foreach( $brokers as $broker){ ?>
                        <option value="<?php echo $broker->id; ?>" <?php if(($this->session->userdata("sub_broker"))==$broker->id) echo 'selected' ?>><?php echo $broker->name ?></option>
                    <?php } ?>              
                </select>
            </div>
        <?php } ?>
        <div class="col-md-3 form-group">
            <label for="assign">Status:</label>
            <select  class="form-control"  id="status" name="status" >
                <option value="">Select</option>
                <?php $statuses= $this->common_model->all_active_statuses(); 
                foreach( $statuses as $status){ ?>
                    <option value="<?php echo $status->id; ?>" <?php if(($this->session->userdata("status"))==$status->id) echo 'selected' ?>><?php echo $status->name ?></option>
                <?php } ?>
            </select>
        </div>
        <?php if($this->session->userdata("user_type")!="user") { 
        if($this->session->userdata("user_type")=="City_head"){
            $users = $this->user_model->get_city_users_active();
            //print_r($users);
            
          ?>
          <div class="col-md-3 form-group">
                <label for="assign">Users:</label>
                <select  class="form-control"  id="city_user" name="city_user" >
                    <option value="">Select</option>
                    <?php 

                                foreach ($users as $user) {
                                ?>
                         <option value="<?php echo $user->id ?>" <?php echo ($user->id  == $this->session->userdata('city_user')) ? 'selected' : ''; ?>><?php echo $user->first_name." ".$user->last_name; ?></option>
                    <?php } ?>               
                </select>
            </div> 
          <?php
        }
        else
        {
        ?>
            <div class="col-md-3 form-group">
                <label for="assign">City:</label>
                <select  class="form-control"  id="city" name="city" >
                    <option value="">Select</option>
                    <?php $cities= $this->common_model->all_active_cities(); 
                    foreach( $cities as $city){ ?>
                        <option value="<?php echo $city->id; ?>" <?php if(($this->session->userdata("city"))==$city->id) echo 'selected' ?>><?php echo $city->name ?></option>
                    <?php } ?>               
                </select>
            </div>
        <?php 
        }
        }?>
        <?php if(($this->session->userdata("user_type")=="vp") || ($this->session->userdata("user_type")=="director")) { ?>
            <div class="col-md-3 form-group">
                <label for="assign">User Name:</label>
                <select  class="form-control"  id="user_name" name="user_name" >
                    <option value="">Select</option>
                    <?php $all_user= $this->user_model->all_users("type in (1,2,3,4)"); 
                    foreach( $all_user as $user){ 
                        switch ($user->type) {
                            case '1':
                                $role = "User";
                                break;

                            case '2':
                                $role = "Manager";
                                break;

                            case '3':
                                $role = "VP";
                                break;
                            
                            case '4':
                                $role = "Director";
                                break;
                            case '6':
                                $role = "City Head";
                                break;
                        }
                        ?>
                        <option value="<?php echo $user->id ?>" <?php if(($this->session->userdata("search_username"))==$user->id) echo 'selected' ?>><?php echo $user->first_name." ".$user->last_name." ($role)"; ?></option>
                    <?php } ?>
                </select>
            </div>
        <?php } /*if($this->session->userdata("user_type")=="vp" || $this->session->userdata("user_type")=="director") {*/?>
            <div class="col-sm-3">
                <div class="form-group">
                    <label>Search:</label>
                    <input type="text" class="form-control" name="srxhtxt" id="srxhtxt" placeholder="Enter search text" value="<?= ($this->session->userdata('SRCHTXT')) ? $this->session->userdata('SRCHTXT') : '' ?>" />
                </div>
            </div>
            <div class="col-sm-3">
                <div class="form-group">
                    <label>Due Date</label>
                    <select  class="form-control" name="searchDate" id="searchDate">
                        <option value="">--Select--</option>
                        <option value="today" <?= ($this->session->userdata('SRCHDT')== "today")? 'selected':''; ?>>Due date</option>
                        <option value="yesterday" <?= ($this->session->userdata('SRCHDT')== "yesterday")? 'selected':''; ?>>Overdue </option>
                        <option value="tomorrow" <?= ($this->session->userdata('SRCHDT')== "tomorrow")? 'selected':''; ?>>Upcoming calls</option>
                    </select>
                </div>
            </div>
        <?php //} ?>
        <div class="col-sm-3 form-group">
            <button class="btn btn-info btn-block" id="reset" onclick="reset_data()" style="margin-top: 24px;" >Reset</button>
        </div>
        <div class="col-sm-3 form-group">
            <button type="submit" id="search" class="btn btn-success btn-block" style="margin-top: 24px;" >Search</button>
        </div>
    </form>
    <div class="clearfix"></div>
    <br>
    <?php if($this->session->userdata("user_type")=="manager") { ?>
        Now showing <?php echo ($this->session->userdata('self') == "1")?"self":"teams"; ?> callbacks. <a href="#" id="change_callbacks">Change</a>
    <?php }

     ?>
    <br>

</div>

<div class="container">
        <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
            <thead>
                <tr>
                    <th class="priority-1">No</th>
                    <th class="priority-2">Contact Name</th> 
                    <th class="priority-3">Contact No</th>
                    <th class="priority-4">Email</th>
                    <th class="priority-5">Project</th>
                    <?php if($this->session->userdata("user_type")!="user") { ?>
                        <th class="priority-13">Lead Source</th>
                        <th class="priority-14">Lead Id</th> 
                    <?php } ?>
                    <th class="priority-6">Advisor</th>
                    <?php if($this->session->userdata("user_type")!="user") { ?> 
                        <th class="priority-7">Sub-Source</th>
                    <?php } ?>
                    <th class="priority-8">Due date</th>
                    <th class="priority-9">Status</th>
                    <th class="priority-10">Date Added</th>
                    <!-- <th>Last Update</th> -->
                    <th class="priority-11">Action</th>
                </tr>
            </thead> 
            <tbody id="main_body">
                <?php $i= 1;
                if(count($result)>0){
                  // echo $this->session->userdata('self');
                foreach ($result as $data) {
                    $duedate = explode(" ", $data->due_date);
                    $duedate = $duedate[0]; ?>
                    <tr id="row<?php echo $i ?>" <?php if(strtotime($duedate)<strtotime('today')){?> class="highlight_past" <?php }elseif(strtotime($duedate) == strtotime('today')) {?> class="highlight_now" <?php }elseif(strtotime($duedate)>strtotime('today')){ ?> class="highlight_future" <?php } ?>>
                        <td class="priority-1"><?php echo $i; ?></td>
                        <td class="priority-2"><?php echo $data->name; ?></td>
                        <td class="priority-3"><?php echo $data->contact_no1 ?></td>
                        <td class="priority-4"><?php echo $data->email1; ?></td>
                        <td class="priority-5"><?php echo $data->project_name; ?></td>
                        <?php if($this->session->userdata("user_type")!="user") { ?>
                            <td class="priority-13"><?php echo $data->lead_source_name; ?></td>
                            <td class="priority-14"><?php echo $data->leadid; ?></td>
                        <?php } ?>
                        <td class="priority-6"><?php echo $data->user_name; ?></td>
                        <?php if($this->session->userdata("user_type")!="user") { ?>
                            <td class="priority-7"><?php echo $data->broker_name; ?></td>
                        <?php } ?>
                        <td class="due_date priority-8"><?php echo $data->due_date; ?></td>
                        <td class="priority-9"><?php echo $data->status_name; ?></td>
                        <td class="priority-10"><?php echo $data->date_added; ?></td>
                        <!-- <td><?php echo $data->last_update; ?></td> -->
                        <td class="priority-11">
                            <table>
                            <tr class="icon" style="background-color: #ffffff00;">
                                    <td>
                                        <!-- <a onclick="edit('<?php echo $data->id; ?>')" data-toggle="modal" data-target="#modal_edit"> -->
                                        <a href="<?= base_url('callback-details?id='.$data->id) ?>" target="_blank">
                                            <i class="fa fa-home fa-2x"  title="Detail" style="" aria-hidden="true"></i>
                                        </a>
                                    </td>
                                    <td>
                                        <a onclick="previous_callbacks('<?php echo $data->id; ?>')" data-toggle="modal" data-target="#modal_previous">
                                            <i class="fa fa-keyboard-o fa-2x" title="Notes" style="" aria-hidden="true"></i>
                                        </a>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                <?php $i++; } }
                else
                {
                    echo "<tr><td colspan=13 align=center>No Data Found</td></tr>";
                }

                ?>
            </tbody>
        </table>
    
    
        <div style="margin-top: 20px">
             <span class="pull-left"><p>Showing <?php echo ($this->uri->segment(2)) ? $this->uri->segment(2)+1 : 1; ?> to <?= ($this->uri->segment(2)+count($result)); ?> of <?= $totalRecords; ?> entries</p></span>
              <ul class="pagination pull-right"><?php echo $links; ?></ul> 
        </div>
    </div>
<br/><br/>



<br/><br/><br/><br/><br/><br/>
                    </div>
                  
              </div>
            </div>
            
          </div>
        </div>
      </div>