<style type="text/css">
  .hidden
  {
    display: none;
  }
table {
  border-collapse: collapse;
}

table, th, td {
  border: 1px solid black;
}.display-lead,.display{
    border: 1px solid #aaa;
    padding: 5px;
}
.display-lead td {
    border: 1px solid #aaa;
    padding: 5px;
}
.target, .target a{
    color: #002561;
    font-weight: bold; 
}
#prdusername,#csmrusername{
    text-align: center;
    font-weight: bold;
}
</style>
<div class="content">
          <div class="container-fluid">
 
          <div class="row">
            <div class="col-lg-12 col-md-12">
              <div class="card">
                <div class="card-header-primary">
                <h4> <?=$heading;?> </h4>
                </div>
                <div class="card-body">
                    <div class="container">
  <div class="alert alert-success" style="display: none;">
    <strong>Success!</strong> Email Sent.
  </div>
  <div class="alert alert-danger" style="display: none;">
    <strong>Error!</strong> Email not Sent.
  </div>
  <form method="GET" action="<?php echo base_url()?>admin/generate_report">
  <div class="row">
    <div class="col-sm-3 form-group">
      <label for="emp_code">Dept:</label>
            <select  class="form-control"  id="dept" name="dept" required >
                <option value="">Select</option>
                <?php $all_department=$this->common_model->all_active_departments();
                foreach($all_department as $department){ ?>
                    <option value="<?php echo $department->id; ?>" <?php if($department->id==$dept) echo 'selected'; ?>><?php echo $department->name; ?></option>
                <?php }?>              
            </select>
    </div>
    <div class="col-sm-3 form-group">
      <label for="emp_code">City:</label>
            <select  class="form-control"  id="city" name="city" >
                <option value="">Select</option>
                <?php $cities= $this->common_model->all_active_cities(); 
                foreach( $cities as $c){ ?>
                    <option value="<?php echo $c->id; ?>" <?php if($c->id==$city) echo 'selected'; ?> ><?php echo $c->name ?></option>
                <?php } ?>               
            </select>
    </div>
    <div class="col-sm-3 form-group">
            <button type="submit" id="Generate" class="btn btn-success btn-block">Filter</button>
        </div>
        <div class="col-sm-3 form-group">
            <button id="email_this_report" class="btn btn-default btn-block">Email this report</button>
        </div>
    </div>
    </form>
    <br>
    <div class="col-md-12">
    <div class="row">
      <div class="col-md-4">
        <table class="display table table-striped table-bordered table-hover" cellspacing="0" width="100%">
          <thead>
            <tr>
              <th>Sl.No</th>
              <th>Advisor</th>
              <th>No. of callbacks Assigned</th>
                          <th class="hidden">key</th>
                          <th class="hidden" >fromDate</th>
                          <th class="hidden">todate</th>
                          
            </tr>
          </thead>
          <tbody>
            <?php if(count($advisors)>0){
              $i = 1;
              $total = 0;
              foreach ($advisors as $key => $value) { 
                $name = $this->user_model->get_user_fullname($key); 
                $total += $value; ?>
                <tr>
                  <td><?php echo $i; ?></td>
                  <td><?php echo $name; ?></td>
                  <td class="target" onclick="getrowvalue(this)" style="cursor: pointer;"><?=$value?> </td> 
                                  <!-- <td><?=$key?></td> -->
                                  <td class="hidden" id ="key"><?=$key?></td>
                                  <div class="hidden" id="ls<?=$key?>"></div>
                                  <td class="hidden">
                                  <?=$this->input->get('fromDate');?>                              
                                  </td>
                                  <td class="hidden">
                                  <?=$this->input->get('toDate');?>                              
                                  </td>
                                  
                                  </tr>
                              
              <?php $i++; } ?>
              <tr>
                <td colspan="2">Total</td>
                <td><a href="<?php echo base_url().'view_callbacks?report='.urlencode($reportType).'&dept='.urlencode($dept).'&city='.urlencode($city).'&fromDate='.urlencode($fromDate).'&toDate='.urlencode($toDate); ?>"><?php echo $total; ?></a></td>
              </tr>
            <?php } else { ?>
              <tr>
                <td colspan="3"> No entries </td>
              </tr>
            <?php } ?>
          </tbody>
        </table>
      </div>
        <script>
           function getrowvalue(id){
            $("#dispalyprd").addClass('hidden')
            
           var trid = $(id).parent('tr').children();
           var a=$(trid)[3];
             var userid= $(a).text().trim();
             var fromDate=$($(trid)[4]).text().trim();
             var toDate=$($(trid)[5]).text().trim();
             $("#customer_detail").empty();
             var weburl=   'https://'+window.location.host+'/admin/lead_report?user_id='+userid+'&fromDate='+fromDate+'&toDate='+toDate
             console.log(weburl);
             var tbody='';
             var theadtr='';
             
             $.ajax({
                 "Type":"GET",
                  "url":' https://'+window.location.host+'/admin/lead_report?user_id='+userid+'&fromDate='+fromDate+'&toDate='+toDate,
                  success: function (response) {
                      var data=JSON.parse(response)
                     var thead= Object.keys(data[0])
                     // for(j=0;j<=thead.length-1;j++){
                     //    theadtr+='<th>'+thead[j]+'</th>'
                     // }
                     $("#csmrusername").text(data[0].user_name)
                    //  theadtr+='<tr><th colspan=2>'+data[0].user_name+'</th></tr><tr><th>Count</th><th>Lead Source</th></tr>'; 
                    //   $("#customer-theadtr").append(theadtr);
                    for(i=0;i<=data.length-1;i++){
                        
                    tbody +='<tr><td style="display:none;">'+data[i].lead_source_id+'</td><td>'+data[i].lead_source+'</td><td class="target" onclick="get_lead_source_id(this)" style="cursor: pointer;">'+data[i].count+'</td><td style="display:none;">'+data[i].user_id+'</td><td style="display:none;">'+fromDate+'</td><td style="display:none;">'+toDate+'</td></tr>'
                }
                $("#customer_detail").append(tbody)
                $("#dispalycmr").removeClass('hidden');
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    console.log(textStatus, errorThrown);
                }
             })
            
             }

             function get_lead_source_id(id){
                // $(".display-lead").hide();
                var trid = $(id).parent('tr').children();
                var fromDate=$($(trid)[4]).text().trim();
                var toDate=$($(trid)[5]).text().trim();
                var lead_source_id=$($(trid)[0]).text().trim();
                var user_id=$($(trid)[3]).text().trim();
               
                $("#product_detail").empty();
                $("#product-theadtr").empty();
             var tbody='';
             var theadtr='';
                $.ajax({
                 "Type":"GET",
                 "url":' https://'+window.location.host+'/admin/lead_report?user_id='+user_id+'&fromDate='+fromDate+'&toDate='+toDate+'&lead_source_id='+lead_source_id,
                  success: function (response) {
                      var data=JSON.parse(response)
                      console.log(data)
                      var thead= Object.keys(data[0])
                     // for(j=0;j<=thead.length-1;j++){
                     //    theadtr+='<th>'+thead[j]+'</th>'
                     // }
                     $("#prdusername").text(data[0].user_name)
                    //  theadtr+='<tr><th colspan=2>'+data[0].user_name+'</th></tr><tr><th>Count</th><th>Project Name</th></tr>';
                    //   $("#product-theadtr").append(theadtr);
                    for(i=0;i<=data.length-1;i++){
                      var url_of_project = 'https://'+window.location.host+'/admin/lead_report?user_id='+user_id+'&fromDate='+fromDate+'&toDate='+toDate+'&lead_source_id='+lead_source_id+'&project_id='+data[i].project_id;
                    tbody +='<tr><td style="display:none;">'+data[i].project_id+'</td><td style="display:none;">'+data[i].user_id+'</td><td>'+data[i].project+'</td><td class="target"><a href="'+url_of_project+'"  target="_blank" style="cursor: pointer;">'+data[i].count+'</a></td><td style="display:none;">'+lead_source_id+'</td><td style="display:none;">'+fromDate+'</td><td style="display:none;">'+toDate+'</td></tr>'
                }
                $("#product_detail").append(tbody)
                $("#dispalyprd").removeClass('hidden');
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    console.log(textStatus, errorThrown);
                }
             })
             }

         
        </script>

        
    <div class=" col-md-4">
            <table class="display-lead hidden" id="dispalycmr" cellspacing="0" width="100%">
           
        <thead id="customer-thead">
          <tr><th colspan="2" id="csmrusername"></th></tr>
                    <tr>
                    <th>Lead Source</th>
                        <th>Count</th>
                      
          </tr>
        </thead>
        <tbody id="customer_detail"> </tbody>
      </table>
    </div>
   

     <div class=" col-md-4">
            <table class="display-lead hidden" id="dispalyprd" cellspacing="0" width="100%">
           
        <thead id="product-thead">
          <tr><th colspan="2" id="prdusername"></th></tr>
                    <tr>
                       <th>Project Name</th>
                        <th>Count</th>
                      
          </tr>
        </thead>
        <tbody id="product_detail"> </tbody>
      </table>
     </div>
     </div> 

    <!-- <div class="col-md-4">
            <table class="display" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th>Sl.No</th>
                        <th>Project</th>
                        <th>No. of callbacks Assigned</th>
                    </tr>
                </thead>
                <tbody>
                    <?php if(count($projects)>0){
                        $i = 1;
                        $total = 0;
                        foreach ($projects as $key => $value) { 
                            $name = $this->common_model->get_project_name($key); 
                            $total += $value; ?>
                            <tr>
                                <td><?php echo $i; ?></td>
                                <td><?php echo $name; ?></td>
                                <td><a href="<?php echo base_url().'view_callbacks?report='.urlencode($reportType).'&project='.urlencode($key).'&dept='.urlencode($dept).'&city='.urlencode($city).'&fromDate='.urlencode($fromDate).'&toDate='.urlencode($toDate); ?>"><?php echo $value; ?></a></td>
                            </tr>
                        <?php $i++; } ?>
                        <tr>
                            <td colspan="2">Total</td>
                            <td><a href="<?php echo base_url().'view_callbacks?report='.urlencode($reportType).'&dept='.urlencode($dept).'&city='.urlencode($city).'&fromDate='.urlencode($fromDate).'&toDate='.urlencode($toDate); ?>"><?php echo $total; ?></a></td>
                        </tr>
                    <?php } else { ?>
                        <tr>
                            <td colspan="3"> No entries </td>
                        </tr>
                    <?php } ?>
                </tbody>
            </table>
    </div>

    <div class="col-md-4">
            <table class="display" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th>Sl.No</th>
                        <th>Lead Source</th>
                        <th>No. of callbacks Assigned</th>
                    </tr>
                </thead>
                <tbody>
                    <?php if(count($lead_sources)>0){
                        $i = 1;
                        $total = 0;
                        foreach ($lead_sources as $key => $value) { 
                            $name = $this->common_model->get_leadsource_name($key);
                            $total += $value; ?>
                            <tr>
                                <td><?php echo $i; ?></td>
                                <td><?php echo $name; ?></td>
                                <td><a href="<?php echo base_url().'view_callbacks?report='.urlencode($reportType).'&lead_source='.urlencode($key).'&dept='.urlencode($dept).'&city='.urlencode($city).'&fromDate='.urlencode($fromDate).'&toDate='.urlencode($toDate); ?>"><?php echo $value; ?></a></td>
                            </tr>
                        <?php $i++; } ?>
                        <tr>
                            <td colspan="2">Total</td>
                            <td><a href="<?php echo base_url().'view_callbacks?report='.urlencode($reportType).'&dept='.urlencode($dept).'&city='.urlencode($city).'&fromDate='.urlencode($fromDate).'&toDate='.urlencode($toDate); ?>"><?php echo $total; ?></a></td>
                        </tr>
                    <?php } else { ?>
                        <tr>
                            <td colspan="3"> No entries </td>
                        </tr>
                    <?php } ?>
                </tbody>
            </table>
    </div> -->
    
    </div>

    
</div>
                    </div>
                  
              </div>
            </div>
            
          </div>
        </div>
      </div>
      <script type="text/javascript">
  $("#email_this_report").click(function(e){
    e.preventDefault();
    $(".alert-success").hide();
    $(".alert-danger").hide();
    $.get("<?php echo base_url().'admin/email_report?fromDate='.urlencode($fromDate).'&toDate='.urlencode($toDate).'&city='.urlencode($city).'&dept='.urlencode($dept).'&reportType='.urlencode($reportType); ?>", function(response){
      if(response == "Success")
        $(".alert-success").show();
      else
        $(".alert-danger").show();
    });
  });
</script>