<?php

namespace App\Http\Controllers;

use App\Service\PropertyService;
use Illuminate\Http\Request;



class AdminController extends Controller
{

    private $propertyService;

    public function __construct(PropertyService $propertyService )
    {
        $this->propertyService = $propertyService;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */




    public function index()
    {
        return view('admin.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }




    public function properties()
    {
        $data['props'] =  $this->propertyService->index();
        return view('admin.properties',$data);



        // return $propertyService->index();
    }

    public function storeproperties(Request $request)
    {
        $property=  $this->propertyService->store($request);
         if($property){
            return redirect()->route('admin.properties')->with('success',"Property Saved Successfully");
         }

         return  back()->with('error','Some Error Occured');
    }

    public function createproperty()
    {
        return  view('admin.createproperties');
    }
}
