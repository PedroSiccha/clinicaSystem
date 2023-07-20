<?php

namespace clinicaSystem;

use Illuminate\Database\Eloquent\Model;

class Motivo extends Model
{
    protected $fillable = ['id','detalle','consultas_id'];

    public static function motCon($id){
    	return Motivo::where('consultas_id', '=', $id) -> get();
    }
}
