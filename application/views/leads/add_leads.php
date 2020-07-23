 
      <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-10">
            <div class="card ">
                <div class="card-header card-header-primary">
                  <h4 class="card-title"><?php echo $title; ?></h4> 
                </div>
                <?php $attributes = array('class' => 'common_valid '); echo form_open("leads/insert_lead",$attributes); ?>
               
                <div class="card-body mt-3">
                 
                    <div class="row">
                        
                        <div class="col-md-6">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Dept <span class="text-danger">*</span></label>
                        <select class="form-control  validate[required] " name="lead[dept_id]" >
                        <option value>--select--</option>
                                    <?php foreach($dept as $row){ ?>
                                      <option value="<?php echo $row->dept_id; ?>"> <?php echo $row->name ?></option>
                                    <?php } ?>
                              </select>
                      </div>
                      </div>
                        <div class="col-md-6">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Name <span class="text-danger">*</span></label>
                          <input type="text" class="form-control  validate[required]" name="lead[name]">
                        </div>
                      </div>
                    </div>

                    <div class="row">
                        
                        <div class="col-md-6">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Phone 1 <span class="text-danger">*</span></label>
                          <input type="text" class="form-control  validate[required ,custom[onlyNumberSp]]" name="lead[phone_1]" maxlength="16" minlength="10">
                        </div>
                      </div>

                        <div class="col-md-6">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Phone 2  </label>
                          <input type="text" class="form-control  validate[custom[onlyNumberSp]]" name="lead[phone_2]" maxlength="16" minlength="10">
                        </div>
                      </div>
                    </div>

                    <div class="row">
                         <div class="col-md-6">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">E-mail 1 <span class="text-danger">*</span></label>
                          <input type="email" class="form-control  validate[required]" name="lead[email_1]">
                        </div>
                      </div>
                        
                        <div class="col-md-6">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">E-mail 2 </label>
                          <input type="email" class="form-control" name="lead[email_2]">
                        </div>
                      </div>
                       
                    </div>
                    
                    <div class="row">
                        <div class="col-md-6">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Call back type <span class="text-danger">*</span></label>
                         
                        <select class="form-control  validate[required]" id="call_black" name="lead[call_back_type]">
                              <option value>--select--</option>
                              <option>Domestic</option>
                              <option>International</option>
                         </select>
                        </div>
                      </div>
                        

                        <div class="col-md-6">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Project <span class="text-danger">*</span></label>
                        <select class="form-control  validate[required] " name="lead[project_id]">
                        <option value>--select--</option>
                                    <?php foreach($project as $row){ ?>
                                      <option value="<?php echo $row->project_id; ?>"> <?php echo $row->project_name ?></option>
                                    <?php } ?>
                              </select>
                        </div>
                      </div>
                    </div>

                    <div class="row">
                        
                         <div class="col-md-6">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Status <span class="text-danger">*</span></label>
                        <select class="form-control  validate[required] "    name="lead[status_id]">
                                       <?php foreach($status as $row){ if($row->status_name == "New"){ ?>
                                        <option value="<?php echo $row->status_id ?>" selected><?php echo $row->status_name ?></option>
                                    <?php }else{ ?>
                                      
                                    <?php }} ?>
                          </select>
                        </div>
                      </div>

                        <div class="col-md-6">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Assign to <span class="text-danger">*</span></label>
                        <select class="form-control   <?php if($this->session->userdata('role') != 'Admin'){ echo 'validate[required]';}?> " name="lead[assign_to]">
                        <option value>--select--</option>
                                    <?php if($this->session->userdata('role') == 'sales'){ ?>

                                      <option value="<?php echo $this->session->userdata('user_id'); ?>" selected> <?php echo $this->session->userdata('FirstName')."&nbsp".$this->session->userdata('LastName') ?></option>
                                  
                                    <?php }else{foreach($users as $row){ ?>
                                      <option value="<?php echo $row->user_id; ?>"> <?php echo $row->f_name."&nbsp".$row->l_name ?></option>
                                    <?php } } ?>
                              </select>
                        </div>
                      </div>
                    </div>
  
                </div>
                <div class="card-footer "> 
                    <div class="col-md-12">
                    <a href="<?php echo site_url("leads")?>"  class="btn btn-warning pull-right">Cancel</a>
     
                  <button type="submit" class="btn btn-primary pull-right mr-3">Submit</button>
                 
                                  </div>
                    <?php echo form_close(); ?>
                </div>
              </div>
            </div>
           </div>
        </div>
      </div>
   