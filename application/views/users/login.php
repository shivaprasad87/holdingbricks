<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
   
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
  Login | HOLDING BRICKS 
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
   <link rel="icon" href="<?php echo base_url();?>/assets/img/favicon_holding_bricks.png" sizes="32x32" />
<link rel="icon" href="<?php echo base_url();?>/assets/img/favicon_holding_bricks.png" sizes="192x192" />
<link rel="apple-touch-icon-precomposed" href="<?php echo base_url();?>/assets/img/favicon_holding_bricks.png
" />
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <link rel="stylesheet" href="<?php echo base_url();?>/assets/css/validationEngine.jquery.min.css">
  <!-- CSS Files -->
  <link href="<?php echo base_url();?>/assets/css/material-dashboard.css?v=2.1.1" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <script src="<?php echo base_url();?>/assets/js/core/jquery.min.js"></script>
  <link href="<?php echo base_url();?>/assets/css/footable.bootstrap.css" rel="stylesheet" />
  <link href="<?php echo base_url();?>/assets/css/footable.bootstrap.min.css" rel="stylesheet" />
  <script src="<?php echo base_url();?>/assets/js/footable.min.js"></script>
  <script src="<?php echo base_url();?>/assets/js/footable.js"></script> 
<body class="">
<div id="login" class="wrapper">
<div class="main-panel">
<nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
    
        <div class="container-fluid">
            <a class="px-3" href="javascript:void(0);"><img src="<?php echo base_url();?>/assets/img//logo.png"> <div class="ripple-container"></div></a>
        </div>
      </nav>
      <div class="content align-items-center d-flex">
        <div class="container-fluid">
                  <?php 
                      if($this->session->flashdata('true')){ ?>
                        <div class="row">
                      <div class="col-md-4 offset-md-4">
                    <div class="alert alert-danger">
                                <button type="button" class="close" data-dismiss="alert">
                                  <i class="material-icons">X</i>
                                </button>
                                <span>
                                  <?php echo $this->session->flashdata('true') ?></span>
                              </div>
                  </div>
                  </div>
                      <?php } ?>
                  
          <div class="row">
            <div class="col-md-4 offset-md-4">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title text-center">Login</h4> 
                </div>
                <div class="card-body mt-3">
                 <?php $attributes = array('class' => 'common_valid'); echo form_open("login",$attributes); ?>
                     
                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">User Name <span class="text-danger">*</span></label>
                          <input type="text" class="form-control  validate[required] "  id="username" name="username" required>
                        </div>
                      </div>
                      <div class="col-md-12">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating"> Password  <span class="text-danger">*</span></label>
                          <input type="password" class="form-control  validate[required]" name="password" required>
                        </div>
                      </div>
                    <div class="col-md-12 mb-3 text-right">
                    <a href="" data-toggle="modal" data-target="#myModal">Forgot Password ?</a>
                    </div>
                    <div class="col-md-12 text-center">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                    </div>
                    <div class="clearfix"></div>
                  <?php echo form_close() ?>
                </div>
              </div>
            </div>
             <!-- Trigger the modal with a button -->
 
          </div>
        </div>
      </div>

      <footer class="footer bg-white">
        <div class="container-fluid">
          <div class="copyright text-right p-0">
              <div class="row">
              <div class="col-sm-6 text-left">
             © 
            <script>
              document.write(new Date().getFullYear())
            </script> HoldingBricks, All Rights Reserved.
            </div>
              <div class="col-sm-6 text-right">
            Design & Developed by
            <a href="https://ibrand.crbtech.in/" target="_blank">  IBRANDtech </a> 
            </div>
          </div>
          </div>
        </div>
      </footer>
    </div>
    </div>
 <!--   Core JS Files   -->

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
      <h4 class="modal-title">Forgot Password</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
      <div class="modal-body">
      <?php $attributes = array('class' => 'common_valid'); echo form_open("myaccount/forgot_password",$attributes); ?>
                     
                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Email <span class="text-danger">*</span></label>
                          <input type="text" class="form-control  validate[required] "  id="Email" name="email">
                        </div>
                      </div>
                     
                    </div>
                    <button type="reset" class="btn btn-warning pull-right" class="close" data-dismiss="modal">Cancel</button>
                      <button type="submit" class="btn btn-primary pull-right">Submit</button>  
                       <div class="clearfix"></div>
                  <?php echo form_close() ?>
      </div>
       
    </div>

  </div>
</div>
  <script src="<?php echo base_url();?>/assets/js/core/popper.min.js"></script>
  <script src="<?php echo base_url();?>/assets/js/core/bootstrap-material-design.min.js"></script>
  <script src="<?php echo base_url();?>/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!-- Plugin for the momentJs  -->
  <script src="<?php echo base_url();?>/assets/js/plugins/moment.min.js"></script>
  <!--  Plugin for Sweet Alert -->
  <script src="<?php echo base_url();?>/assets/js/plugins/sweetalert2.js"></script>
  <!-- Forms Validations Plugin -->
  <script src="<?php echo base_url();?>/assets/js/plugins/jquery.validate.min.js"></script>
  <!-- Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
  <script src="<?php echo base_url();?>/assets/js/plugins/jquery.bootstrap-wizard.js"></script>
  <!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
  <script src="<?php echo base_url();?>/assets/js/plugins/bootstrap-selectpicker.js"></script>
  <!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
  <script src="<?php echo base_url();?>/assets/js/plugins/bootstrap-datetimepicker.min.js"></script>
  <!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
  <script src="<?php echo base_url();?>/assets/js/plugins/jquery.dataTables.min.js"></script>
  <!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
  <script src="<?php echo base_url();?>/assets/js/plugins/bootstrap-tagsinput.js"></script>
  <!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
  <script src="<?php echo base_url();?>/assets/js/plugins/jasny-bootstrap.min.js"></script>
  <!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
  <script src="<?php echo base_url();?>/assets/js/plugins/fullcalendar.min.js"></script>
  <!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
  <script src="<?php echo base_url();?>/assets/js/plugins/jquery-jvectormap.js"></script>
  <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
  <script src="<?php echo base_url();?>/assets/js/plugins/nouislider.min.js"></script>
  <!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
  <!-- Library for adding dinamically elements -->
  <script src="<?php echo base_url();?>/assets/js/plugins/arrive.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chartist JS -->
  <script src="<?php echo base_url();?>/assets/js/plugins/chartist.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="<?php echo base_url();?>/assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="<?php echo base_url();?>/assets/js/material-dashboard.js?v=2.1.1" type="text/javascript"></script>
  <!-- Material Dashboard DEMO methods, don't include it in your project! -->
  <script src="<?php echo base_url();?>/assets/demo/demo.js"></script>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/jQuery-Validation-Engine/2.6.4/jquery.validationEngine.min.js" type="text/javascript" charset="utf-8"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jQuery-Validation-Engine/2.6.4/languages/jquery.validationEngine-en.js" type="text/javascript" charset="utf-8"></script>
  
  <script>

$(".common_valid").validationEngine('attach',{scroll: false,promptPosition: "topLeft"});

$("input").focus(function() { 
            $(".alert").hide(); 
        }); 
 
  </script>
</body>

</html>
