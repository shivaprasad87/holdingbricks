<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
  HOLDING BRICKS
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
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
<div class="wrapper">
<div class="main-panel" style="width:100% !important">
<nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand" href="#"><img src="<?php echo base_url();?>/assets/img//Holding Bricks.png" width="12%"> <div class="ripple-container"></div></a>
          </div>
         
          <div class="collapse navbar-collapse justify-content-end">
             
             
          </div>
        </div>
      </nav>
      <div class="content">
        <div class="container-fluid">
          <div class="row">
          <div class="col-md-4"></div>
            <div class="col-md-4  ">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Set Password</h4> 
                </div>
                <div class="card-body">
                 <?php $attributes = array('class' => 'common_valid'); echo form_open("myaccount/update_password",$attributes); ?>
                 <input type="hidden" class="form-control  validate[required] "  id="id" name="user_id" value="<?php echo $id->user_id;;?>">
                      
                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Password <span class="text-danger">*</span></label>
                          <input type="password" class="form-control  validate[required] "  id="psw" name="password">
                        </div>
                      </div>
                     
                    </div>
                    <div class="row">
                    <div class="col-md-12">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Conf Password  <span class="text-danger">*</span></label>
                          <input type="password" class="form-control  validate[required,equals[psw]]" id="copsw" name="cofpassword">
                        </div>
                      </div>
                      </div>
                   
                   
                    <button type="submit" class="btn btn-primary pull-right">Submit</button>
                    <div class="clearfix"></div>
                  <?php echo form_close() ?>
                </div>
              </div>
            </div>
             
          </div>
        </div>
      </div>

      <footer class="footer">
        <div class="container-fluid">
         
          <div class="copyright float-right">
            ©
            <script>
              document.write(new Date().getFullYear())
            </script>2019, made with <i class="material-icons">favorite</i> by
            <a href="https://www.creative-tim.com" target="_blank">Creative Tim</a> for a better web.
          </div>
        </div>
      </footer>
    </div>
    </div>
 <!--   Core JS Files   -->

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

 
  </script>
</body>

</html>
