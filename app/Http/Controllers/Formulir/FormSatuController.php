<?php

namespace App\Http\Controllers\Formulir;

use App\User;
use App\Repo\UserDb;
use App\Helper\JsonDecode;
use App\Helpers\GeneralHelper;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Complience;
use App\Models\FormData;
use App\Models\Formulir1;
use App\Repo\Inspeksi;
use App\Response\ProductResponse;
use Exception;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use stdClass;

class FormSatuController extends Controller
{
    private $formInpeksi_db;

    public function __construct()
    {
        $this->formInpeksi_db = new Inspeksi();
    }

    public function GetbyRole(Request $request){
        try{
            $response['success'] = false;
            $response['message'] = "401 Unauthorized";
            
            $role = $request->role;
            
            if(!empty($role)){
                
                $result = $this->formInpeksi_db->getRole($role);

                if($result){

                    $response['success'] = true;
                    $response['message'] = "200 Ok";
                    $response['data'] = $result;
                }
               
            }

        }catch(Exception $e)
        {
            DB::rollBack();
            throw $e;
        }
        DB::commit();
        return response()->json($response, 200);
    }

    public function GetByRoles(Request $request){
        try{

            $response['success'] = false;
            $response['message'] = "401 Unauthorized";
            $roles = $request->roles;
            if(!empty($roles)){

                $result = $this->formInpeksi_db->getRoles($roles);
                $response['success'] = true;
                $response['message'] = "200 Ok";
                $response['data'] = $result;
            }

        }catch(Exception $e)
        {
            DB::rollBack();
            throw $e;
        }
        DB::commit();
        return response()->json($response, 200);
    }

    public function PostFormOne(Request $request){
        try{
            $response['success'] = false;
            $response['message'] = "401 Unauthorized";
            
            DB::beginTransaction();
            $forms = FormData::where('jenis_form', 1)->get();
            $arr_form_data = array();
            $data_request = $request[0];

            foreach ($forms as $form) {
            
                if ($form->data_entry_type == 'Photo') {
            
                    $id_form = $form->id;
                    $imageName = time() . '.' . $request->file($id_form)->extension();
                    $request->$id_form->move(storage_path('images/formulir1'), $imageName);
                    $arr_form_data[$id_form] = $imageName;
            
                } else {
                    $arr_form_data[$form->id] = $request->input($form->id);
                }
            
            }
            
            $record_id = GeneralHelper::generateRecordId();
            $complience = new Complience();
            $complience->record_id = $record_id;
            $complience->product_id = $request->input('id_product');
            $complience->pengawas_id = 2;
            $complience->no_she = $request->input('1');
            $complience->teknologi = $request->input('4');
            $complience->status = 3; // RRT
            $complience->save();

            $store = new Formulir1();
            $store->record_id = $record_id;
            $store->pengawas_id = 2; // dummy
            $store->form_data = json_encode($arr_form_data);
            $store->save();
            DB::commit();
            $resp['status'] = 'success';

        }catch(Exception $e)
        {
            $resp['status'] = 'error';
            DB::rollBack();
            report($e);
        }

    }

    public function PostFormOnePetik(Request $request){

        try{

            $response['success'] = false;
            $response['message'] = "401 Unauthorized";
            $dt = $request[0];
            
            if(!empty($dt)){

                //cek product master
                $dt_master = $this->formInpeksi_db->getProdukMasterByIdDataProduk($dt);
                if(!empty($dt_master)){

                    for ($x = 1; $x <= 6; $x++) {

                        //parse form;
                        $this->parseIdForm();
    
                        if($x == 1){
    
                            $this->formInpeksi_db->createDataInspeksi($dt['UP'.$x.''], $dt["id"], $x); 
                        
                        }else{
    
                            $this->formInpeksi_db->createDataInspeksi($dt['UP'.$x.''], $dt["id"], $x); 
                            
                            $dataInspeksi = $this->formInpeksi_db->getDataInspeksiByIdProdukIdFormInpeksi($dt["id"], $x);
                            
                            if(!empty($dataInspeksi)){
                            
                                $base64 = base64_encode($dt['UP'.$x.'']);
                                $this->formInpeksi_db->createDataInspeksiFile( $dataInspeksi->Id_data_produk_inspeksi, $dt["id"], $base64);
                                                           
                            }    
                        } 
                    }

                }

                $response['success'] = true;
                $response['message'] = "200 Ok";
                
            }

        }catch(Exception $e)
        {
            DB::rollBack();
            throw $e;
        }
        DB::commit();
        return response()->json($response, 200);

    }

    public function DeleteByIdProduct(Request $request){
        try{

            $response['success'] = false;
            $response['message'] = "401 Unauthorized";
            $deleteId = $request[0]['id'];
            if(!empty($deleteId)){
               
                $this->formInpeksi_db->deleteDataProdukInspeksi($deleteId);
                $response['success'] = true;
                $response['message'] = "200 Ok";
            
            }

        }catch(Exception $e)
        {
            DB::rollBack();
            throw $e;
        }
        DB::commit();
        return response()->json($response, 200);
    }

    public function GetList(Request $request){
        try{

            $response['success'] = false;
            $response['message'] = "401 Unauthorized";

            $result = $this->formInpeksi_db->getListDataProduk();

            if(!empty($result)){
            
                $data = ProductResponse::responseProduk($result);
            
                $response['success'] = true;
                $response['message'] = "200 Ok";
                $response['data'] = $data;
            
            }

        }catch(Exception $e)
        {
            DB::rollBack();
            throw $e;
        }
        DB::commit();
        return response()->json($response, 200);
    }

    public function GetDetail(Request $request){
        try{
          
            $response['success'] = false;
            $response['message'] = "401 Unauthorized";

            $detailId = $request->detail_id;
            
            $result = $this->formInpeksi_db->getDetailProduk($detailId);

            if(!empty($result)){
            
                $data = ProductResponse::responseProduk($result);
            
                $response['success'] = true;
                $response['message'] = "200 Ok";
                $response['data'] = $data;
            
            }

        }catch(Exception $e)
        {
            DB::rollBack();
            throw $e;
        }
        DB::commit();
        return response()->json($response, 200);
    }

}
