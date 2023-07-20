<?php

namespace clinicaSystem;

use Illuminate\Database\Eloquent\Model;

class Observacion extends Model
{
    protected $fillable = ['id','descripcion','proxcita','consultas_id'];

    public static function obsCon($id){
    	return Observacion::where('consultas_id', '=', $id) -> get();
    }
}
