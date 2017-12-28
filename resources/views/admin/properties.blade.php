@extends('layouts.admin')


@section('content')
<div class="wrapper">
<div class="site-content">
				<!-- Content -->
				<div class="content-area p-y-1">
					<div class="container-fluid">
						<div class="box bg-white panel-default">
						      <div class="panel-heading">
						        <h5 class="pull-left">Properties Lists</h5>
						        <span class="btn btn-primary w-min-sm waves-effect waves-light pull-right add-button" data-toggle="modal" data-target="#exampleModal">Add New Property</span>
						      </div>
							@if ($message = Session::get('success'))
						        <div class="alert alert-success">
						            <p>{{ $message }}</p>
						        </div>
				    		@endif
						      <div class="panel-body">
                               <table class="table table-striped table-bordered dataTable" id="table-1">
								<thead>
									<tr>
										<th>Property ID</th>
										<th>Name</th>
										<th>Address</th>
										<th>Land Register No</th>
										<th>National Property No</th>
										<th>BBR No</th>
										<th>PBS No</th>
										<th>Property Construction Year</th>
										<th>Property Square Metres</th>
										<th>Apartment Shares Total</th>
										<th>Rental Permitted</th>
										<th>Rental Approval Required</th>
										<th>Belongs</th>
										<th>Member Role</th>
										<th>Active</th>
										<th>Action</th>


									</tr>
								</thead>
								<tbody>
									@foreach($props as $prop)

									<tr>
										<td>{{$prop->property_id}}</td>
										<td>{{$prop->name}}</td>
										<td>{{$prop->address}}</td>
										<td>{{$prop->land_register_number}}</td>
										<td>{{$prop->national_property_number}}</td>
										<td>{{$prop->bbr_number}}</td>
										<td>{{$prop->pbs_number}}</td>
										<td>{{$prop->property_construction_year}}</td>
										<td>{{$prop->property_square_meters}}</td>
										<td>{{$prop->apartment_shares_total}}</td>
										<td>{{$prop->name}}</td>
										<td>{{$prop->name}}</td>
										<td>{{$prop->name}}</td>
										<td>{{$prop->name}}</td>
										<td>{{$prop->name}}</td>
										
										<td>
											<span class="btn btn-primary waves-effect waves-light" ><span class="ti-pencil-alt"></span></span>
											<span class="btn btn-primary waves-effect waves-light"><span class="ti-trash"></span></span>
										</td>
									</tr>
									@endforeach
									
								</tbody>
									
							</table>
						      </div>
					    </div>
						
					
					
					</div>
				</div>
	</div>
@endsection