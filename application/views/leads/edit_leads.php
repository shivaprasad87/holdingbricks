<style>
	textarea{
	 border: 1px solid #c5c5c5 !Important;
	   background: #0a0a0a1c !Important;
	}
  </style>
   <div class="content">
		   <div class="container-fluid">
			 <div class="row">
			   <div class="col-md-12">
			   <div class="card ">
				   <div class="card-header-primary">
					 <h4 class="card-title"><?php echo $title; ?></h4>
				   </div>
				   <div class="card-body mt-3">
                      <?php $attributes = array('class' => 'common_valid '); echo form_open("leads/update_lead",$attributes); ?>
                      <input type="hidden" class="form-control" value="<?php echo $lead->id ?>" name="lead[id]">
                      <input type="hidden" class="form-control" value="<?php echo $lead->lead_id ?>" name="lead[lead_id]">
                
                      <div class="row">
                            <label class="col-md-2 col-form-label">Dept <span class="text-danger">*</span></label>
                            <div class="col-md-4">
                              <div class="form-group has-default bmd-form-group">
                                    <select class="form-control  validate[required] " disabled>
                                  <option></option>
                                  <?php foreach($dept as $row){ if($row->dept_id == $lead->dept_id) {?>
                                  <option value="<?php echo $row->dept_id; ?>" selected> <?php echo $row->name ?></option>
                                  <?php }else{?>
                                  <option value="<?php echo $row->dept_id; ?>" > <?php echo $row->name ?></option>
                                  
                                  <?php }}?>
                              </select>
                               </div>
					    	           </div>
   
                          <label class="col-md-2 col-form-label">Name <span class="text-danger">*</span></label>
                          <div class="col-md-4">
                            <div class="form-group has-default bmd-form-group">
                            <input type="text" class="form-control" value="<?php echo $lead->name ?>" disabled>
                            </div>
                          </div>
                       </div>
                       
                       <div class="row">
                              <label class="col-md-2 col-form-label">Phone 1  <span class="text-danger">*</span></label>
                              <div class="col-md-4">
                                <div class="form-group has-default bmd-form-group">
                                <input type="text" class="form-control" value="<?php echo $lead->phone_1 ?>" disabled>
                                </div>
                              </div>
                                <label class="col-md-2 col-form-label">Phone 2</label>
                              <div class="col-md-4">
                                <div class="form-group has-default bmd-form-group">
                                <input type="text" class="form-control" value="<?php echo $lead->phone_2 ?>" maxlength="16" minlength="10">
                                </div>
                              </div>
                     </div>
                     
                     <div class="row">
                          <label class="col-md-2 col-form-label">Call back type <span class="text-danger">*</span> </label>
                          <div class="col-md-4">
                            <div class="form-group has-default bmd-form-group">
                            <select class="form-control" disabled>
                              <option></option>
                              <?php if($lead->call_back_type == "Domestic" ){?>
                              <option value="Domestic" selected>Domestic</option>
                              <?php }else{ ?>
                              <option value="International" selected>International</option>
                              <?php }?>
                            </select>
                            </div>
                          </div>
                             <label class="col-md-2 col-form-label">E-mail 1<span class="text-danger">*</span></label>
                          <div class="col-md-4">
                            <div class="form-group has-default bmd-form-group">
                            <input type="email" class="form-control" value="<?php echo $lead->email_1 ?>" disabled>
                            </div>
                          </div>
                   </div>
                   
                   <div class="row">
                      <label class="col-md-2 col-form-label">E-mail 2 </label>
                      <div class="col-md-4">
                        <div class="form-group has-default bmd-form-group">
                        <input type="email" class="form-control" value="<?php echo $lead->email_2 ?>"  >
                        </div>
                      </div>
                           <label class="col-md-2 col-form-label">Project <span class="text-danger">*</span></label>
                        <div class="col-md-4">
                          <div class="form-group has-default bmd-form-group">
                          <select class="form-control  validate[required] " disabled>
                                <option></option>
                                <?php foreach($project as $row){ if( $lead->project_id == $row->project_id) {?>
                                <option value="<?php echo $row->project_id; ?>" selected> <?php echo $row->project_name ?></option>
                                <?php }else{ ?>
                                <option value="<?php echo $row->project_id; ?>"  > <?php echo $row->project_name ?></option>
                                <?php }} ?>
                            </select>
                          </div>
                        </div>
                  </div>
                  
                  <div class="row">
                      <label class="col-md-2 col-form-label">Lead id </label>
                      <div class="col-md-4">
                        <div class="form-group has-default bmd-form-group">
                        <input type="text" class="form-control" value="<?php echo $lead->lead_id ?>" disabled>
                        </div>
                      </div>
                       <label class="col-md-2 col-form-label">Assign to <span class="text-danger">*</span></label>
                    <div class="col-md-4">
                      <div class="form-group has-default bmd-form-group">
                      <select class="form-control  validate[required] " name="lead[assign_to]" <?php if($this->session->userdata('role') == 'sales'){echo "disabled";} ?>>
                            <option></option>
                            <?php foreach($users as $row){ if($lead->assign_to == $row->user_id ) {?>
                            <option value="<?php echo $row->user_id; ?>" selected> <?php echo $row->f_name."&nbsp".$row->l_name ?></option>
                            <?php }else{ ?>
                            <option value="<?php echo $row->user_id; ?>"> <?php echo $row->f_name."&nbsp".$row->l_name ?></option>
                            <?php }} ?>
                        </select>
                      </div>
                    </div>
             </div>
             
             <div class="row">
                    <label class="col-md-2 col-form-label">Status <span class="text-danger">*</span></label>
                    <div class="col-md-4">
                      <div class="form-group has-default bmd-form-group">
                      <select class="form-control  status validate[required] "  name="lead[status_id]">
                              <?php foreach($status as $row){ if($lead->status_id == $row->status_id){?>
                              <option value="<?php echo $row->status_id ?>" selected><?php echo $row->status_name ?></option>
                            <?php }else{ ?>
                            <option value="<?php echo $row->status_id ?>"><?php echo $row->status_name ?></option>
                            <?php }} ?>
                              
                      </select>
                      </div>
                    </div>
               </div>
            <!-- close status start -->     
     <div class="hide closestatus">
                      <div class="row">
                                        <label class="col-md-2 col-form-label">Advisor one  </label>
                                        <div class="col-md-4">
                                          <div class="form-group has-default bmd-form-group">
                                           <input type="text" class="form-control    " name="close[advisor_1]" value="<?php if(isset($close_leads->advisor_1)){echo $close_leads->advisor_1;}?>">
                                              </div>
                                        </div>
                                          <label class="col-md-2 col-form-label">Advisor two  </label>
                                        <div class="col-md-4">
                                          <div class="form-group has-default bmd-form-group">
                                          <input type="text" class="form-control    " name="close[advisor_2]" value="<?php if(isset($close_leads->advisor_2)){echo $close_leads->advisor_2;}?>" >
                                          
                                          </div>
                                        </div>
                              </div>
                   <div class="row">
                                  <label class="col-md-2 col-form-label">Booking name   </label>
                                  <div class="col-md-4">
                                    <div class="form-group has-default bmd-form-group">
                                    <input type="text" class="form-control   "  name="close[booking_name]" value="<?php if(isset($close_leads->booking_name)){echo $close_leads->booking_name;}?>">
                                    </div>
                                  </div>
                                            
                                    <label class="col-md-2 col-form-label">Booking month   </label>
                                    <div class="col-md-4">
                                      <div class="form-group has-default bmd-form-group">
                                      <?php $array=null;for($i=1; $i<=12;$i++){ $array[$i]=$i;;} ?>
                                    <select class="form-control   "  name="close[booking_month]">
                                            <option value>--select--</option>
                                            <?php $i=1; foreach($array  as $row){ if($close_leads->booking_month == $row){?>
                                              <option  value="<?php echo $row ?>" selected ><?php echo $row ?></option>
                                            <?php }else{ ?>
                                              <option  value="<?php echo $row ?>"><?php echo $row ?></option>
                                                <?php  $i++;}}  ?>
                          
                                    </select>
                                      </div>
                                    </div>
                            </div>
                            <div class="row">
                                        <label class="col-md-2 col-form-label">Date of closure </label>
                                        <div class="col-md-4">
                                          <div class="form-group has-default bmd-form-group">
                                          <input type="text" class="form-control  datetimepicker"  data-dtp="dtp_3t8oR" name="close[date_of_clouser]"  value="<?php if(isset($close_leads->date_of_clouser)){echo $close_leads->date_of_clouser;}?>">
                                          </div>
                                        </div>
                                        <label class="col-md-2 col-form-label">Unit number  </label>
                                        <div class="col-md-4">
                                          <div class="form-group has-default bmd-form-group">
                                          <input type="text" class="form-control   " name="close[unit_number]"  value="<?php if(isset($close_leads->unit_number)){echo $close_leads->unit_number;}?>">
                                        
                                          </div>
                                        </div>
                           </div>
                           <div class="row">
                                    <label class="col-md-2 col-form-label">Project   </label>
                                    <div class="col-md-4">
                                      <div class="form-group has-default bmd-form-group">
                                      <select class="form-control    " name="close[project]">
                                            <option></option>
                                            <?php foreach($project as $row){ if($close_leads->project == $row->project_id) {?>
                                            <option value="<?php echo $row->project_id; ?>" selected > <?php echo $row->project_name ?></option>
                                            <?php }else{  ?>
                                            <option value="<?php echo $row->project_id; ?>"  > <?php echo $row->project_name ?></option>
                                                              <?php }}?>
                                        </select>
                                      </div>
                                    </div>
      
                                <label class="col-md-2 col-form-label">Sqft sold  </label>
                                <div class="col-md-4">
                                  <div class="form-group has-default bmd-form-group">
                                  <input type="text" class="form-control  " name="close[sqtf_sold]" value="<?php if(isset($close_leads->sqtf_sold)){echo $close_leads->sqtf_sold;}?>">
                                
                                  </div>
                                </div>
					                </div>
                        <div class="row">
                                        <label class="col-md-2 col-form-label">PLC charges </label>
                                        <div class="col-md-4">
                                          <div class="form-group has-default bmd-form-group">
                                          <input type="" class="form-control validate[custom[onlyNumberSp]] " name="close[plc_charges]" value="<?php if(isset($close_leads->plc_charges)){echo $close_leads->plc_charges;}?>">
                                          </div>
                                        </div>
                              
                                        <label class="col-md-2 col-form-label">Total cost </label>
                                        <div class="col-md-4">
                                          <div class="form-group has-default bmd-form-group">
                                          <input type="" class="form-control validate[custom[onlyNumberSp]] " name="close[total_cost]" value="<?php if(isset($close_leads->total_cost)){echo $close_leads->total_cost;}else{ echo '0' ;}?>">
                                          </div>
                                        </div>
                        </div>
                        <div class="row">
                                        <label class="col-md-2 col-form-label">Basic cost </label>
                                        <div class="col-md-4">
                                          <div class="form-group has-default bmd-form-group">
                                          <input type="" class="form-control   Basic_cost grevenu" name="close[basic_cost]" value="<?php if(isset($close_leads->basic_cost)){echo $close_leads->basic_cost;}else{ echo '0' ;}?>">
                                          </div>
                                        </div>
                              
                                        <label class="col-md-2 col-form-label">Commission %  </label>
                                        <div class="col-md-4">
                                          <div class="form-group has-default bmd-form-group">
                                          <input type="text" class="form-control   Commission grevenu"  name="close[c_percentage]" value="<?php if(isset($close_leads->c_percentage)){echo $close_leads->c_percentage;}else{ echo '0' ;}?>">
                                        
                                          </div>
                                        </div>
                        </div>
                        <div class="row">
                                        
                                        <label class="col-md-2 col-form-label">Sub broker amount  </label>
                                        <div class="col-md-4">
                                          <div class="form-group has-default bmd-form-group">
                                          <input type="text" class="form-control   netrevenu Total_cost"  name="close[sub_broker_amount]" value="<?php if(isset($close_leads->sub_broker_amount)){echo $close_leads->sub_broker_amount;}?>">
                                        
                                          </div>
                                        </div>

                                        <label class="col-md-2 col-form-label">Cash back  </label>
                                        <div class="col-md-4">
                                          <div class="form-group has-default bmd-form-group">
                                          <input type="text" class="form-control   netrevenu Cash_back"  name="close[cash_back]" value="<?php if(isset($close_leads->cash_back)){echo $close_leads->cash_back;}else{ echo '0' ;}?>">
                                        
                                          </div>
                                        </div>
                        </div>
                        <div class="row">
                                        <label class="col-md-2 col-form-label">Gross revenue </label>
                                        <div class="col-md-4">
                                          <div class="form-group has-default bmd-form-group">
                                          <input type="" class="form-control   gross_revenue" name="close[gross_revenue]" value="<?php if(isset($close_leads->gross_revenue)){echo $close_leads->gross_revenue;}?>" disabled>
                                          </div>
                                        </div>
                              
                                        <label class="col-md-2 col-form-label">Net revenue   </label>
                                            <div class="col-md-4">
                                              <div class="form-group has-default bmd-form-group">
                                              <input type="text" class="form-control   net_revenu"  name="close[net_revenu]" value="<?php if(isset($close_leads->net_revenu)){echo $close_leads->net_revenu;}?>" disabled>
                                              </div>
                                            </div>
                        </div>
                           <div class="row">
                           <label class="col-md-2 col-form-label">Project type  </label>
                                      <div class="col-md-4">
                                        <div class="form-group has-default bmd-form-group">
                                        <input type="text" class="form-control "  name="close[project_type]" value="<?php if(isset($close_leads->project_type)){echo $close_leads->project_type;}?>">
                                      
                                        </div>
                                      </div>
                                            <label class="col-md-2 col-form-label">Share of advisor 1  </label>
                                            <div class="col-md-4">
                                              <div class="form-group has-default bmd-form-group">
                                              <input type="text" class="form-control   "  name="close[share_of_advisor_1]" value="<?php if(isset($close_leads->share_of_advisor_1)){echo $close_leads->share_of_advisor_1;}?>">
                                              </div>
                                            </div>
				                	   </div>
   
                          <div class="row">
                                                  <label class="col-md-2 col-form-label">Share of advisor 2  </label>
                                                  <div class="col-md-4">
                                                    <div class="form-group has-default bmd-form-group">
                                                    <input type="text" class="form-control   " name="close[share_of_advisor_2]" value="<?php if(isset($close_leads->share_of_advisor_2)){echo $close_leads->share_of_advisor_2;}?>">
                                                    </div>
                                                  </div>
                                              <label class="col-md-2 col-form-label">Estimated month of invoice  </label>
                                            <div class="col-md-4">
                                              <div class="form-group has-default bmd-form-group">
                                              <select class="form-control   "  name="close[estimated_month_of_invoice]">
                                                    <option value>--select--</option>
                                                    <?php $i=1; foreach($array  as $row){ if($close_leads->estimated_month_of_invoice == $row){?>
                                                      <option  value="<?php echo $row ?>" selected ><?php echo $row ?></option>
                                                    <?php }else{ ?>
                                                      <option  value="<?php echo $row ?>"><?php echo $row ?></option>
                                                        <?php  $i++;}} ?>
                                              </select>
                                              </div>
                                            </div>
                          </div>
   
					                   <div class="row">
                                          <label class="col-md-2 col-form-label">Agreement status   </label>
                                          <div class="col-md-4">
                                            <div class="form-group has-default bmd-form-group">
                                            <input type="text" class="form-control   " name="close[agreement_status]" value="<?php if(isset($close_leads->agreement_status)){echo $close_leads->agreement_status;}?>">
                                            </div>
                                          </div>
                                        
					                </div>
    </div>
 <!-- close status end --> 
  <!-- site_visit_fix status end --> 
     <div class="site_visit_fix hide">
                              <div class="row">
                                                        <label class="col-md-2 col-form-label">Client email id   </label>
                                                        <div class="col-md-4">
                                                          <div class="form-group has-default bmd-form-group">
                                                          <input type="text" class="form-control   "  name="svd[clientEmail]">
                                                          </div>
                                                        </div>
                                                      <label class="col-md-2 col-form-label">Site visit date  </label>
                                                    <div class="col-md-4">
                                                      <div class="form-group has-default bmd-form-group">
                                                      <input type="text" class="form-control   datetimepicker"    name="svd[sitevisit_date]" data-dtp="dtp_3t8oR"  >
                                                        </div>
                                                    </div>
                                </div>
                                <div class="row">
                                          <label class="col-md-2 col-form-label">Site assign by <span class="text-danger">*</span></label>
                                          <div class="col-md-4">
                                            <div class="form-group has-default bmd-form-group">
                                            <input type="text" class="form-control validate[required] "  name="svd[site_assing_by]">
                                            </div>
                                          </div>
                                            <label class="col-md-2 col-form-label">Relation ship manager<span class="text-danger">*</span></label>
                                          <div class="col-md-4">
                                            <div class="form-group has-default bmd-form-group">
                                            <input type="text" class="form-control validate[required] " name="svd[relation_manager]" >
                                              </div>
                                          </div>
                                </div>
                                <div class="row">
                                                  <label class="col-md-2 col-form-label">Subject <span class="text-danger">*</span></label>
                                                  <div class="col-md-4">
                                                    <div class="form-group has-default bmd-form-group">
                                                    <input type="text" class="form-control validate[required] "  name="svd[subject]" value="Thank you for the site visit">
                                                    </div>
                                                  </div>
                                                   
                                </div>
                                <div class="row">
                                <label class="col-md-2 col-form-label">Mail box <span class="text-danger">*</span></label>
                                                  <div class="col-md-4">
                                                    <div class="form-group has-default bmd-form-group">
                                                   
                                                    <textarea  id="" cols="100" rows="10" name="svd[message]">
Greetings from Holding Bricks!

With reference to your site visit assisted by Mr. Faizan Darga from Holding Bricks, we thank you for giving us an
opportunity to serve you by helping you in searching your dream home at HB. It is our job to help you with all
the possible property options which will suit your requirements. Mr. Faizan Darga from HB will be at your service
always. He/She will be there to assist you in searching your dream home.

1. Home Search - Assisting and helping you find your dream home that suits your requirements, by giving you
info. on market trends, legalities, site visit assistance etc.

2. Home Loan Assistance - We will take away your pain of running around the banks to get your loan approved,
by providing doorstep service of bankers of your choice at your place.

3. Property Purchase Assistance - Ensuring that home buying becomes a pleasant experience. Our Relationship
Manager will be there throughout the process of documentation.

4. Post Sales Service - This is what differentiates us from others. We will be there for all the possible help and
guidance, till you move into your home.

5. Interior Services - We are tied with the best Interior Designers in the city who offer the best designs, and that
too at a competitive price.

For any escalation/complaints, please write to: faizan@holdingbricks.com
 
 
                                                    </textarea>
                                                    </div>
                                                  </div>
                                </div>
      </div>
       <!-- site_visit_fix status end --> 
                    <div class="row">
                                            <label class="col-md-2 col-form-label">Current callback  </label>
                                          <div class="col-md-4">
                                            <div class="form-group has-default bmd-form-group" >
                                            <textarea class="form-control    " rows="5" name="callBack[callback_details]"></textarea>
                                            </div>
                                          </div>
                                
                                          <?php foreach($callBack as $row){?>
                                            <label class="col-md-2 col-form-label">previous callback  </label>
                                          <div class="col-md-4">
                                            <div class="form-group has-default bmd-form-group" >
                                            <textarea class="form-control    " rows="5" >
                                            <?php echo $row->callback_details ?>
                                            </textarea>
                                            <span style="  font-size: 12px; color: #7f8c8c;"><?php echo $row->date ?></span>
                                            </div>
                                          </div>
                                          <?php  } ?>
                        </div><hr>
                        <div class="row check_box">
                                      <div class="col-md-4 checkbox-radios">
                                      <div class="form-check">
                                      <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" value="Yes" name="lead[reassign]" <?php if($lead->reassign_date != null){echo"checked";} ?>> Re-assign to another date
                                        <span class="form-check-sign">
                                        <span class="check"></span>
                                        </span>
                                      </label>
                                      </div>
                                      </div>
                                      <div class="col-md-4   hidethis date ?>">
                                      <input type="text" id="to_date" class="form-control validate[required] datetimepicker getval"   name="lead[reassign_date]" data-dtp="dtp_3t8oR" value="<?php echo $lead->reassign_date ?>">
                                         </div>
                                      <div class="col-md-4 hidethis  time" >
                                      <input type="text" class="form-control validate[required] getval " id="timepicker"   name="lead[reassign_time]" data-dtp="dtp_3t8oR" value="<?php echo $lead->reassign_time ?>">
                                      
                                      </div>
                         </div>
                         <hr>
                            <div class="row check_box">
                                            <div class="col-md-4 checkbox-radios">
                                            <div class="form-check">
                                            <label class="form-check-label">
                                              <input class="form-check-input" type="checkbox"   name="lead[site_visit_fixed]" value="Yes" <?php if($lead->site_visit_fixed == "Yes"){ echo "checked";} ?>> Site visit fixed
                                              <span class="form-check-sign">
                                              <span class="check"></span>
                                              </span>
                                            </label>
                                            </div>
                                            </div>
                                            <div class="col-md-4  hidethis project">
                                            <select class="form-control  validate[required] " name="lead[site_visit_fix_project]" >
                                                  <option  ></option>
                                                  <?php foreach($project as $row){ if( $lead->site_visit_fix_project == $row->project_id) {?>
                                                  <option value="<?php echo $row->project_id; ?>" selected> <?php echo $row->project_name ?></option>
                                                  <?php }else{ ?>
                                                  <option value="<?php echo $row->project_id; ?>"  > <?php echo $row->project_name ?></option>
                                                  <?php }} ?>
                                              </select>
                                            </div>
                                            <div class="col-md-4 hidethis"> 
                                            </div>
                            </div>
                            <hr>
                                      <div class="row check_box">
                                                    <div class="col-md-4 checkbox-radios">
                                                    <div class="form-check">
                                                    <label class="form-check-label">
                                                      <input class="form-check-input" type="checkbox"  name="lead[site_visit_done]" value="Yes" <?php if($lead->site_visit_done == "Yes"){ echo "checked";} ?>> Site visit done
                                                      <span class="form-check-sign">
                                                      <span class="check"></span>
                                                      </span>
                                                    </label>
                                                    </div>
                                                    </div>
                                                    <div class="col-md-4 hidethis"> 
                                                    </div>
                                                    <div class="col-md-4 hidethis"> 
                                                    </div>
                                      </div>
                                      <hr>
                                      
                                      <div class="row check_box">
                                              <div class="col-md-4 checkbox-radios">
                                              <div class="form-check">
                                              <label class="form-check-label">
                                                <input class="form-check-input" type="checkbox"   name="lead[site_visit_not_done]" value="Yes" <?php if($lead->site_visit_not_done == "Yes"){ echo "checked";} ?>> Site visit not done
                                                <span class="form-check-sign">
                                                <span class="check"></span>
                                                </span>
                                              </label>
                                              </div>
                                              </div>
                                              <div class="col-md-4 hidethis"> 
                                              </div>
                                              <div class="col-md-4 hidethis"> 
                                              </div>
					                            </div>
                                          <hr>
                                          <div class="row check_box">
                                                        <div class="col-md-4 checkbox-radios">
                                                        <div class="form-check">
                                                        <label class="form-check-label">
                                                          <input class="form-check-input" type="checkbox"  name="lead[face_to_face_done]" value="Yes" <?php if($lead->face_to_face_done == "Yes"){ echo "checked";} ?>> Face to face done
                                                          <span class="form-check-sign">
                                                          <span class="check"></span>
                                                          </span>
                                                        </label>
                                                        </div>
                                                        </div>
                                                        <div class="col-md-4 hidethis"> 
                                                        </div>
                                                        <div class="col-md-4 hidethis"> 
                                                        </div>
                                                </div>
                                        <hr>
                                        
                                        <div class="row check_box">
                                                          <div class="col-md-4 checkbox-radios">
                                                          <div class="form-check">
                                                          <label class="form-check-label">
                                                            <input class="form-check-input" type="checkbox"   name="lead[important]" value="Yes" <?php if($lead->important == "Yes"){ echo "checked";} ?>>Important
                                                            <span class="form-check-sign">
                                                            <span class="check"></span>
                                                            </span>
                                                          </label>
                                                          </div>
                                                          </div>
                                                          <div class="col-md-4 hidethis"> 
                                                          </div>
                                                          <div class="col-md-4 hidethis"> 
                                                          </div>
					                                  </div>
					   <hr>
					                       <div class="row check_box">
                                                  <div class="col-md-4 checkbox-radios">
                                                  <div class="form-check">
                                                  <label class="form-check-label">
                                                    <input class="form-check-input" type="checkbox"  name="lead[client_registration_email]"  value="Yes">Client registration email
                                                    <span class="form-check-sign">
                                                    <span class="check"></span>
                                                    </span>
                                                  </label>
                                                  </div>
                                                  </div> 
                                                  <div class="col-md-4 hidethis"> 
                                                    <div class="form-group has-default bmd-form-group">
                                                  <input type="email" class="form-control validate[required] getval"  placeholder="Email id" name="cre[email]">
                                                  </div>
                                                  </div>
                                                  <div class="col-md-4 hidethis"> 
                                                  <input type="text" class="form-control validate[required]  "  placeholder="Subject" name="cre[subject]" value="Client registration">
                                                  </div>
                                                  <div class="col-md-4 "></div>
                                                  <div class="col-md-8 col-md-offset-2 hidethis">
                                                  <label>Email body <span class="text-danger">*</span></label>
                                                  <textarea  class="form-control validate[required] "  rows="10"placeholder="Email body" name="cre[body]"> 
 Dear sir/madam,
 
     Greetings From Holding Bricks,  

     Kindly register the below client for  project on behalf of Holding Bricks.


     Client Name : 
     Contact No:
     E-mail ID:</textarea></div>
                                   </div>
                     
                                  <a href="<?php   if($this->session->userdata('role') == 'Admin'){ echo site_url("leads");}else{echo site_url("my_leads");}?>"  class="btn btn-warning pull-right">Cancel</a>
                                  <button type="submit" class="btn btn-primary pull-right mr-3">Submit</button>
                                      <div class="clearfix"></div>
                                       
          <!-- card-body end --> 
        </div>
        <?php echo form_close();?>
    </div>
    </div>
    </div>
    </div>
    </div>
 
         
<script>
	  
    
    $(".grevenu").on('blur',function(){
      
     
                    var Basic_cost=$(".Basic_cost").val();
                    if(Basic_cost == NaN || Basic_cost == "")
                    {
                      Basic_cost = 0;
                    }

                    var Commission=$(".Commission").val();
                    if(Commission == NaN || Commission == "")
                    {
                      Commission = 0;
                    }


                   
                    var bandc=parseInt(Basic_cost) / 100 * Commission;
                    console.log(bandc);
                      $(".gross_revenue").val(bandc);
                      var grevnu = parseInt(Basic_cost) + bandc;
        
                    var netrevenu = 0;
                    
                    $(".netrevenu").each(function(){
                      var Total_cost=$(".Total_cost").val();
                      if(Total_cost == NaN || Total_cost == "")
                      {
                        Total_cost = 0;
                      }

                      var Cash_back=$(".Cash_back").val();
                      if(Cash_back == NaN || Cash_back == "")
                      {
                        Cash_back = 0;
                      }

                    netrevenu =  parseFloat(Total_cost) + parseFloat(Cash_back);
                    
                  })
                  vartemp = $(".gross_revenue").val() - netrevenu;
                  if(vartemp < 0 ){
                   //  alert("Total cost and Cash back is greater than Gross revenue !");
                    $(".net_revenu").val("") ; 
                  }else{
                  $(".net_revenu").val($(".gross_revenue").val() - netrevenu) ; 
                  }  
    })

    $(".netrevenu").on('blur',function(){
      
      var netrevenu = 0;
      
                $(".netrevenu").each(function(){
                  var Total_cost=$(".Total_cost").val();
                  if(Total_cost == NaN || Total_cost == "")
                  {
                    Total_cost = 0;
                  }

                  var Cash_back=$(".Cash_back").val();
                  if(Cash_back == NaN || Cash_back == "")
                  {
                    Cash_back = 0;
                  }

                netrevenu =  parseFloat(Total_cost) + parseFloat(Cash_back);
                 
               })
               vartemp = $(".gross_revenue").val() - netrevenu;
               if(vartemp < 0 ){
                // alert("Total cost and Cash back is greater than Gross revenue !");
                 $(".net_revenu").val("") ; 
               }else{
              $(".net_revenu").val($(".gross_revenue").val() - netrevenu) ; 
               } 
    })

    


    $("#username").on('blur',function(e) {
   
   $(".error").remove();
   var username = $("#username").val();
    $.ajax({
       type: "POST",
       url: url+"/users/check_unique",
       data: {'username':username}, // serializes the form's elements.
       success: function(data)
       {
       if(data === "false")
       {
        $("#username").val("");
        $( "<p class='error text-danger'>Test</p>" ).insertAfter( "#username" );
       }else{
        $(".error").remove();
       }
         
       }
     });
   
    });
    
   $('.checkbox-radios').parent().find('.hidethis').addClass('hide');
    
    $('input[type="checkbox"]').click(function(){
          if($(this).prop("checked") == true){  
          $(this).parent().parent().parent().parent().find('.hidethis').removeClass('hide');
           $(this).parent().parent().parent().parent().find('.getval').val('');
          }
          else if($(this).prop("checked") == false){
          $(this).parent().parent().parent().parent().find('.hidethis').addClass('hide');
           $(this).parent().parent().parent().parent().find('.getval').val('');
          }
        });
    
        $(".status").change(function(e) {
    
    var arraya =  <?php echo json_encode($status)  ?> ;
   
    var resultObject = search($(this).val(), arraya);    
   
    if(resultObject.status_name == "Close" || resultObject.status_name == "close")
    {
        
            $(".check_box").addClass('hide');
            $("hr").addClass('hide');
            $(".closestatus").removeClass("hide");
        }else{
              $(".closestatus").addClass("hide");
               
        }

        if(resultObject.status_name == "Dead" || resultObject.status_name == "dead")
    {
        
            $(".check_box").addClass('hide');
            $("hr").addClass('hide');
           
        } 
   
    if(resultObject.status_name == "SVD-folloup" || resultObject.status_name == "svd-folloup")
    {
     
        $(".site_visit_fix").removeClass("hide");
        }else{
        $(".site_visit_fix").addClass("hide");
        }
       
            
        if(resultObject.status_name != "Dead" && resultObject.status_name != "Close")
          {
            $(".check_box").removeClass('hide');
            $("hr").removeClass('hide');
          }
    })
    
    $('document').ready(function(){
    var arraya =  <?php echo json_encode($status)  ?> ;
   var id = "<?php echo $lead->status_id  ?>";
    var resultObject = search(id, arraya);    
    
    if(resultObject.status_name == "Close" || resultObject.status_name == "close")
    {
       
                  $(".check_box").addClass('hide');
                  $("hr").addClass('hide');
              $(".closestatus").removeClass("hide");
              }else{
                 
              $(".closestatus").addClass("hide");
              }
        if(resultObject.status_name == "Dead" || resultObject.status_name == "dead")
            {
            
              $(".check_box").addClass('hide');
                    $("hr").addClass('hide');
                
                } 
    if(resultObject.status_name == "SVD-folloup" || resultObject.status_name == "svd-folloup")
    {
     
        $(".site_visit_fix").removeClass("hide");
        }else{
        $(".site_visit_fix").addClass("hide");
        } 
   })
    
    function search(nameKey, myArray){
      for (var i=0; i < myArray.length; i++) {
        if (myArray[i].status_id === nameKey) {
          return myArray[i];
        }
      }
    }
   
    <?php if($lead->reassign_date != null){ ?>
      $(".date").removeClass("hide");
       
    <?php } if($lead->reassign_time != null){?>
      $(".time").removeClass("hide");
      <?php } if($lead->site_visit_fixed != null ){?>
        $(".project").removeClass("hide");
        <?php }  ?>

    </script> 