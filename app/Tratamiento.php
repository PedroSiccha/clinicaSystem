<?php

namespace clinicaSystem;

use Illuminate\Database\Eloquent\Model;

class Tratamiento extends Model
{
    protected $fillable = ['id','descripcion','consultas_id'];

    public static function traCon($id){
    	return Tratamiento::where('consultas_id', '=', $id) -> get();
    }
}
