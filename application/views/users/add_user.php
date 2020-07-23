 
      <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-10">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title"><?php echo $title; ?></h4> 
                </div>
                <div class="card-body mt-3">
                 <?php $attributes = array('class' => 'common_valid'); echo form_open_multipart("users/new_user",$attributes); ?>
                     
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">First Name <span class="text-danger">*</span></label>
                          <input type="text" class="form-control  validate[required] "  id="fname" name="user[f_name]">
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Last Name  <span class="text-danger">*</span></label>
                          <input type="text" class="form-control  validate[required]" name="user[l_name]">
                        </div>
                      </div>
                    </div>


                    <div class="row">  
                      <div class="col-md-6">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">User Name  <span class="text-danger">*</span></label>
                          <input type="text" class="form-control unique validate[required]" name="user[username]" id="username">
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">E-mail  <span class="text-danger">*</span></label>
                          <input type="email" class="form-control  unique validate[required]" id="email" name="user[email]">
                        </div>
                      </div>
                    </div>


                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Address  <span class="text-danger">*</span></label>
                          <input type="text" class="form-control  validate[required]" name="user[address]">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-4">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Phone 1  <span class="text-danger">*</span></label>
                          <input type="text" class="form-control  validate[required ,custom[onlyNumberSp]]" name="user[phone_1]" maxlength="10" minlength="10">
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Phone 2</label>
                          <input type="text" class="form-control validate[custom[onlyNumberSp]]" name="user[phone_2]" maxlength="10" minlength="10">
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">City  <span class="text-danger">*</span></label>
                          <input type="text" class="form-control  validate[required]" name="user[city]">
                        </div>
                      </div>
                    </div>

                    <div class="row">  
                      <div class="col-md-4">
                        <div class="form-group bmd-form-group">
                          <label class="select-label bmd-label-floating">Branch  <span class="text-danger">*</span></label>
                          
                          <select  class="form-control  validate[required]" name="user[branch]">
                          <option value>--select--</option>
                              <?php foreach($branch as $row){?>
                                  <option value="<?php echo $row->branch_id ?>"><?php echo $row->branch_name ?></option>
                              <?php } ?>
                          </select>
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group bmd-form-group">
                          <label class=" select-label bmd-label-floating">Role  <span class="text-danger">*</span></label>  
                           <select class="form-control  validate[required]" name="user[role]" id="role">
                            <option value>--select--</option>
                            <option value="sales">Sales</option>
                            <option value="manager">Manager</option>
                            <option value="Admin">Admin</option>
                          </select>
                        </div>
                      </div>
                      <div class="col-md-4 teammanager" >
                        
                      </div>
                     
                    </div>

                
                    <a href="<?php echo site_url("Users")?>"  class="btn btn-warning pull-right">Cancel</a>
     
                    <button type="submit" class="btn btn-primary pull-right mr-3">Submit</button>
                    <div class="clearfix"></div>
                  <?php echo form_close() ?>
                </div>
              </div>
            </div>
             
          </div>
        </div>
      </div>
  <script>
   
   

$(".unique").on('blur',function(e) {
 
 $(".error").remove();
 var lable = $(this).parent().find("label").text()
 var getval = $(this).val();
 lable = lable.trim();
 var getID = $(this).attr('id');
 console.log(getID);
$.ajax({
       type: "POST",
       url: url+"/users/check_unique",
       data: {'name':lable,'val':getval}, // serializes the form's elements.
       success: function(data)
       {
         console.log(data);
         if(data === "false")
         {
          $("#"+getID).val("");
          $( "<p class='error text-danger'>" +lable+ "already exist !  </p>" ).insertAfter("#"+getID);
         }else{
          $(".error").remove();
         }
           
       }
     });
 
});


$("#role").on('change',function(e) {
  
  $(".managererror").remove();
  if($(this).val() == "sales"){
      $.ajax({
         type: "POST",
         url: url+"/users/get_manager_list",
         data: {'role':$(this).val()}, // serializes the form's elements.
         success: function(data)
         {
          var obj = JSON.parse(data);
          console.log(obj);
         if(obj.length > 0){
        
                $clone='<div class="form-group bmd-form-group teammanagerlist">'
                            +'<label class=" select-label bmd-label-floating">Team manager  <span class="text-danger">*</span></label>'  
                             +'<select class="form-control  validate[required]" name="user[team_manager]" id="team_manager">'
                             +' <option> </option>';
                             for(var i=0; obj.length > i; i++ ){
                             $clone= $clone+'<option value="'+obj[i].user_id+'">'+ obj[i].f_name +"&nbsp;"+ obj[i].l_name +'</option>';
                             }
                             $clone= $clone+'</select>'
                          '</div>';
                          $(".teammanager").append($clone);
         }
         if(obj.length <= '0'){
           $clone="<span class='managererror'style='color:red'>There is no active manager to assign this user</span>";
           $(".teammanager").append($clone);
           console.log("sdf");
         }
          
            
         }
       });
  }else{ $(".teammanagerlist").remove();}
 
});
  </script>