<?php

namespace clinicaSystem;

use Illuminate\Database\Eloquent\Model;

class MedicamentoUnidmedida extends Model
{
    protected $fillable = ['id','cantidad','unidmedidas_id','medicamentos_id','tratamientos_id'];

    public static function munUme($id){
    	return MedicamentoUnidmedida::where('unimedidas_id', '=', $id) -> get();
    }

    public static function munMed($id){
        return MedicamentoUnidmedida::where('medicamentos_id', '=', $id) -> get();
    }

    public static function munTra($id){
        return MedicamentoUnidmedida::where('tratamientos_id', '=', $id) -> get();
    }
}
