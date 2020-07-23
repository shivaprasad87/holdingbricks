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
             <div class="col-md-12 mb-3">
              
             <a  href="<?php echo site_url('leads/add_leads')?>" class="btn btn-success pull-right text-white">ADD LEADS<div class="ripple-container"></div></a>
           </div>
            <div class="col-md-12">

            <div class="card">
                <div class="card-header card-header-tabs card-header-primary">
                <div class="nav-tabs-navigation">
                    <div class="nav-tabs-wrapper">
                      <span class="nav-tabs-title"></span>
                      <ul class="nav nav-tabs" data-tabs="tabs">
                        <li class="nav-item">
                          <a class="nav-link active" href="#My_Leads" data-toggle="tab">
                             My leads
                            <div class="ripple-container"></div>
                          <div class="ripple-container"></div></a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="#Googleleads" data-toggle="tab">
                             Google leads
                            <div class="ripple-container"></div>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="#deadleads" data-toggle="tab">
                             Dead leads
                            <div class="ripple-container"></div>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="#closeleads" data-toggle="tab">
                             Close leads
                            <div class="ripple-container"></div> 
                          </a>
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
                                      <th>Name</th>
                                      <th>Mobile</th>
                                      <th>Email</th>
                                      <th>Project Name</th>
                                      <th>Edit</th>
                                    
                                      
                                    </tr>
                                  </thead>
                                  <tbody>
                              </tbody>   
                            </table> 
                          </div>
                    </div>
                  
                    <div class="tab-pane" id="deadleads">
                     
                     <div class="table-responsive">
                           <table class="table table-striped table-bordered table-hover" id="dleads" style="width:100% !important">
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
                                      <th>assigned to</th>
                                      <th>Update</th>
                                     </tr>
                                   </thead>
                                   <tbody>
                               </tbody>   
                             </table> 
                           </div>
                     </div>
                     <div class="tab-pane" id="closeleads">
                     
                     <div class="table-responsive">
                           <table class="table table-striped table-bordered table-hover" id="CLOSED" style="width:100% !important">
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
                                      <th>assigned to</th>
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
      
$(document).ready(function() {
    $('#bookTable').dataTable({
        "ajax": "<?php echo base_url('index.php/leads/get_all_new_leads'); ?>",
        "dom": 'T<"clear">lfrtip',
    
    });
 
    $('#gleads').dataTable({
        "ajax": "<?php echo base_url('index.php/leads/get_allgoogleleads'); ?>",
        "dom": 'T<"clear">lfrtip',
    
    });
 
    $('#dleads').dataTable({
        "ajax": "<?php echo base_url('index.php/leads/get_all_dead_leads'); ?>",
        "dom": 'T<"clear">lfrtip',
    
    });


    $('#CLOSED').dataTable({
        "ajax": "<?php echo base_url('index.php/leads/get_all_close_leads'); ?>",
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

$(".btn-default").click(function(){
  $(".nav-tabs-navigation").find(".btn-primary").removeClass("btn-primary").addClass("btn-default");
  $(this).removeClass("btn-default").addClass("btn-primary");
})
  </script>