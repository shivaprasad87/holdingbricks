<!DOCTYPE html>
<html lang="en">
<?php    $uri= $this->uri->segment(1);
$session=$this->session->userdata();
//print_r($session);die;
 $session['user_type'];
 $role=$session['user_type'];
  ?>
<head>
  <meta charset="utf-8" />
 
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
  HOLDING BRICKS 
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <link rel="icon" href="<?php echo base_url();?>/assets/img/favicon_holding_bricks.png" sizes="32x32" />
<link rel="icon" href="<?php echo base_url();?>/assets/img/favicon_holding_bricks.png" sizes="192x192" />
<link rel="apple-touch-icon-precomposed" href="<?php echo base_url();?>/assets/img/favicon_holding_bricks.png
" />

  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Poppins|Material+Icons" />

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
   <!-- <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css" rel="stylesheet" type="text/css" /> -->
   <link href="<?php echo base_url();?>/assets/css/bootstrap-material-datetimepicker.css" rel="stylesheet" type="text/css" />
   <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css">
   
  <script>
  var url="<?php echo site_url() ?>";
  </script>
  <style>
.select-label {
  top: -10px !important;
}

.hide{
  display:none;
}
.show{
  display:block;
}
label {
    
    color: #464545;
   
}
.card-stats .card-header.card-header-icon i {
   
    width: 44px;
    height: 35px;
}
  </style>
  </head>
<body class="">
  <div class="wrapper ">
   <?php include 'sideMenu.php'?>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg nav-gradient navbar-absolute fixed-top ">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand" href="#pablo">Dashboard</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="sr-only">Toggle navigation</span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end">
             
            <ul class="navbar-nav">
               
              <!-- <li class="nav-item dropdown">
                <a class="nav-link" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="material-icons">notifications</i>
                  <span class="notification">5</span>
                  <p class="d-lg-none d-md-block">
                    Some Actions
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                  <a class="dropdown-item" href="#">Mike John responded to your email</a>
                  <a class="dropdown-item" href="#">You have 5 new tasks</a>
                  <a class="dropdown-item" href="#">You're now friend with Andrew</a>
                  <a class="dropdown-item" href="#">Another Notification</a>
                  <a class="dropdown-item" href="#">Another One</a>
                </div>
              </li> -->
              <li class="nav-item dropdown">
                <a class="nav-link" href="#pablo" id="navbarDropdownProfile" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="material-icons">person</i>
                  <p class="d-lg-none d-md-block">
                    Account 
                  </p><?php echo $session['user_name'];?>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownProfile">
                  <!-- <a class="dropdown-item" href="#">Profile</a>
                  <a class="dropdown-item" href="#">Settings</a> -->
                  <!-- <div class="dropdown-divider"></div> -->
                  <a class="dropdown-item" href="<?php echo base_url("myaccount/my_profile"); ?>">My Profile</a>
                   <a class="dropdown-item" href="<?php echo base_url("login/logout"); ?>">Log out</a>
                 
                </div>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->

      