<?php

namespace clinicaSystem;

use Illuminate\Database\Eloquent\Model;

class Examene extends Model
{
    protected $fillable = ['id','nombre','resultado','funcvitales_id','funcbiologicas_id','tipoexamenes_id','consultas_id'];

    public static function exaFvi($id){
    	return Examene::where('funcvitales_id', '=', $id) -> get();
    }

    public static function exaFbi($id){
        return Examene::where('funcbiologicas_id','=', $id) -> get();
    }

    public static function exaCon($id){
        return Examene::where('consultas_id', '=', $id) -> get();
    }

    public static function exaTex($id){
        return Examene::where('tipoexamenes_id', '=', $id) -> get();
    }
}
