<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class LabUji extends Model
{
    protected $table = 'lab_ujis';

    protected $primaryKey="id";

    protected $fillable = ['nama'];

    public function storeData($request){
        try{
            DB::beginTransaction();
            $LabUji = new LabUji();
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
