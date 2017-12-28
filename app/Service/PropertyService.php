<?php 

namespace App\Service;

use Illuminate\Http\Request;
use Illuminate\Routing\Route;
use App\Model\Property;
use Auth;



class PropertyService
{


	public function index()
    {
        $properties =  Property::all();
	    return $properties;
    }


    public function store($request)
    {
    	return Property::create([
    		'name' => $request->name,
    		'address' => $request->address,
    		'land_register_number' => $request->land_register_number,
    		'national_property_number' => $request->national_property_number,
    		'bbr_number' => $request->bbr_number,
    		'pbs_number' => $request->pbs_number,
    		'property_construction_year' => $request->property_construction_year,
    		'property_square_meters' => $request->property_square_meters,
    		'apartment_shares_total' => $request->apartment_shares_total,
    		'rental_permitted_flag' => $request->rental_permitted_flag,
    		'rental_approval_required_flag' => $request->rental_approval_required_flag,
    		'property_open_date' => date('Y-m-d'),
    		'created_by' => Auth::user()->id
    	]);

    	

    }














}