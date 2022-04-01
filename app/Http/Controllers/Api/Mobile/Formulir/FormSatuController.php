<?php

namespace App\Http\Controllers\Api\Mobile\Formulir;

use App\User;
use App\Repo\UserDb;
use App\Helper\JsonDecode;
use App\Helpers\GeneralHelper;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Complience;
use App\Models\FormData;
use App\Models\Formulir1;
use App\Repo\FormulirSatu;
use App\Response\ProductResponse;
use Exception;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use stdClass;

class FormSatuController extends Controller
{
    private $formSatu_db;

    public function __construct()
    {
        $this->formSatu_db = new FormulirSatu();
    }

    public function GetForm(Request $request){

        try{

            $response['success'] = false;
            $response['message'] = "401 Unauthorized";
                   
            $result = $this->formSatu_db->getFormData();

            if(!empty($result)){

                $response['success'] = true;
                $response['message'] = "200 Ok";
                $response['data'] = $result;
            }
            
            DB::commit();
               
        }catch(Exception $e)
        {
            DB::rollBack();
            throw $e;
        }
        
        return response()->json($response, 200);
    }

    public function PostData(Request $request){
        try{
           
            $response['success'] = false;
            $response['message'] = "401 Unauthorized";
            
            $arr_form_data = array();
            $data_request = $request[0];
            $forms = $this->formSatu_db->getFormData();

            if(!empty($data_request)){

                foreach ($forms as $form) {

                    //seacrh data 
                    $id_form = $this->constantaFormSatu($form);

                    if($id_form != false){

                        if($form->id == 9 || $form->id == 24){

                            if(!empty($data_request[$id_form])){
                               
                                //upload image
                                $imageName = $id_form.'_'.time();
                                $dirLocation = 'images/formulir_1';
                                $upload_image = GeneralHelper::uploadImageBase64($data_request[$id_form],$imageName, $dirLocation);
                                $arr_form_data[$form->id] = $upload_image;
                            }
                            
                        }else{

                            $arr_form_data[$form->id] = $data_request[$id_form];

                        }

                    }
                  
                }
                
            }

            $record_id = GeneralHelper::generateRecordId();

            if(!empty($record_id)){

                $this->formSatu_db->createCompliance($record_id , $data_request);
                $this->formSatu_db->createFormulirSatu($record_id , $arr_form_data);

            }
            DB::commit();
            $response['success'] = true;
            $response['message'] = "200 Ok";

        }catch(Exception $e)
        {
            DB::rollBack();
            throw($e);
        }

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

    public function constantaFormSatu($form){

        switch ($form) {

            //lokasi pengawasan
            case ($form->id == 8):
                $result = 'lp1';
                break;
            case ($form->id == 5):
                $result = 'lp2';
                break;
            case ($form->id == 6):
                $result = 'lp3';
                break;
            case ($form->id == 7):
                $result = 'lp4';
                break;
            case ($form->id == 4):
                $result = 'lp5';
                break;
            case ($form->id == 170):
                $result = 'lp6';
                break;
            case ($form->id == 9):
                $result = 'lp7';
                break;
            
            //tenaga penjual
            case ($form->id == 10):
                $result = 'tp1';
                break;
            case ($form->id == 11):
                $result = 'tp2';
                break;
            case ($form->id == 12):
                $result = 'tp3';
                break;
            case ($form->id == 13):
                $result = 'tp4';
                break;
            case ($form->id == 14):
                $result = 'tp5';
                break;
            
            //produk compliance
            case ($form->id == 171):
                $result = 'pc1';
                break;
            case ($form->id == 16):
                $result = 'pc2';
                break;
            case ($form->id == 23):
                $result = 'pc3';
                break;
            case ($form->id == 18):
                $result = 'pc4';
                break;
            case ($form->id == 30):
                $result = 'pc5';
                break;
            case ($form->id == 57):
                $result = 'pc6';
                break;
            case ($form->id == 53):
                $result = 'pc7';
                break;
            case ($form->id == 26):
                $result = 'pc8';
                break;
            case ($form->id == 19):
                $result = 'pc9';
                break;
            case ($form->id == 20):
                $result = 'pc10';
                break;
            case ($form->id == 21):
                $result = 'pc11';
                break;
            case ($form->id == 22):
                $result = 'pc12';
                break;
            case ($form->id == 24):
                $result = 'pc13';
                break;

            //LTHE
            case ($form->id == 31):
                $result = 'lthe1';
                break;
            case ($form->id == 32):
                $result = 'lthe2';
                break;
            case ($form->id == 33):
                $result = 'lthe3';
                break;
            case ($form->id == 34):
                $result = 'lthe4';
                break;
            case ($form->id == 35):
                $result = 'lthe5';
                break;

            //REGULASI LAIN
            case ($form->id == 38):
                $result = 'rl1';
                break;
            case ($form->id == 39):
                $result = 'rl2';
                break;
            case ($form->id == 40):
                $result = 'rl3';
                break;
            case ($form->id == 41):
                $result = 'rl4';
                break;
            case ($form->id == 36):
                $result = 'rl5';
                break;
            case ($form->id == 37):
                $result = 'rl6';
                break;
            default:
                $result = false; 
        }

       
        return $result;
        
    }

}
