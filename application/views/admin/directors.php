<div class="content">
          <div class="container-fluid">
 
          <div class="row">
            <div class="col-lg-12 col-md-12">
              <div class="card">
                <div class="card-header-primary">
                <h4> <?=$heading;?> </h4>
                </div>
                <div class="card-body">
                    <button class="plus"  onclick="myFunction()"><i class="fa fa-plus"></i>&nbsp;&nbsp;<?=$heading;?></button>
    <br>
    <br>
    <div id="myDIV" style="display:none;">
    
        <form name="save_seller_form" id="save_seller_form" method="POST" enctype="multipart/form-data">
        <div class="row">
        <div class="col-md-4 form-group mb-2">
                <label for="director">Enter First Name:</label>
                <input type="text" class="form-control" id="first_name" name="first_name" placeholder="Enter First Name" required>
            </div>

            <div class="col-md-4 form-group mb-2">
                <label for="director">Enter Last Name:</label>
                <input type="text" class="form-control" id="last_name" name="last_name" placeholder="Enter Last Name" >
            </div>

            <div class="col-md-4 form-group mb-2">
                <label for="email">Enter Email:</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Enter Email" required>
            </div>

            <div class="col-md-4 form-group mb-2">
                <label for="emp_code">Enter Emp code:</label>
                <input type="text" class="form-control" onblur="code_check(this.value)" id="emp_code" name="emp_code" placeholder="Enter Employee Id" required>
            </div>
            <div class="col-md-4 form-group mb-2">
                <label for="emp_last_name">Mobile Number:</label>
                <input type="text" class="form-control" id="emp_last_name" name="employee_mobile" placeholder="Employee Mobile Number" required="required">
            </div>
            <div class="col-md-4 form-group mb-2">
                <label for="emp_last_name">Address:</label>
                <textarea name="employee_address"></textarea>
            </div>
        </div>
        </div>
            <div class="col-sm-12 form-group">
                <button type="submit" style="margin-top:25px;" id="add_director" class="btn btn-success btn-block" disabled>Add Director</button>
            </div>

        </form>
   

    <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th class="priority-1">Id</th>
                <th class="priority-2">Director Name</th>
                <th class="priority-3">Director Email</th>
                <th class="priority-4">Emp Code</th>
                <th class="priority-5">Date Added</th>
                <th class="priority-6">Status</th>
                <th class="priority-7">Edit</th>
                <th class="priority-8">Change Password</th> 
                <th class="priority-9">Privilege</th>
            </tr>
        </thead> 
        <tbody>
            <?php
            $i=1;
             if(isset($all_directors) && $all_directors){
                foreach($all_directors as $Director){?>
                    <tr>
                        <td class="priority-1"><?php echo $i++; ?></td>
                        <td class="priority-2"><?php echo $Director->first_name." ".$Director->last_name; ?></td>
                        <td class="priority-3"><?php echo $Director->email; ?></td>
                        <td class="priority-4"><?php echo $Director->emp_code; ?></td>
                        <td class="priority-5"><?php echo $Director->date_added; ?></td>
                        <td class="priority-6" align="middle"><button type="button" id="b1<?php echo $Director->id; ?>" class="btn <?php echo $Director->active?'btn-info':'btn-danger'; ?>" onclick="change_state(<?php echo $Director->id; ?>)"><span id="stateus_sp_<?php echo $Director->id; ?>"><?php echo $Director->active?'Active':'Inactive'; ?></span></button></td>
                        <td class="priority-7" align="middle"><button type="button" class="btn btn-info" onclick="edit_user(<?php echo $Director->id; ?>)" data-toggle="modal" data-target="#modal_edit">Edit</button></td>
                        <td class="priority-8" align="middle"><button type="button" class="btn btn-info" onclick="reset_password(<?php echo $Director->id; ?>)">Reset Password</button></td>
                        <td class="priority-9" align="middle">
                            <button type="button" class="btn btn-info" onclick="permissionModal(<?php echo $Director->id; ?>)" data-toggle="modal" data-target="#modalPermission">Permission</button>
                        </td>
                    </tr>
                <?php }
            } ?>
        </tbody>
    </table>
</div>

<!-- Modal -->
<div class="modal fade" id="modal_edit" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Edit Director</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>    
                <div class="modal-body">
                <div class="row">
                    <input type="hidden" id="hid" name="hid">
                    
                    <div class="col-sm-6 form-group">
                        <label for="emp_code">Employee Code:</label>
                        <input type="text" class="form-control" id="m_emp_code" name="emp_code" placeholder="Employee Code" disabled="disabled">
                    </div>

                    <div class="col-sm-6 form-group">
                        <label for="emp_code">First name:</label>
                        <input type="text" class="form-control" id="m_first_name" name="m_first_name" placeholder="First name">
                    </div>

                    <div class="col-sm-6 form-group">
                        <label for="emp_code">Last name:</label>
                        <input type="text" class="form-control" id="m_last_name" name="m_last_name" placeholder="Last name">
                    </div>

                    <div class="col-sm-6 form-group">
                        <label for="emp_code">Email-id:</label>
                        <input type="text" class="form-control" id="m_email" name="m_email_id" placeholder="Email id">
                    </div>

                    <div class="col-sm-6 form-group">
                    <label for="emp_last_name">Mobile Number:</label>
                    <input type="text" class="form-control" id="m_employee_mobile" name="m_employee_mobile" placeholder="Employee Mobile Number" required="required">
                    </div>
                    <div class="col-sm-6 form-group">
                        <label for="emp_last_name">Address:</label>
                        <textarea id="m_employee_address"name="m_employee_address"></textarea>
                    </div>

                </div>
                </div>
           
            <div class="modal-footer">
                <button type="button" class="btn btn-success" onclick="update_user()" data-dismiss="modal">Submit</button>
            </div>
        </div>
    </div>
</div>
<script>
    function change_state(id){
        $(".se-pre-con").show();
        $.ajax({
            type:"POST",
            url: "<?php echo base_url()?>admin/change_status_user",
            data:{
                id:id
            },
            success:function(data){
                if(data.active){
                    $('#stateus_sp_'+id).text('Active');
                    $('#b1'+id).removeClass("btn-danger");
                    $('#b1'+id).addClass("btn-info");
                }else{
                    $('#stateus_sp_'+id).text('Inactive');
                    $('#b1'+id).removeClass("btn-info");
                    $('#b1'+id).addClass("btn-danger");
                }
                $(".se-pre-con").hide("slow");
            }
        });
    }

    function code_check(name){
        $('#add_director').prop('disabled', true);
        $(".se-pre-con").show();
        $.ajax({
            type:"POST",
            url: "<?php echo base_url()?>admin/check_user",
            data:{
                code:name
            },
            success:function(data){
                if(data.count){
                    alert("Duplicate Code! try again");
                    $('#emp_code').val('');
                }
                else
                    $('#add_director').prop('disabled', false);
                $(".se-pre-con").hide("slow");
            }
        });
    }

    function edit_user(v){
        $(".se-pre-con").show();
        console.log(v);
        $("#hid").val(v);
        $.ajax({
            type:"POST",
            url: "<?php echo base_url()?>admin/get_user_data",
            data:{id:v},
            success:function(data) {
                
                data = JSON.parse(data);
                var email=data.email;
                var first_name=data.first_name;
                var last_name=data.last_name;
                var emp_code=data.emp_code;
                var mobile=data.mobile_number;
                var address=data.address;
                
                $("#m_emp_code").val(emp_code);
                $("#m_first_name").val(first_name);
                $("#m_last_name").val(last_name);
                $("#m_email").val(email); 
                $("#m_employee_address").val(address);
                $("#m_employee_mobile").val(mobile);
                $(".se-pre-con").hide("slow");
            }
        });
    }

    function update_user(){
        $(".se-pre-con").show();
        
        var first_name=$("#m_first_name").val();
        var last_name=$("#m_last_name").val();
        var email=$("#m_email").val();
        var emp_address=$("#m_employee_address").val();
        var emp_mobile=$("#m_employee_mobile").val();

        var id=$("#hid").val(); 
            
        $.ajax({
            type:"POST",
            url: "<?php echo base_url()?>admin/update_user/"+id,
            data:{
                first_name:first_name,
                last_name:last_name,
                email:email,
                address:emp_address,
                mobile_number:emp_mobile
            },
            success:function(data) {
                data = JSON.parse(data);
                if(data.response){
                    alert("success");
                }
                location.reload();
            }
        });
    }

    function reset_password(id){
        $(".se-pre-con").show();
        $.get("<?php echo base_url()?>admin/reset_password/"+id,function(response){
            $(".se-pre-con").hide("slow");
            if(response.status)
                alert("Success");
        })
    }
        function myFunction() {
  var x = document.getElementById("myDIV");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
}
</script>
                    </div>
                  
              </div>
            </div>
            
          </div>
        </div>
      </div>