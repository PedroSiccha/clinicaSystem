<?php

namespace clinicaSystem;

use Illuminate\Database\Eloquent\Model;

class Ocupacion extends Model
{
    protected $fillable = ['id','nombre','pacientes_id'];

    public static function ocuPac($id){
    	return Ocupacion::where('pacientes_id', '=', $id) -> get();
    }
}
