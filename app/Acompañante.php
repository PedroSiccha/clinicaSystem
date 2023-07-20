<?php

namespace clinicaSystem;

use Illuminate\Database\Eloquent\Model;

class Acompañante extends Model
{
    protected $fillable = ['id','parentezco','personas_id'];

    public static function acoPer($id){
    	return Acompañante::where('personas_id', '=', $id) -> get();
    }
}
