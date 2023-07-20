<?php

namespace clinicaSystem;

use Illuminate\Database\Eloquent\Model;

class Consulta extends Model
{
    protected $fillable = ['id','tiempo','fecha','hora','citas_id'];

    public static function conCit($id){
    	return Consulta::where('citas_id', '=', $id) -> get();
    }
}
