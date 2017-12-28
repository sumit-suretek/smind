@extends('layouts.admin')


@section('content')
<div class="site-content">
				<!-- Content -->
				<div class="content-area p-y-1">
					<div class="container-fluid">
						<div class="box bg-white panel-default">
						      <div class="panel-heading">
						        <h5>Create New Property</h5>
						      </div>
						      <div class="panel-body">
                              <form method="POST" action="{{ route('admin.storeproperties') }}">
                              	 {{ csrf_field() }}
												<div class="form-group col-sm-6">
													<label class="form-control-label">Property Name:</label>
													<input type="text" class="form-control" name="name">
												</div>
												<div class="form-group col-sm-6">
													<label class="form-control-label">Property address:</label>
													<input type="text" class="form-control" name="address">
												</div>
												<div class="form-group col-sm-6">
													<label class="form-control-label">Land Register Number:</label>
													<input type="text" class="form-control" name="land_register_number">
												</div>
												<div class="form-group col-sm-6">
													<label class="form-control-label">National Property Number:</label>
													<input type="text" class="form-control" name="national_property_number">
												</div>
												<div class="form-group col-sm-6">
													<label class="form-control-label">BBR Number:</label>
													<input type="text" class="form-control" name="bbr_number">
												</div>

												<div class="form-group col-sm-6">
													<label class="form-control-label">PBS Number:</label>
													<input type="text" class="form-control" name="pbs_number">
												</div>

												<div class="form-group col-sm-6">
													<label class="form-control-label">Property Construction Year:</label>
													<input type="text" class="form-control" name="property_construction_year">
												</div>


												<div class="form-group col-sm-6">
													<label class="form-control-label">Property Square Meters:</label>
													<input type="text" class="form-control" name="property_square_meters">
												</div>


												<div class="form-group col-sm-6">
													<label class="form-control-label">Apartment Shares Total:</label>
													<input type="text" class="form-control" name="apartment_shares_total">
												</div>

												<div class="clearfix"></div>

												<div class="form-group col-sm-6">
													<label class="form-control-label">Rental permitted :</label>
													<br>
													<label class="custom-control custom-radio">
														<input id="radio1" name="rental_permitted_flag" value="1" type="radio" class="custom-control-input">
														<span class="custom-control-indicator"></span>
														<span class="custom-control-description">YES</span>
													</label>
													<label class="custom-control custom-radio">
														<input id="radio2" name="rental_permitted_flag" value="0" type="radio" class="custom-control-input">
														<span class="custom-control-indicator"></span>
														<span class="custom-control-description">No</span>
													</label>
												</div>

												<div class="form-group col-sm-6">
													<label class="form-control-label">Rental Approved Required:</label>
													<br>
													<label class="custom-control custom-radio">
														<input id="radio3" name="rental_approval_required_flag" value="1" type="radio" class="custom-control-input">
														<span class="custom-control-indicator"></span>
														<span class="custom-control-description" value="1">YES</span>
													</label>
													<label class="custom-control custom-radio">
														<input id="radio4" type="radio" class="custom-control-input" value="0" name="rental_approval_required_flag">
														<span class="custom-control-indicator"></span>
														<span class="custom-control-description">No</span>
													</label>
												</div>
												<div class="form-group col-sm-12">
												<button type="submit" class="btn btn-primary">Submit</button>
												</div>
											</form>
											<div class="clearfix"></div>
						      </div>
					    </div>
						
					
					
					</div>
				</div>
			
@endsection		