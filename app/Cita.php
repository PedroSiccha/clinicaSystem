<?php

namespace clinicaSystem;

use Illuminate\Database\Eloquent\Model;

class Cita extends Model
{
    protected $fillable = ['id','fechaexp','fechaaten','histclinicas_id'];

    public static function citHis($id){
    	return Cita::where('histclinicas_id', '=', $id) -> get();
    }
}
