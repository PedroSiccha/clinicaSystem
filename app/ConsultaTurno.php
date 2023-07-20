<?php

namespace clinicaSystem;

use Illuminate\Database\Eloquent\Model;

class ConsultaTurno extends Model
{
    protected $fillable = ['id','turnos_id','consultas_id'];

    public static function cotCon($id){
    	return ConsultaTurno::where('consultas_id', '=', $id) -> get();
    }

    public static function cotTur($id){
        return ConsultaTurno::where('turnos_id', '=', $id) -> get();
    }
}
