 
      <div class="content">
        <div class="container-fluid">
          <div class="row">

          <div class="col-md-12">
                  
                  <div class="col-md-6 offset-md-3">
                  <?php 
                      if($this->session->flashdata('true')){ ?>
                    <div class="alert alert-success text-center">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                  <i class="material-icons">close</i>
                                </button>
                                <span>
                                  <?php echo $this->session->flashdata('true') ?></span>
                              </div>
                      <?php } ?>
                  </div>
            </div> 
            
            <div class="col-md-8">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title"><?php echo $title ?></h4> 
                </div>
                <div class="card-body mt-3">
                 <?php $attributes = array('class' => 'common_valid'); echo form_open("branch/update_branch",$attributes); ?>
                     
                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Branch Name <span class="text-danger">*</span></label>
                          <input type="text" class="form-control  validate[required] "  id="branch_name" name="branch[branch_name]" value="<?php echo $branch->branch_name;?>">
                          <input type="hidden" class="  "  id="" name="branch[branch_id]" value="<?php echo $branch->branch_id;?>">
                        </div>
                      </div>
                    
                    </div>
                    <a href="<?php echo site_url("branch/all_branches")?>"  class="btn btn-warning pull-right">Cancel</a>
                       <button type="submit" class="btn btn-primary pull-right mr-3">Submit</button>
                       
                    <div class="clearfix"></div>
                  <?php echo form_close() ?>
                </div>
              </div>
            </div>
             
          </div>
        </div>
      </div>
 