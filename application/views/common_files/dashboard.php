 <style>
 
    .card-header{
      text-align: center !Important;
    padding: 27px !Important;
    }

</style>
      <div class="content">
          <div class="container-fluid">
          <div class="card mb-5">
        <div class="card-header-primary">
                 <h4>Call information</h4>
                </div>
        <?php if($this->session->userdata('role') == "Admin"){ ?>
          <div class="row first-box">
            <div class="col-lg-3 col-md-6 col-sm-6">
              <div class="card card-stats bg-primary mb-lg-0">
                <div class="card-header card-header-warning card-header-icon">
                 
                  <p class="card-category text-white">Today's Call done</p>
                  <h3 class="card-title text-white"><?php if($callsDone){echo $callsDone;}else{echo "0";} ?>
                   </h3>
                </div>
                
              </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
              <div class="card card-stats bg-danger mb-lg-0">
                <div class="card-header card-header-success card-header-icon">
                
                  <p class="card-category text-white">Yesterday's call</p>
                  <h3 class="card-title text-white"><?php if($yesterday_callback_count){echo $yesterday_callback_count;}else{echo "0";} ?></h3>
               </div>
                 
              </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
              <a href="#overdueCalls">
              <div class="card card-stats bg-warning mb-lg-0">
                <div class="card-header card-header-danger card-header-icon">
                   <p class="card-category text-white">Overdue call</p>
                  <h3 class="card-title text-white"><?php if($overdue_callback_count){echo $overdue_callback_count;}else{echo "0";} ?></h3>
                  </div>
                 </div>
                 </a>
            </div>
             <div class="col-lg-3 col-md-6 col-sm-6">
              <div class="card card-stats bg-rose mb-lg-0">
                <div class="card-header card-header-info card-header-icon">
                
                  <p class="card-category text-white">Call assigned today</p>
                  <h3 class="card-title text-white"><?php if($today_callback_count){echo $today_callback_count;}else{echo "0";}  ?></h3>
                </div>
                 
              </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
              <div class="card card-stats bg-success mb-0">
                <div class="card-header card-header-info card-header-icon">
                  
                  <p class="card-category text-white" style="font-size: 20px;">Revenue generated</p> 
                  <h3 class="card-title text-white"><?php if($total_revenue){echo $total_revenue;}else{echo "0";}?></h3>
                </div>
                
              </div>
            </div>
            
          </div>
          
          
        <?php }else{ ?>
                  <div class="row first-box">
            <div class="col-lg-3 col-md-6 col-sm-6">
              <div class="card card-stats bg-primary mb-lg-0">
                <div class="card-header card-header-warning card-header-icon">
                 
                  <p class="card-category text-white">Today's Call done</p>
                  <h3 class="card-title text-white"><?php if($today_callback_count>0){echo $today_callback_count;}else{echo "0";} ?>
                  </h3>
                </div>
                
              </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
              <div class="card card-stats bg-danger mb-lg-0">
                <div class="card-header card-header-success card-header-icon">
                
                  <p class="card-category text-white">Yesterday's call</p>
                  <h3 class="card-title text-white"><?php if($yesterday_callback_count){echo $yesterday_callback_count;}else{echo "0";} ?></h3>
                </div>
                 
              </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
            <a href="#overdueCalls" >
              <div class="card card-stats bg-warning mb-lg-0">
                <div class="card-header card-header-danger card-header-icon">
                   
                  <p class="card-category text-white">Overdue call</p>
                  <h3 class="card-title text-white"><?php if($overdue_callback_count){echo $overdue_callback_count;}else{echo "0";} ?></h3>
                </div>
                
              </div>
              </a>
            </div>
             <div class="col-lg-3 col-md-6 col-sm-6">
              <div class="card card-stats bg-rose mb-lg-0">
                <div class="card-header card-header-info card-header-icon">
                
                  <p class="card-category text-white">Call assigned today</p>
                  <h3 class="card-title text-white"><?php if($today_callback_count>0){echo $today_callback_count;}else{echo "0";} ?></h3>
                </div>
                 
              </div>
            </div>
          </div>  <?php } ?>
          
          </div>
            
          <?php if($this->session->userdata('role') == "Admin"){}else{ ?>
          <div class="card">
          <div class="card-header-primary">
         <h4>Lead information</h4>
         </div>
          <div class="row first-box">
            <div class="col-lg-4 col-md-6 col-sm-6">
              <div class="card card-stats bg-danger mb-lg-0">
                <div class="card-header card-header-warning card-header-icon">
                  <h4 class="card-category text-white">Dead leads</h4>
                  <h3 class="card-title text-white"><?php if($dead_leads_count){echo $dead_leads_count;}else{echo "0";}?>
                  </h3>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6">
              <div class="card card-stats bg-warning mb-lg-0">
                <div class="card-header card-header-success card-header-icon">
                  <h4 class="card-category text-white">Closed leads</h4> 
                  <h3 class="card-title text-white"><?php if($close_leads_count){echo $close_leads_count;}else{echo "0";}?></h3>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6">
              <div class="card card-stats bg-rose mb-lg-0">
                <div class="card-header card-header-danger card-header-icon">
                 <h4 class="card-category text-white">Active leads</h4>
                  <h3 class="card-title text-white"><?php if($active_leads_count){echo $active_leads_count;}else{echo "0";}?></h3>
                </div>
              </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
              <div class="card card-stats bg-primary mb-lg-0">
                <div class="card-header card-header-info card-header-icon">
                 <h4 class="card-category text-white">Total customer register</h4>
                  <h3 class="card-title text-white"><?php if($client_reg_count){echo $client_reg_count;}else{echo "0";}?></h3>
                </div>
              </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
              <div class="card card-stats bg-success mb-lg-0">
                <div class="card-header card-header-info card-header-icon">
                <h4 class="card-category text-white">Revenue generated</h4>
                <h3 class="card-title text-white"><?php if($total_revenue){echo $total_revenue;}else{echo "0";}?></h3>
                </div>
              </div>
            </div>
            </div>
          </div>
          <?php } ?>
          <!-- <div class="row">
            <div class="col-md-4">
              <div class="card card-chart">
                <div class="card-header card-header-success">
                  <div class="ct-chart" id="dailySalesChart"></div>
                </div>
                <div class="card-body">
                  <h4 class="card-title">Daily Sales</h4>
                  <p class="card-category">
                    <span class="text-success"><i class="fa fa-long-arrow-up"></i> 55% </span> increase in today sales.</p>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <i class="material-icons">access_time</i> updated 4 minutes ago
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="card card-chart">
                <div class="card-header card-header-warning">
                  <div class="ct-chart" id="websiteViewsChart"></div>
                </div>
                <div class="card-body">
                  <h4 class="card-title">Email Subscriptions</h4>
                  <p class="card-category">Last Campaign Performance</p>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <i class="material-icons">access_time</i> campaign sent 2 days ago
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="card card-chart">
                <div class="card-header card-header-danger">
                  <div class="ct-chart" id="completedTasksChart"></div>
                </div>
                <div class="card-body">
                  <h4 class="card-title">Completed Tasks</h4>
                  <p class="card-category">Last Campaign Performance</p>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <i class="material-icons">access_time</i> campaign sent 2 days ago
                  </div>
                </div>
              </div>
            </div>
          </div> -->
          <div class="row">
            <div class="col-lg-12 col-md-12">
              <div class="card">
                <div class="card-header-primary">
                  <div class="nav-tabs-navigation">
                    <div class="nav-tabs-wrapper">
                      <span class="nav-tabs-title"></span>
                      <ul class="nav nav-tabs" data-tabs="tabs">
                        <li class="nav-item">
                          <a class="nav-link active" href="#profile" data-toggle="tab">
                             Important Call's
                            <div class="ripple-container"></div>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="#messages" data-toggle="tab">
                             Site visit fixed
                            <div class="ripple-container"></div>
                          </a>
                        </li>
                       
                      </ul>
                    </div>
                  </div>
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
                                      <th>Call type</th>
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
                    <div class="tab-pane" id="messages">
                        <div class="table-responsive">
                    <table class="table table-striped table-bordered table-hover" id="todayslead" style="width:100% !important">
                                    <thead>
                                        <tr>
                                      <th>S.No</th>
                                      <th>L NO</th>
                                      <th>Name</th>
                                      <th>Mobile</th>
                                      <th>Email</th>
                                      <th>Project</th>
                                      <th>Call type</th>
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
          <div class="row">
            <div class="col-lg-12 col-md-12">
              <div class="card">
                <div class="card-header-primary">
                <h4> Overdue call </h4>
                </div>
                <div class="card-body">
                   <div class="table-responsive">
                    <table class="table table-striped table-bordered table-hover" id="overdueCalls" style="width:100% !important">
                                    <thead>
                                        <tr>
                                      <th>S.No</th>
                                      <th>L NO</th>
                                      <th>Name</th>
                                      <th>Mobile</th>
                                      <th>Email</th>
                                      <th>Project</th>
                                      <th>Call type</th>
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
     
    
  
  <script>
   <?php $id= $this->session->userdata('user_id'); ?>
    $(document).ready(function() {
    $('#important').dataTable({
        "ajax": "<?php echo base_url('my_leads/get_all_important_leads/important/'.$id."/"); ?>",
        "dom": 'T<"clear">lfrtip',
    
    });
 
     
    $('#todayslead').dataTable({
        "ajax": "<?php echo base_url('my_leads/get_all_site_visit_fix/'.$id."/"); ?>",
        "dom": 'T<"clear">lfrtip',
    
    });
    $('#overdueCalls').dataTable({
        "ajax": "<?php echo base_url('my_leads/get_due_leads/all/'.$id."/"); ?>",
        "dom": 'T<"clear">lfrtip',
        
    
    });
});
 

    </script>
    