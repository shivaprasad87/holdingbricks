 
      <div class="content">
        <div class="container-fluid">
          <div class="row">

          <div class="col-md-12">
                  <div class="col-md-4 offset-md-4">
                  <?php 
                      if($this->session->flashdata('true')){ ?>
                    <div class="alert alert-success">
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
                <div class="card-body">
                 <?php $attributes = array('class' => 'common_valid'); echo form_open("projects/update_project",$attributes); ?>
                     
                    <div class="row">
                      <div class="col-md-12 mt-4 mb-2">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Project Name <span class="text-danger">*</span></label>
                          <input type="text" class="form-control  validate[required] "  id="project_name" name="project[project_name]" value="<?php echo $project->project_name;?>">
                          <input type="hidden" class="  "  id="" name="project[project_id]" value="<?php echo $project->project_id;?>">
                        </div>
                      </div>
                    
                    </div>
                    <a href="<?php echo site_url("projects/all_projects")?>"  class="btn btn-warning pull-right">Cancel</a>
                       <button type="submit" class="btn btn-primary pull-right mr-3">Submit</button>
                       
                    <div class="clearfix"></div>
                  <?php echo form_close() ?>
                </div>
              </div>
            </div>
             
          </div>
        </div>
      </div>
 