<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Excel;

class YarnController extends Controller
{
    public function index(){
        $data['yarns'] = DB::table('yarn_details')->select('yarn_code')->distinct()->get();
        $data['yarnlist'] = DB::table('yarns')->get();
        return view('production.yarns', $data);
    }

    public function addYarn(Request $request){
        
    	DB::table('yarns')->insert([
                'yarn_code' => $request->yarn_code,
                'yarn' => $request->yarn_name,
    		]);
    }

    public function addYarnDetails(Request $request){
    	DB::table('yarn_details')->insert([
    			'yarn_code' => $request->yarn_code,
    			'ply_b_d' => $request->ply,
    			'yarn_content' => $request->content,
    			'remarks' => $request->remarks,
    		]);
    }

    public function getYarnDetails($id){
    	$data['yarn'] = DB::table('yarns')->where('id', $id)->get();
    	return $data;
    }

    public function getYarnPlyDetails($page, $id){
    	$data['yarnlist'] = DB::table('yarn_details')->where('yarn_code', $id)->get();
    	
    	return view('ajax_views.yarn_ply', $data);
    }

    public function downloadYarnDetails(){
    	$file_name = "report_".time();
        $data['yarns'] = DB::table('yarn_details')->join('yarns', 'yarns.id', '=', 'yarn_details.yarn_code')->get();
        
        
        Excel::create($file_name, function($excel) use ( $data) {
                // Set the spreadsheet title, creator, and description
                $excel->setTitle('Overview');
                $excel->setCreator('Laravel')->setCompany('RD Int');

                // Build the spreadsheet, passing in the payments array
                
                $excel->sheet('Summery', function($sheet) use ($data) {
                    $sheet->loadView('excel.yarn_details', $data);
                }); 

            })->download('xls');
    }
}
