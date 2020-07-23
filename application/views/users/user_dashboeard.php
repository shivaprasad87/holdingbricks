<style>
.card-stats{    box-shadow: 9px 7px 14px 0 #63463a;
    margin-bottom: inherit;
    }
    .card-header{
      text-align: center !Important;
    padding: 27px !Important;
    }

</style>
      <div class="content">
        <div class="container-fluid">
        <h4 class="alert alert-success text-center mb-5">User name: <?php echo $user->f_name ."&nbsp;".$user->l_name;?></h4>
        <div class="card mb-5">
                <div class="card-header-primary">
                 <h4>Call information</h4>
                </div>
                <div class="card-body pt-0">
                  <div class="tab-content">
                  <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6">
              <div class="card card-stats bg-primary">
                <div class="card-header card-header-warning card-header-icon">
                  
                  <p class="card-category text-white">Today's call done</p>
                  <h3 class="card-title text-white"><?php if(isset($callsDone)){echo $callsDone;}else{echo "0";} ?></h3>
                </div>
                
              </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
              <div class="card card-stats bg-danger">
                <div class="card-header card-header-success card-header-icon">
                   
                  <p class="card-category text-white">Yesterday's call</p>
                  <h3 class="card-title text-white"><?php if(isset($yesterday_callback_count)){echo $yesterday_callback_count;}else{echo "0";} ?></h3>
                </div>
                 
              </div>
            </div>
           
            <div class="col-lg-3 col-md-6 col-sm-6">
            <a href="#overdueCalls">
              <div class="card card-stats bg-warning">
                <div class="card-header card-header-danger card-header-icon">
                  
                  <p class="card-category text-white">Overdue call</p>
                  <h3 class="card-title text-white"><?php if($overdue_callback_count>0){echo $overdue_callback_count;}else{echo "1";} ?></h3>
                </div>
                
              </div>
              </a>
            </div>
           
            <div class="col-lg-3 col-md-6 col-sm-6">
              <div class="card card-stats bg-rose">
                <div class="card-header card-header-info card-header-icon">
                 
                  <p class="card-category text-white">Call assigned today</p>
                  <h3 class="card-title text-white"><?php echo $todayassignedCall[0]->tot ?></h3>
                </div>
             
              </div>
            </div>
          </div>
                  </div>
                </div>
         </div>

         <div class="card mb-5">
                <div class="card-header-primary">
                 <h4>Lead information</h4>
                 
                </div>
                <div class="card-body pt-0">
                  <div class="tab-content">
                  <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-6">
              <div class="card card-stats bg-danger">
                <div class="card-header card-header-warning card-header-icon">
                 
                  <p class="h4 text-white">Dead leads</p>
                  <h3 class="card-title text-white"><?php if(isset($leadarray['Dead'])){echo $leadarray['Dead'];}else{echo "0";}?>
                  </h3>
                </div>
              
              </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6">
              <div class="card card-stats bg-warning">
                <div class="card-header card-header-success card-header-icon">
                   
                  <p class="h4 text-white">Closed leads</p>
                  <h3 class="card-title text-white"><?php if(isset($leadarray['Close'])){echo $leadarray['Close'];}else{echo "0";}?></h3>
                  
                </div>
                 
              </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6">
              <div class="card card-stats bg-rose">
                <div class="card-header card-header-danger card-header-icon">
                 <p class="h4 text-white">Active leads</p>
                  <h3 class="card-title text-white"><?php if(isset($leadarray['activlead'])){echo $leadarray['activlead'];}else{echo "0";}?></h3>
                  
                </div>
                
              </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6">
              <div class="card card-stats bg-primary">
                <div class="card-header card-header-info card-header-icon">
                   
                <p class="h4 text-white">Total customer register</p>
                <h3 class="card-title text-white"><?php if(isset($cge->cge)){echo $cge->cge;}else{echo "0";}?></h3>
                  
                </div>  
                 
              </div>
            </div> 
            <div class="col-lg-4 col-md-6 col-sm-6">
              <div class="card card-stats bg-success">
                <div class="card-header card-header-info card-header-icon">
                  
                 <p class="h4 text-white">Revenue generated</p>
                  <h3 class="card-title text-white"><?php if(isset($net_revnu[0]->net_revenu)){echo $net_revnu[0]->net_revenu;}else{echo "0";}?></h3>
                  
                </div>
                 
              </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6">
              <div class="card card-stats bg-purple">
                <div class="card-header card-header-info card-header-icon">
                  <p class="h4 text-white">Report manager name</p> 
                  <h3 class="card-title text-white"><?php if(isset($tm->f_name)){echo $tm->f_name."&nbsp".$tm->l_name;}else{echo "-";}?></h3>
                </div>
              </div>
            </div>
          </div>
          </div>
                </div>
         </div>
         
          
        
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
           <div class="card mb-5">
                <div class="card-header-tabs card-header-primary">
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
                    <table class="table table-striped table-bordered table-hover" id="site_visit_fix" style="width:100% !important">
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
              
                <div class="card mb-5">
            <div class="card-header-tabs card-header-primary">
            <div class="nav-tabs-navigation">
                <div class="nav-tabs-wrapper">
                  <span class="nav-tabs-title"></span>
                  <ul class="nav nav-tabs" data-tabs="tabs">
                    <li class="nav-item">
                      <a class="nav-link active" href="#My_Leads" data-toggle="tab">
                        New Leads
                        <div class="ripple-container"></div>
                      <div class="ripple-container"></div></a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link  " href="#close" data-toggle="tab">
                        Close Leads
                        <div class="ripple-container"></div>
                      <div class="ripple-container"></div></a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#Googleleads" data-toggle="tab">
                        Dead Leads
                        <div class="ripple-container"></div>
                      <div class="ripple-container"></div></a>
                    </li>
                  
                  </ul>
                </div>
              </div>
              </div>
            <div class="card-body">
              <div class="tab-content">
                <div class="tab-pane active show" id="My_Leads">
                      <div class="table-responsive">
                      <table class="table table-striped table-bordered table-hover" id="bookTable" style="width:100% !important">
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
                <div class="tab-pane" id="Googleleads">
                  <div class="table-responsive">
                      <table class="table table-striped table-bordered table-hover" id="gleads" style="width:100% !important">
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
                <div class="tab-pane" id="close">
                  <div class="table-responsive">
                      <table class="table table-striped table-bordered table-hover" id="cleads" style="width:100% !important">
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
          
          <div class="card">
                      <div class="card-header-primary">
                      <h4>Overdue call</h4> 
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

    <script>
    <?php $id= $this->uri->segment(3); ?>
    $(document).ready(function() {
    $('#bookTable').dataTable({
        "ajax": "<?php echo base_url('my_leads/get_all_my_leads/'.$id."/"); ?>",
        "dom": 'T<"clear">lfrtip',
    
    });
    $('#gleads').dataTable({
        "ajax": "<?php echo base_url('my_leads/get_all_my_dead_leads/'.$id."/"); ?>",
        "dom": 'T<"clear">lfrtip',
    
    });
    $('#cleads').dataTable({
        "ajax": "<?php echo base_url('my_leads/get_all_my_close_leads/'.$id."/"); ?>",
        "dom": 'T<"clear">lfrtip',
    
    });
    $('#important').dataTable({
        "ajax": "<?php echo base_url('my_leads/get_all_important_leads/important/'.$id."/"); ?>",
        "dom": 'T<"clear">lfrtip',
    
    });
 
    $('#site_visit_fix').dataTable({
        "ajax": "<?php echo base_url('my_leads/get_all_important_leads/site_visit_fixed/'.$id."/"); ?>",
        "dom": 'T<"clear">lfrtip',
    
    });
    $('#overdueCalls').dataTable({
        "ajax": "<?php echo base_url('my_leads/get_all_todays_leads/all/'.$id."/"); ?>",
        "dom": 'T<"clear">lfrtip',
        
    
    });
});

 
    </script>