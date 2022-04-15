<?php

namespace App\Models;

use App\Helpers\GeneralHelper;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class LabUji extends Model
{
    protected $table = 'lab_ujis';

    protected $primaryKey= "id";

    protected $fillable = ['record_id','nama'];

    public function storeData($request){
        try{
            DB::beginTransaction();
            $LabUji = new LabUji();
            $LabUji->record_id = GeneralHelper::generateRecordId();
            $LabUji->nama = $request->input('namalab');
            $LabUji->save();
            DB::commit();
            return true;
        }catch(\Exception $e){
            DB::rollBack();
            report($e);
            return false;
        }
    }

    public function storeData2($request){
        try{
            DB::beginTransaction();
            $LabUji = LabUji::where('record_id', $request->input('record_id'))->first();
            $LabUji->nama = $request->input('namalab');
            $LabUji->save();
            DB::commit();
            return true;
        }catch(\Exception $e){
            DB::rollBack();
            report($e);
            return false;
        }
    }
}
