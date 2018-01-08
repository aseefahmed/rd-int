<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\DocumentType;
use DB;

class SettingsController extends Controller
{
    public function index()
    {
        $data['doctypes'] = DB::table('document_types')->get();
        $data['sizes'] = DB::table('sizes')->orderBy('sort_order')->get();
        return view('settings.settings', $data);

    }

    public function addDocumentType(Request $request){
        $document_type = new DocumentType();
        $document_type->document_type = $request->document_type;
        $document_type->save();
    }
    public function addSize(Request $request){

        DB::table('sizes')->insert([
            'size' => $request->new_size,
            'sort_order' => $request->new_size_order,
        ]);
    }
    public function removeSize($size_id){
        DB::table('sizes')->where('id', $size_id)->delete();
        return redirect('settings#tab3');
    }
    public function removeDocType($doctype_id){
        DB::table('document_types')->where('id', $doctype_id)->delete();
        return redirect('settings#tab2');
    }

    public function updateSizeOrder($type=null, $size_id, $val){
        
        if($type=="name"){
            DB::table('sizes')->where('id', $size_id)->update([
                'size' => $val
            ]);
        }else{
            DB::table('sizes')->where('id', $size_id)->update([
                'sort_order' => $val
            ]);
        }
        
    }
}
