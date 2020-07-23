 
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
                 <input type="hidden"  name="user[user_id]" value="<?php echo $user->user_id;?>">
                    <div class="row"> 
                      <div class="col-md-6">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">First Name <span class="text-danger">*</span></label>
                          <input type="text" class="form-control  validate[required] "  id="fname" name="user[f_name]" value="<?php echo $user->f_name;?>">
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Last Name  <span class="text-danger">*</span></label>
                          <input type="text" class="form-control  validate[required]" name="user[l_name]" value="<?php echo $user->l_name;?>">
                        </div>
                      </div>
                    </div>


                    <div class="row">  
                      <div class="col-md-6">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">User Name  <span class="text-danger">*</span></label>
                          <input type="text" class="form-control  validate[required]" name="user[username]" id="username" value="<?php echo $user->username;?>" disabled>
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
                          <input type="text" class="form-control  validate[required ,custom[onlyNumberSp]]" name="user[phone_1]" maxlength="10" minlength="10" value="<?php echo $user->phone_1;?>">
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Phone 2</label>
                          <input type="text" class="form-control validate[custom[onlyNumberSp]]" name="user[phone_2]" maxlength="10" minlength="10" value="<?php echo $user->phone_2;?>">
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">City  <span class="text-danger">*</span></label>
                          <input type="text" class="form-control  validate[required]" name="user[city]" value="<?php echo $user->city;?>">
                        </div>
                      </div>
                    </div>

                    <div class="row">  
                      <div class="col-md-4">
                        <div class="form-group bmd-form-group">
                          <label class="select-label bmd-label-floating">Branch  <span class="text-danger">*</span></label>
                          
                          <select  class="form-control validate[required]" name="user[branch]" disabled>
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
          

                            <option value="sales"  <?php if($user->role == "sales"){ echo "selected";} ?>>Sales</option>

                            <option value="manager" <?php if($user->role == "manager"){ echo "selected";} ?>>Manager</option>
                            <option value="Admin" <?php if($user->role == "Admin"){ echo "selected";} ?>>Admin</option>
                          
                          </select>
                        </div>
                      </div>
                      <div class="col-md-4 teammanager <?php if($user->role != 'sales'){echo "hide";}?> " >
                      <div class="form-group bmd-form-group">
                          <label class=" select-label bmd-label-floating">Manager list  <span class="text-danger">*</span></label>
                          
                          <select  class="form-control  validate[required]" name="user[branch]" disabled>
                              <option></option>
                              <?php foreach($managerList as $row){ if($user->team_manager == $row->user_id){?>
                              
                                  <option value="<?php echo $row->user_id ?>" selected ><?php echo $row->f_name ?></option>
                              <?php }else{?>
                                <option value="<?php echo $row->user_id ?>"><?php echo $row->f_name ?></option>
                              <?php }} ?>
                          </select>
                        </div>
                      </div>
                    </div>

                
                    <a href="<?php echo site_url("Mydashboard")?>"  class="btn btn-warning pull-right">Cancel</a>
     
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
                  <?php $attributes = array('class' => 'common_valid'); echo form_open("myaccount/update_myPassword",$attributes); ?>
                  <input type="hidden"  name="user_id" value="<?php echo $user->user_id;?>">
                
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
                          <input type="password" class="form-control  validate[required,equals[psw]]" id="copsw" name="cofpassword">
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
      
     