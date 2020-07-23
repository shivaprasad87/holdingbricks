<div class="content">
        <div class="container-fluid">
          <div class="row">
          <div class="col-md-12">
                  <div class="col-md-4"></div>
                  <div class="col-md-4">
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
             <div class="col-md-12 mb-3">
             <a  href="<?php echo site_url('Users/add_user')?>" class="btn btn-success pull-right text-white">ADD USER<div class="ripple-container"></div></a>
           </div>
            <div class="col-md-12">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title mt-0"> All user info</h4>
                  
                </div>
                <div class="card-body">
                  <div class="table-responsive">
                  <table class="table table-striped table-bordered table-hover" id="bookTable">
                                    <thead>
                                        <tr>
					 	<th>S.No</th>
						<th>Name</th>
						<th>Mobile</th>
						<th>Role</th>
            <th>Branch</th>
						<th>Edit</th>
						<th>Status</th>
            <th>View dahsboard</th>
					</tr>
				</thead>
				 <tbody>
				
				</tbody>   
			</table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <script>
$(document).ready(function() {
    $('#bookTable').dataTable({
        "ajax": "<?php echo base_url('index.php/users/get_allusers'); ?>",
        "dom": 'T<"clear">lfrtip',
    
    });
});

function change_status(e)
{
  var r =confirm("Are you sure you want to "+e+" this user !");
			if(r == true)
			{
				return true;
			}else{event.preventDefault();}
}
  </script>