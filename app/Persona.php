<?php

namespace clinicaSystem;

use Illuminate\Database\Eloquent\Model;

class Persona extends Model
{
    protected $fillable = ['id','apellidos','nombres','fecnac','edad','tipodoc','doc','telefono','direccion','generos_id'];

    public static function perGen($id){
    	return Persona::where('generos_id', '=', $id) -> get();
    }
}
