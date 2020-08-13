      
      
      <style>
      .bmd-form-group input {
    margin-top: 0px;
}
      </style>
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
            <div class="col-md-12">
              <a  href="<?php echo site_url('generate_callback')?>" class="btn btn-success pull-right text-white mb-4">ADD LEADS<div class="ripple-container"></div></a>
            </div>
             <div class="col-md-12">
            
               </div>
            <div class="col-md-12">

            <div class="card">
                <div class="card-header card-header-tabs card-header-primary">
                 <div class="nav-tabs-navigation">
                    <div class="nav-tabs-wrapper">
                     
                      <ul class="nav nav-tabs" data-tabs="tabs">
                        <li class="nav-item" class="active">
                          <a class="nav-link" href="#My_Leads" data-toggle="tab">
                           All Leads
                            <div class="ripple-container"></div>
                          <div class="ripple-container"></div></a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="#closelead" data-toggle="tab">
                           Close Leads
                            <div class="ripple-container"></div>
                          <div class="ripple-container"></div></a>
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
                                                <th>Sub Source</th>
                                                <th>Advisor</th>
                                                <th>Due Date</th>
                                                
                                                
                                                <?php
                                                if($this->session->userdata('user_type')=='admin')
                                                {
                                                  echo "<th>Source Name</th>";
                                                }
                                                ?> 
                                                <th>Date Added</th>
                                                <th>Last Updated</th>
                                                <th>Update</th>
                                              </tr>
                                            </thead>
                                            <tbody>
                                        </tbody>   

                                      </table> 
                                    </div>
                              </div>
                    <!-- <div class="tab-pane" id="Googleleads">
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
                    </div> -->
                   
                    <div class="tab-pane" id="closelead">
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
                                                <th>Sub Source</th>
                                                <th>Advisor</th>
                                                <th>Due Date</th>
                                                
                                                
                                                <?php
                                                if($this->session->userdata('user_type')=='admin')
                                                {
                                                  echo "<th>Source Name</th>";
                                                }
                                                ?> 
                                                <th>Date Added</th>
                                                <th>Last Updated</th>
                                                <th>Update</th>
                                              </tr>
                                    </tr>
                                  </thead>
                                     <tfoot>
                                  <tr>
                                  
                            </table>
                            <br><br> 
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
  var i =1;
    $('#bookTable').dataTable({
        "ajax": "<?php echo base_url('my_leads/get_all_my_leads'); ?>",
        "dom": 'T<"clear">lfrtip',
        // initComplete: function () {
        //     this.api().columns().every( function () {
        //         var column = this;
        //         var s = '<select><option value=""></option></select>';
                
        //           var select = $(s)
        //             .appendTo( $(column.header()).empty() )
        //             .on( 'change', function () {
        //                 var val = $.fn.dataTable.util.escapeRegex(
        //                     $(this).val()
        //                 );
 
        //                 column
        //                     .search( val ? '^'+val+'$' : '', true, false )
        //                     .draw();
        //             } );
                
 
        //         column.data().unique().sort().each( function ( d, j ) {
        //             select.append( '<option value="'+d+'">'+d+'</option>' )
        //         } );
        //     } );
        // }
    });
 
    // $('#gleads').dataTable({
    //     "ajax": "<?php //echo base_url('index.php/my_leads/get_all_my_dead_leads'); ?>",
    //     "dom": 'T<"clear">lfrtip',
    
    // });
 
    $('#cleads').dataTable({
        "ajax": "<?php echo base_url('my_leads/get_all_my_close_leads'); ?>",
        "dom": 'T<"clear">lfrtip',
    
    });
});
 

$(".btn-default").click(function(){
  $(".nav-tabs-navigation").find(".btn-primary").removeClass("btn-primary").addClass("btn-default");
  $(this).removeClass("btn-default").addClass("btn-primary");
})
  </script>