 
      <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-10 col-md-offset-1">
            <div class="card ">
                <div class="card-header card-header-rose card-header-icon">
                  <div class="card-icon">
                    <i class="material-icons">contacts</i>
                  </div>
                  <h4 class="card-title"><?php echo $title; ?></h4>
                </div>
                <?php $attributes = array('class' => 'common_valid '); echo form_open("leads/insert_lead",$attributes); ?>
               
                <div class="card-body ">
                <input type="hidden" class="form-control   " name="leadold[GprojectName]" value="<?php echo $this->uri->segment(3);?>">
                <input type="hidden" class="form-control  " name="leadold[GprojectId]" value="<?php echo $this->uri->segment(4);?>">
                       
                    <div class="row">
                      <label class="col-md-2 col-form-label">Dept  <span class="text-danger">*</span></label>
                      <div class="col-md-4">
                        <div class="form-group has-default bmd-form-group">
                        <select class="form-control  validate[required] " name="lead[dept_id]" >
                        <option value>--select--</option>
                                    <?php foreach($dept as $row){ ?>
                                      <option value="<?php echo $row->dept_id; ?>"> <?php echo $row->name ?></option>
                                    <?php } ?>
                              </select>
                        </div>
                      </div>

                      <label class="col-md-2 col-form-label">Name  <span class="text-danger">*</span></label>
                      <div class="col-md-4">
                        <div class="form-group has-default bmd-form-group">
                          <input type="text" class="form-control  validate[required]" name="lead[name]" value="<?php echo $gleads->name;?>">
                        </div>
                      </div>
                    </div>

                    <div class="row">
                      <label class="col-md-2 col-form-label">Phone 1    <span class="text-danger">*</span></label>
                      <div class="col-md-4">
                        <div class="form-group has-default bmd-form-group">
                          <input type="text" class="form-control  validate[required ,custom[onlyNumberSp]]" name="lead[phone_1]"  value="<?php echo $gleads->phone;?>">
                        </div>
                      </div>

                      <label class="col-md-2 col-form-label">Phone 2 </label>
                      <div class="col-md-4">
                        <div class="form-group has-default bmd-form-group">
                          <input type="text" class="form-control  validate[custom[onlyNumberSp]]" name="lead[phone_2]" maxlength="16" minlength="10">
                        </div>
                      </div>
                    </div>

                    <div class="row">
                      <label class="col-md-2 col-form-label">Call back type  <span class="text-danger">*</span> </label>
                      <div class="col-md-4">
                        <div class="form-group has-default bmd-form-group">
                        <select class="form-control  validate[required]" id="call_black" name="lead[call_back_type]">
                              <option></option>
                              <option>Domestic</option>
                              <option>International</option>
                         </select>
                        </div>
                      </div>

                      <label class="col-md-2 col-form-label">E-mail 1  <span class="text-danger">*</span></label>
                      <div class="col-md-4">
                        <div class="form-group has-default bmd-form-group">
                          <input type="email" class="form-control  validate[required]" name="lead[email_1]" value="<?php echo $gleads->email;?>">
                        </div>
                      </div>
                    </div>
                    
                    <div class="row">
                      <label class="col-md-2 col-form-label">E-mail 2 </label>
                      <div class="col-md-4">
                        <div class="form-group has-default bmd-form-group" >
                          <input type="email" class="form-control" name="lead[email_2]">
                        </div>
                      </div>

                      <label class="col-md-2 col-form-label">Project  <span class="text-danger">*</span></label>
                      <div class="col-md-4">
                        <div class="form-group has-default bmd-form-group">
                        <select class="form-control  validate[required] " name="lead[project_id]">
                        <option value>--select--</option>
                                    <?php foreach($project as $row){ ?>
                                      <option value="<?php echo $row->project_id; ?>"> <?php echo $row->project_name ?></option>
                                    <?php } ?>
                              </select>
                              <span class="text-danger">Please select <?php echo $this->uri->segment(3);?></span>
                        </div>
                      </div>
                    </div>

                    <div class="row">
                      <label class="col-md-2 col-form-label">Status  <span class="text-danger">*</span></label>
                      <div class="col-md-4">
                      <div class="form-group has-default bmd-form-group">
                        <select class="form-control  validate[required] "    name="lead[status_id]">
                                       <?php foreach($status as $row){ if($row->status_name == "New"){ ?>
                                        <option value="<?php echo $row->status_id ?>" selected><?php echo $row->status_name ?></option>
                                    <?php }elseif($row->status_name == "Dead"){ ?>
                                      <option value="<?php echo $row->status_id ?>"  ><?php echo $row->status_name ?></option>
                                    <?php }} ?>
                          </select>
                        </div>
                      </div>

                      <label class="col-md-2 col-form-label">Assign to  <span class="text-danger">*</span></label>
                      <div class="col-md-4">
                        <div class="form-group has-default bmd-form-group">
                        <select class="form-control  " name="lead[assign_to]">
                        <option value>--select--</option>
                                    <?php foreach($users as $row){ ?>
                                      <option value="<?php echo $row->user_id; ?>"> <?php echo $row->f_name."&nbsp".$row->l_name ?></option>
                                    <?php } ?>
                              </select>
                        </div>
                      </div>
                    </div>
  
                </div>
                <div class="card-footer "> 
                    <div class="col-md-12">
                    <a href="<?php echo site_url("leads")?>"  class="btn btn-warning pull-right">Cancel</a>
     
                  <button type="submit" class="btn btn-primary pull-right">Submit</button>
                 
                                  </div>
                    <?php echo form_close(); ?>
                </div>
              </div>
            </div>
           </div>
        </div>
      </div>
   