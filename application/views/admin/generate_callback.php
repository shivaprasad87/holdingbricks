<div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-10">
            <div class="card ">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">GENERATE LEADS</h4> 
                </div>
                <form action="<?php echo base_url()?>generate_callback"  class="common_valid " method="post" accept-charset="utf-8">
               
                <div class="card-body mt-3">
                 
                    <div class="row">
                        
                        <div class="col-md-6">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating select-label">Dept <span class="text-danger">*</span></label>
                        <select class="form-control  validate[required] " name="dept">
                        <option value="">--select--</option>
                        <?php $all_department=$this->common_model->all_active_departments();
                    foreach($all_department as $department){ ?>
                        <option value="<?php echo $department->id; ?>"><?php echo $department->name; ?></option>
                    <?php }?> 
                            </select>
                      </div>
                      </div>
                        <div class="col-md-6">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Name <span class="text-danger">*</span></label>
                          <input type="text" class="form-control  validate[required]" name="name">
                        </div>
                      </div>
                    </div>

                    <div class="row">
                        
                        <div class="col-md-6">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Phone 1 <span class="text-danger">*</span></label>
                          <input type="text" class="form-control  validate[required ,custom[onlyNumberSp]]" name="contact_no1" maxlength="16" minlength="10">
                        </div>
                      </div>

                        <div class="col-md-6">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Phone 2  </label>
                          <input type="text" class="form-control  validate[custom[onlyNumberSp]]" name="contact_no2" maxlength="16" minlength="10">
                        </div>
                      </div>
                    </div>

                    <div class="row">
                         <div class="col-md-6">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">E-mail 1 <span class="text-danger">*</span></label>
                          <input type="email" class="form-control  validate[required]" name="email1">
                        </div>
                      </div>
                        
                        <div class="col-md-6">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">E-mail 2 </label>
                          <input type="email" class="form-control" name="email2">
                        </div>
                      </div>
                       
                    </div>
                    
                    <div class="row">
                        <div class="col-md-6">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating select-label">Call back type <span class="text-danger">*</span></label>
                         
                        <select class="form-control  validate[required]" id="call_black" name="callback_type">
                              <option value="">--select--</option> 
                    <?php $all_callback_types=$this->common_model->all_active_callback_types();
                    foreach($all_callback_types as $callback_type){ ?>
                        <option value="<?php echo $callback_type->id; ?>"><?php echo $callback_type->name; ?></option>
                    <?php }?>   
                         </select>
                        </div>
                      </div>
                       <div class="col-md-6">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating select-label">Project <span class="text-danger">*</span></label>
                        <select class="form-control  validate[required] " name="project">
                        <option value="">--select--</option>
                         <?php $projects= $this->common_model->all_active_projects(); 
                    foreach( $projects as $project){ ?>
                        <option value="<?php echo $project->id ?>"><?php echo $project->name ?></option>
                    <?php }?>   
                           </select>
                        </div>
                      </div> 
                  </div>

                        <div class="row">
                       
                                <div class="col-md-4 form-group bmd-form-group">
                            <label for="assign">Lead Source:</label>
                            <select  class="form-control"  id="lead_source" name="lead_source" required="required" >
                                <option value="">Select</option>
                                <?php $lead_source= $this->common_model->all_active_lead_sources(); 
                                foreach( $lead_source as $source){ ?>
                                    <option value="<?php echo $source->id ?>"><?php echo $source->name ?></option>
                                <?php } ?>
                            </select>
                         </div>
                          <div class="col-md-4 form-group bmd-form-group">
                            <label for="assign">Manage Sub Broker:</label>
                            <select  class="form-control"  id="sub_broker" name="sub_broker" required="required" >
                                <option value="">Select</option>
                                <?php $brokers= $this->common_model->all_active_brokers(); 
                                foreach( $brokers as $broker){ ?>
                                    <option value="<?php echo $broker->id; ?>"><?php echo $broker->name ?></option>
                                <?php } ?>               
                            </select>
                        </div>
                        <div class="col-sm-4 form-group bmd-form-group">
                            <label for="Duedate" class="bmd-label-floating select-label">Due date:</label>
                            <input type="date" class="form-control" id="due_date" name="due_date" placeholder="Date" required="required">
                        </div>
                        </div>

                    <div class="row">
                        
                         <div class="col-md-6">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating select-label">Status <span class="text-danger">*</span></label>
                        <select class="form-control  validate[required] " name="status">
                        <option value="">Select</option>
                    <?php $statuses= $this->common_model->all_active_statuses(); 
                    foreach( $statuses as $status){ ?>
                        <option value="<?php echo $status->id; ?>"><?php echo $status->name ?></option>
                    <?php } ?>          
                            </select>
                        </div>
                      </div>

                        <div class="col-md-6">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating select-label">Assign to <span class="text-danger">*</span></label>
                        <select class="form-control    " name="user_name">
                        <option value="">--select--</option>
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
                        }
                        ?>
                        <option value="<?php echo $user->id ?>"><?php echo $user->first_name." ".$user->last_name." ($role)"; ?></option>
                    <?php } ?>  
                                                                  </select>
                        </div>
                      </div>
                    </div>
                       <div class="row">
                        
                <div class="col-sm-6 form-group bmd-form-group">
                <label for="comment" class="bmd-label-floating select-label">Notes:</label>
                <textarea class="form-control" name="notes" id="notes" rows="3" id="comment"></textarea>
            </div>
            </div>
  
                </div>
             
                <div class="card-footer "> 
                    <div class="col-md-12">
                    <a href="https://holdingbricks.com/sales/index.php/leads" class="btn btn-warning pull-right">Cancel</a>
     
                  <button type="submit" class="btn btn-primary pull-right mr-3">Submit</button>
                 
                                  </div>
                                    </div></form>
              </div>
            </div>
           </div>
        </div>
      </div>
