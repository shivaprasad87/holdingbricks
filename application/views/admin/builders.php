<style>
    .bmd-form-group .bmd-label-static {
        top:-14px;
    left: 15;
    font-size: 0.875rem;
}
</style>

<div class="content">
          <div class="container-fluid">
 
          <div class="row">
            <div class="col-lg-12 col-md-12">
              <div class="card">
                <div class="card-header-primary">
                <h4> <?=$heading;?> </h4>
                </div>
                <div class="card-body">
                   <div class="container">
  
    <div class="col-sm-6 form-group">
        <label for="builder">Enter Builder Name:</label>
        <input type="text" class="form-control" onblur="check_builder(this.value)" id="builder"  name="builder" placeholder="Enter Builder">
    </div>
    <div class="col-sm-6 form-group">
        <button type="submit" id="add_builder" style="margin-top:25px;" class="btn btn-success btn-block" onclick="add()">Add Builder</button>
    </div>
    <table id="example" class="table table-striped table-bordered dt-responsive" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>Builder Id</th>
                <th>Builder Name</th>
                <th>Date Added</th>
                <th>Status</th>
            </tr>
        </thead> 
        <tbody>
            <?php
            $i=1;
             if(isset($all_builders) && $all_builders){
                foreach($all_builders as $builder){ ?>
                    <tr>
                        <td><?php echo $i++; ?></td>
                        <td><?php echo $builder->name; ?></td>
                        <td><?php echo $builder->date_added; ?></td>
                        <td align="middle"><button type="button" id="b1<?php echo $builder->id; ?>" class="btn <?php echo $builder->active?'btn-info':'btn-danger'; ?>" onclick="change_status(<?php echo $builder->id; ?>)"><span id="builderus_sp_<?php echo $builder->id; ?>"><?php echo $builder->active?'Active':'Inactive'; ?></span></button></td>
                    </tr>
                <?php }
            } ?>
        </tbody>
    </table>
    <script>
        function add(){
            $(".se-pre-con").show();
            var builder=$('#builder').val();
            if(builder!=''){
                $.ajax({
                    type:"POST",
                    url: "<?php echo base_url()?>admin/add_builder",
                    data:{builder:builder},
                    success:function(data){
                        alert("add successful");
                    }
                });
                location.reload();
            }
            else{
                $(".se-pre-con").hide("slow");
                alert("Please Enter a value");
            }
        }
        function change_status(id){
            $(".se-pre-con").show();
            $.ajax({
                type:"POST",
                url: "<?php echo base_url()?>admin/change_status_builder",
                data:{id:id},
                success:function(data){
                    if(data.active){
                        $('#builderus_sp_'+id).text('Active');
                        $('#b1'+id).removeClass("btn-danger");
                        $('#b1'+id).addClass("btn-info");
                    }else{
                        $('#builderus_sp_'+id).text('Inactive');
                        $('#b1'+id).removeClass("btn-info");
                        $('#b1'+id).addClass("btn-danger");
                    }
                    $(".se-pre-con").hide("slow");
                }
            });
        }
        function check_builder(name){
            $('#add_builder').prop('disabled', false);
            $(".se-pre-con").show();
            $.ajax({
                type:"POST",
                url: "<?php echo base_url()?>admin/check_builder",
                data:{code:name},
                success:function(data){
                    if(data.count){
                        alert("Duplicate Code! try again");
                        $('#builder').val('');
                    }
                    else
                        $('#add_builder').prop('disabled', false);
                    $(".se-pre-con").hide("slow");
                }
            });
        }
    </script>
</div>
                    </div>
                  
              </div>
            </div>
            
          </div>
        </div>
      </div>