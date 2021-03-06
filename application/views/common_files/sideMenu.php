<style>
  .open>.dropdown-menu, .dropdown-menu.show {
    display: block;
    opacity: 1;
    width: 88%;
    transform: scale(1);
    top: 50px!important;
    position: absolute!important;
}
.dropdown-menu ul li{
  list-style:none;
}
  </style>
<div class="sidebar" data-color="purple" data-background-color="white" data-image="../assets/img/sidebar-1.jpg">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
      <div class="logo">
        <!--<a href="#" class="simple-text logo-normal">-->
        <!--HOLDING BRICKS -->
        <!--</a>-->
         <a class="px-3 d-block mx-auto text-center" href="javascript:void(0);"><img src="<?php echo base_url();?>/assets/img//logo.png"></a>
      </div>
      <?php
$baseURL = ($this->session->userdata('user_type') == 'admin') ? base_url('admin') : base_url();
$i=1;
?>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="nav-item  <?php if($uri == ''){echo"active";}elseif($this->session->userdata('user_type') == 'admin' && empty($this->uri->segment(2))){echo"active";}else{ echo'';}?> ">
            <a class="nav-link" href="<?php if($uri == 'admin')echo base_url('admin'); else echo base_url('');?>">
              <i class="material-icons">dashboard</i>
              <p>Dashboard</p>
            </a>
          </li>
      <?php
    $this->load->model('Common_model');
    $parentModules = $this->common_model->getNavbarByClause(['parentId'=>0]);
    $aAttr = '';
    $permissionArry = json_decode($this->session->userdata('permissions'), true);
    if($parentModules) {
        foreach ($parentModules as $pModule) {
            if($permissionArry && in_array($pModule['id'], $permissionArry)) {
                
                $baseLink = ($this->session->userdata('user_type') == 'admin') ? base_url('admin/'.$pModule['permalink']) : base_url($pModule['permalink']);
                $childModules = $this->common_model->getNavbarByClause(['parentId' => $pModule['id']]);
                if($childModules) 
                    $aAttr  = 'data-toggle="dropdown" dropdown-toggle';
                ?>

                <li class="nav-item  dropdown <?=  ($this->router->fetch_method() == $pModule['permalink']) ? 'active' : $this->router->fetch_method() ?>">
                    <a href="<?= $baseLink;?>" <?= $aAttr; ?>  class="nav-link"><i class="<?php  echo $pModule['class']?>"></i> <span><?= $pModule['module'].((count($childModules)>0) ? '<span class="caret"></span>' :'') ?></span></a>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton" >
                   <?php
                    if(count($childModules)>0){
                        echo '<ul>';
                        foreach ($childModules as $cModule) {
                            $baseLink = ($this->session->userdata('user_type') == 'admin' || $this->session->userdata('user_type') == 'City_head') ? base_url('admin/'.$cModule['permalink']) : base_url($cModule['permalink']);
                            
                                 echo '<li><a href="'.$baseLink.'">'.$cModule['module'].'</a></li>';
                        }
                        echo '</ul>';
                    }
                    ?>
                    </div>
                </li>
                <?php
            }
            $i++;
        }
    }
    ?>
        </ul>
      </div>
    </div>

    <script>
      $(".show").click(function(){
    $(this).css("top","0");//used rotate to see the effect
});
      </script>
     