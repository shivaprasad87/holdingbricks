 
      <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-8">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Edit Profile</h4>
                  
                </div>
                <div class="card-body mt-4">
                 <?php $attributes = array('class' => 'common_valid'); echo form_open("myaccount/update_Profile",$attributes); ?>
                 <input type="hidden"  name="user[id]" value="<?php echo $user->id;?>">
                    <div class="row"> 
                      <div class="col-md-6">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">First Name <span class="text-danger">*</span></label>
                          <input type="text" class="form-control  validate[required] "  id="fname" name="user[first_name]" value="<?php echo $user->first_name;?>">
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Last Name  <span class="text-danger">*</span></label>
                          <input type="text" class="form-control  validate[required]" name="user[last_name]" value="<?php echo $user->last_name;?>">
                        </div>
                      </div>
                    </div>


                    <div class="row">  
                      <div class="col-md-6">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">User Name  <span class="text-danger">*</span></label>
                          <input type="text" class="form-control  validate[required]" name="user[loginid]" id="loginid" value="<?php echo $user->loginid;?>" disabled>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">E-mail  <span class="text-danger">*</span></label>
                          <input type="text" class="form-control  validate[required]" name="user[email]" value="<?php echo $user->email;?>">
                        </div>
                      </div>
                    </div>


                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Address  <span class="text-danger">*</span></label>
                          <input type="text" class="form-control  validate[required]" name="user[address]" value="<?php echo $user->address;?>">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-4">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Phone 1  <span class="text-danger">*</span></label>
                          <input type="text" class="form-control  validate[required ,custom[onlyNumberSp]]" name="user[mobile_number]" maxlength="10" minlength="10" value="<?php echo $user->mobile_number;?>">
                        </div>
                      </div>
                   
                      <!-- <div class="col-md-4">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">City  <span class="text-danger">*</span></label>
                          <input type="text" class="form-control  validate[required]" name="user[city]" value="<?php echo $user->city;?>">
                        </div>
                      </div> -->
                    </div>

                    <div class="row">  
                      <div class="col-md-4">
                        <div class="form-group bmd-form-group">
                          <label class="select-label bmd-label-floating">Branch  <span class="text-danger">*</span></label>
                          
                          <select  class="form-control validate[required]" name="user[city]" disabled>
                              <option></option>
                              <?php foreach($branch as $row){ if($user->branch == $row->branch_id){?>
                              
                                  <option value="<?php echo $row->branch_id ?>" selected ><?php echo $row->branch_name ?></option>
                              <?php }else{?>
                                <option value="<?php echo $row->branch_id ?>"><?php echo $row->branch_name ?></option>
                              <?php }} ?>
                          </select>
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group bmd-form-group">
                          <label class=" select-label bmd-label-floating">Role  <span class="text-danger">*</span></label>  
                           <select class="form-control  validate[required]" name="user[role]" id="role" disabled>
          

                            <option value="sales"  <?php if($user->type == 1){ echo "selected";} ?>>User</option>

                            <option value="manager" <?php if($user->type == 2){ echo "selected";} ?>>Manager</option>
                            <option value="manager" <?php if($user->type == 4){ echo "selected";} ?>>Director</option>
                            <option value="manager" <?php if($user->type == 6){ echo "selected";} ?>>City Head</option>
                            <option value="Admin" <?php if($user->type == 5){ echo "selected";} ?>>Admin</option>
                          
                          </select>
                        </div>
                      </div>
                      <div class="col-md-4 teammanager <?php if($user->type != 1){echo "hide";}?> " >
                      <div class="form-group bmd-form-group">
                          <label class=" select-label bmd-label-floating">Manager list  <span class="text-danger">*</span></label>
                          
                          <select  class="form-control  validate[required]" name="user[branch]" disabled>
                              
                              <?php foreach($managerList as $row){ if($user->team_manager == $row->id){?>
                              
                                  <option value="<?php echo $row->id ?>" selected ><?php echo $row->first_name ?></option>
                              <?php }else{?>
                                <option value="<?php echo $row->id ?>"><?php echo $row->first_name ?></option>
                              <?php }} ?>
                          </select>
                        </div>
                      </div>
                    </div>

                
                    <a href="<?php echo base_url("")?>"  class="btn btn-warning pull-right">Cancel</a>
     
                    <button type="submit" class="btn btn-primary pull-right mr-3">Submit</button>
                    <div class="clearfix"></div>
                  <?php echo form_close() ?>
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Change your password</h4>
                  
                </div>
                <div class="card-body mt-4">
                  <?php $attributes = array('class' => 'common_valid'); echo form_open("dashboard/change_password",$attributes); ?>
                  <input type="hidden"  name="id" value="<?php echo $user->id;?>">
                
                  <div class="row">  
                      <div class="col-md-12">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Password <span class="text-danger">*</span></label>
                          <input type="password" class="form-control  validate[required] "  id="psw" name="password">
                       </div>
                      </div>
                  </div>
                  <div class="row">  
                      <div class="col-md-12">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">confirm password <span class="text-danger">*</span></label>
                          <input type="password" class="form-control  validate[required,equals[psw]]" id="copsw" name="cpassword">
                         </div>
                      </div>
                  </div>
                  <button type="submit" class="btn btn-primary pull-right">Submit</button>
                  <?php echo form_close() ;?>
                  
                  
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      
     