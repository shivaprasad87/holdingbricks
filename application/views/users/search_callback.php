<div class="content">
          <div class="container-fluid">
 
          <div class="row">
            <div class="col-lg-12 col-md-12">
              <div class="card">
                <div class="card-header-primary">
                <h4> <?=$heading;?> </h4>
                </div>
                <div class="card-body">
                  <div class="tab-content">
                    <div class="tab-pane active" id="profile">
                        <div class="table-responsive">
                    <table class="table table-striped table-bordered table-hover" id="important" style="width:100% !important">
                                    <thead>
                                        <tr>
                                      <th>S.No</th>
                                      <th>L NO</th>
                                      <th>Name</th>
                                      <th>Mobile</th>
                                      <th>Email</th>
                                      <th>Project</th> 
                                      <th>Status</th>
                                      <th>Date</th>
                                      <th>Update</th>
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
        </div>
      </div>
       <script>
    <?php $id= $this->session->userdata('user_id'); ?>
    $(document).ready(function() {
    $('#important').dataTable({
        "ajax": "<?php echo base_url('dashboard/search_callback/').$id; ?>",
        "dom": 'T<"clear">lfrtip',
    
    });

});

 
    </script>