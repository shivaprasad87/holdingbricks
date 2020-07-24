<div class="content">
          <div class="container-fluid">
 
          <div class="row">
            <div class="col-lg-12 col-md-12">
              <div class="card">
                <div class="card-header-primary">
                <h4> <?=$heading;?> </h4>
                </div>
                <div class="card-body">
                    <a class="btn btn-success btn-block" href="<?php echo base_url()?>uploads/upload_Format.xlsx">Download sample excel</a>
    <br>
    <form  action="<?php echo base_url()?>admin/bulk_upload_callback" method="POST" enctype="multipart/form-data">
        <div class="row">
            <div class="col-sm-6">
                <input type="file" class="form-control" id="upload_xl" name="upload_xl" placeholder="File" required="required">
            </div>
            <div class="col-sm-3 form-group">
                <button type="reset" class="btn btn-success btn-block" value="Reset">Reset</button>
            </div>
            <div class="col-sm-3 form-group">
                <button type="submit" id="excel_upload"class="btn btn-success btn-block" name="submit">Read Data</button>
            </div>
        </div>
    </form>
                    </div>
                  
              </div>
            </div>
            
          </div>
        </div>
      </div>