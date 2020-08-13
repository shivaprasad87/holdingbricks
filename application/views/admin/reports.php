<div class="content">
          <div class="container-fluid">
 
          <div class="row">
            <div class="col-lg-12 col-md-12">
              <div class="card">
                <div class="card-header-primary">
                <h4> <?=$heading;?> </h4>
                </div>
                <div class="card-body">
    <form action="<?php echo base_url()?>admin/generate_report">
    <div class="col-xs-12 col-md-12">
    <div class="row">
    <div class="col-xs-6 col-md-6 form-group">
      <label for="emp_code">From:</label>
            <input type="text" class="form-control datepicker" id="fromDate" name="fromDate" placeholder="Date" required="required" autocomplete="off"> 
            <input type="time" class="form-control" id="fromTime" name="fromTime" placeholder="Time" value="00:00" required="required">
    </div>
    <div class="col-xs-6 col-md-6 form-group">
      <label for="emp_code">To:</label>
            <input type="text" class="form-control datepicker" id="" name="toDate" placeholder="Date" required="required" autocomplete="off">
            
            <input type="time" class="form-control" id="toTime" name="toTime" placeholder="Time" value="23:59" required="required">
    </div>
    <div class="col-xs-6 col-md-6 form-group">
            <input  type="submit" id="Generate"  value="Generate"class="btn btn-success btn-block">
        </div>
        <div class="col-xs-6 col-md-6 form-group">
            <button type="reset" id="save" class="btn btn-danger btn-block">Cancel</button>
        </div>

    <div class="clearfix"></div>
    <br>
    <div class="col-xs-12 col-md-6 form-group radio-btn"> 
            <label for = "lead_report" class="lead col-xs-6">Lead Report:</label>
            <div class="lead col-xs-5">
                <input type="radio" class="form-control lead" id="lead_report" value="lead" name="reportType" >
            </div>
            <div class="clearfix"></div>
            <!-- <label for = "lead_assignment_report" class="lead col-xs-6">Lead Assignment Report:</label>
            <div class="lead col-xs-5">
                <input type="radio" class="form-control lead" id="lead_assignment_report" value="lead_assignment" name="reportType" >
            </div>
            <div class="clearfix"></div>
            <?php if($this->session->userdata('user_type')!='City_head'){ ?>
            <label for = "site_visit_report" class="lead col-xs-6">Site Visit Done report:</label>
            <div class="lead col-xs-5">
                <input type="radio" class="form-control lead" id="site_visit_report" value="site_visit" name="reportType" >
            </div>
            <div class="clearfix"></div>
            <label for = "clent_reg_report" class="lead col-xs-6">Client registration report:</label>
            <div class="lead col-xs-5">
                <input type="radio" class="form-control lead" id="clent_reg_report" value="clent_reg" name="reportType" >
            </div>
            <div class="clearfix"></div>
            <label for = "revenue_report" class="lead col-xs-6">Revenue Report:</label>
            <div class="lead col-xs-5">
                <input type="radio" class="form-control lead" id="revenue_report" value="revenue" 
                name="reportType" >
            </div>
            <div class="clearfix"></div>
            <label for = "daily_act_report" class="lead col-xs-6">Daily Activity Report:</label>
            <div class="lead col-xs-5">
                <input type="radio" class="form-control lead" id="daily_act_report" value="daily_act" name="reportType" >
            </div>
            <div class="clearfix"></div>
            <label for = "site_visit_fixed_report" class="lead col-xs-6">Site Visit Fixed Report:</label>
            <div class="lead col-xs-5">
                <input type="radio" class="form-control lead" id="site_visit_fixed_report" value="site_visit_fixed" name="reportType" >
            </div>   
            <div class="clearfix"></div>
            <label for = "face_to_face_report" class="lead col-xs-6">Face to Face Report:</label>
            <div class="lead col-xs-5">
                <input type="radio" class="form-control lead" id="face_to_face_report" value="face_to_face" name="reportType" >
            </div> -->
        <?php }?>
            <div class="clearfix"></div>
           <!--  <label for = "face_to_face_report" class="lead col-xs-6">Due Report:</label>
            <div class="lead col-xs-5">
                <input type="radio" class="form-control lead" id="due_report" value="due" name="reportType" >
            </div>  
            <div class="clearfix"></div>
            <label for = "face_to_face_report" class="lead col-xs-6">Callback Report:</label>
            <div class="lead col-xs-5">
                <input type="radio" class="form-control lead" id="callback_report" value="dailyCallback" name="reportType" >
            </div>  
            <label for = "svdead" class="lead col-xs-6">site visit dead report:</label>
            <div class="lead col-xs-5">
                <input type="radio" class="form-control lead" id="svdead" value="svdead" name="reportType" >
            </div>
            <label for = "svdead" class="lead col-xs-6">Re visits report:</label>
            <div class="lead col-xs-5">
                <input type="radio" class="form-control lead" id="resv" value="resv" name="reportType" >
            </div>
            <div class="clearfix"></div> -->
    </div> 
        
        </div>
        </div>
  </form>
                    </div>
                  
              </div>
            </div>
            
          </div>
        </div>
      </div>