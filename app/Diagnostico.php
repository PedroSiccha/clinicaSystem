<?php

namespace clinicaSystem;

use Illuminate\Database\Eloquent\Model;

class Diagnostico extends Model
{
    protected $fillable = ['id','descripcion','consultas_id'];

    public static function diaCon($id){
    	return Diagnostico::where('consultas_id', '=', $id) -> get();
    }
}
