<div class="content">
          <div class="container-fluid">
 
          <div class="row">
            <div class="col-lg-12 col-md-12">
              <div class="card">
                <div class="card-header-primary">
                <h4> <?=$heading;?> </h4>
                </div>
                <div class="card-body">

    <?php
  if($heading == '99 Acres Online Callbacks' && $this->session->userdata('99acre_authenication_fail')!='')
  {
    ?>
      <form method="POST" action="update_99acre_credentials"autocomplete="off">
      
        <div class="col-sm-2">
            <div class="form-group">
                <label>Username:</label>
                <input type="text" class="form-control" name="username"  placeholder="New Username"  />
                <input type="hidden" class="form-control" name="lead"  value="99acre" />
            </div>
        </div>
        <div class="col-sm-2">
            <div class="form-group">
                <label>Password:</label>
                <input type="Password" class="form-control" name="Password" placeholder="New Password"  />
            </div>
        </div>
         
        <div class="clearfix"></div>
        <!--<div class="col-sm-6">
            <button class="btn btn-info btn-block" id="admin-reset"onclick="reset_data()" >Reset</button>
        </div>-->
        <div class="col-sm-6">
            <button type="submit"  name="update_99acre"class="btn btn-success btn-block">Update</button>
        </div>
    </form>
    <?php
 
  }
  else
  {
  ?>
    <br>
   <br>
  <form method="POST" class="main-from" action="<?php echo base_url()?>admin/save_online_leads">
  <!-- <div class="container" style="overflow:auto;height: 27rem;overflow-y: scroll;"> -->
    <div>
    <table id="example" class="table table-striped table-bordered dt-responsive"  cellspacing="0" width="100%" >
      <thead>
        <tr>
          <th class="priority-1">Select</th>
          <th class="priority-2">Delete</th>
          <th class="priority-3">Source</th>
          <th class="priority-4">Contact Name</th>
          <th class="priority-5">Contact No</th>
          <!--<th>Email</th>-->
          <th class="priority-6"><?php echo 'Project'; ?></th>
          <!--<th>Lead Id</th>-->
          <th class="priority-7">Notes</th>
          <th class="priority-8">Date</th>
        </tr>
        <tr>
          <td colspan="8"><input type='checkbox' id="checkAll"  class='check'  >Select All</td>
        </tr>
      </thead>
      <tbody id="table_body">
        <?php 
        $source_name=$this->uri->segment(2);
  $lead_controller=$source_name; if(count($leads)>0){
          foreach ($leads as $lead) { ?>
            <tr id="row_<?= $lead->id ?>">
              <td class="priority-1"><input type='checkbox' name='check[]'  class='check' value="<?= $lead->id ?>"></td>
              <td class="priority-2"><button type="button" class="btn btn-success" onclick="window.location='<?php echo site_url("admin/delete_online_lead/".$lead->id.'/'.$lead_controller);?>'">Delete Lead</button></td>
              <td class="priority-3"><?= $lead->source ?></td>
              <td class="priority-4"><?= $lead->name ?></td>
              <td class="priority-5"><?= $lead->phone ?></td>
              <!--<td><?= $lead->email ?></td>-->
              <td class="priority-6">
                <!--<select name='project_<?= $lead->id ?>' required>
                  <?php foreach( $projects as $project){ ?>
                    <option value="<?= $project->id ?>"><?= $project->name ?></option>
                  <?php } ?>
                </select>-->
                <?= $lead->project ?>
              </td>
            <!--  <td><?= $lead->leadid ?></td>-->
              <td class="priority-7"><?= $lead->notes ?></td>
              <td class="priority-8"><?= $lead->lead_date ?></td>
            </tr>
          <?php }
        }
        else{ ?>
            <tr>
              <td colspan='8'>No Leads for Now</td>
            </tr>
        <?php } ?>
      </tbody>
    </table>
    <div style="margin-top: 20px">
             <span class="pull-left"><p>Showing <?php echo ($this->uri->segment(3)) ? $this->uri->segment(3)+1 : 1; ?> to <?= ($this->uri->segment(3)+count($leads)); ?> of <?= $totalRecords; ?> entries</p></span>
              <ul class="pagination pull-right"><?php echo $links; ?></ul> 
        </div>
    </div>
  </div>

 <div class="col-lg-12 col-md-12"> 

      <div class="col-sm-6" style="margin: auto;">
          <div class="text-center">
            <h1>Default Callback Assignment</h1>
          </div> 
          <div class="form-group">
            <label for="email" class="control-label col-sm-3">Assigned to*</label>
            <div class="col-sm-9">
              <select type="email" class="form-control" name="user" required>
                <option value="">---Select User---</option>
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
                  } ?>
                  <option value="<?php echo $user->id ?>"><?php echo $user->first_name." ".$user->last_name." ($role)"; ?></option>
                <?php } ?>
              </select>
            </div>
          </div> 

                <div class="clearfix"></div>
                <br>
          <div class="form-group">
                    <label for="email" class="control-label col-sm-3">Project*</label>
                    <div class="col-sm-9">
                        <select type="email" class="form-control" name="project" required>
                          <option value="">---Select Project---</option>
                            <?php $projects= $this->common_model->all_active_projects(); 
                            foreach( $projects as $project){ ?>
                                <option value="<?php echo $project->id ?>"><?php echo $project->name ?></option>
                            <?php }?> 
                        </select>
                    </div>
                </div> 
          <div class="form-group" hidden="">
            <label for="email" class="control-label col-sm-3">Due Time*</label>
            <div class="col-sm-9">
              <input type="time" id="dt" class="form-control" name="due_time" value="<?=date('H:i')?>"/>
            </div>
          </div> 

          <div class="form-group">
            <div class="col-sm-offset-3">&nbsp;</div>
            <div class="col-sm-9">
              <button type="submit" class="btn btn-success btn-block">Save Data</button>
            </div>
          </div>
      </div>
      </div>
    
  <!-- </div>-->
  </form> 

  </iframe>
  <?php
}
?>
</div>


<script type="text/javascript">

    function reset_data(){
      
        $('#project').val("");
    $('#srxhtxt').val("");
        $("#search_form").submit();
    }
    $("#checkAll").click(function(){
    $('input:checkbox').not(this).prop('checked', this.checked);
}); 

  $(document).ready(function() {
     
    if (!Modernizr.inputtypes.date) {
      // If not native HTML5 support, fallback to jQuery datePicker
      $('input[type=date]').datepicker({
        // Consistent format with the HTML5 picker
          dateFormat : 'dd/mm/yy'
        }
      );
    }
    if (!Modernizr.inputtypes.time) {
      // If not native HTML5 support, fallback to jQuery timepicker
      $('input[type=time]').timepicker({ 'timeFormat': 'H:i' });
    }

  });
  $(function(){
        $("#to").datepicker({ dateFormat: 'yy-mm-dd' });
        $("#from").datepicker({ dateFormat: 'yy-mm-dd' }).bind("change",function(){
            var minValue = $(this).val();
            minValue = $.datepicker.parseDate("yy-mm-dd", minValue);
            minValue.setDate(minValue.getDate()+1);
            $("#to").datepicker( "option", "minDate", minValue );
        })
    });
</script>
                    </div>
                  
              </div>
            </div>
            
          </div>
        </div>
      </div>