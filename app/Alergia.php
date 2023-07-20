<?php

namespace clinicaSystem;

use Illuminate\Database\Eloquent\Model;

class Alergia extends Model
{
    protected $fillable = ['id','descripcion','histclinicas_id'];

    public static function aleHis($id){
    	return Alergia::where('histclinicas_id', '=', $id) -> get();
    }
}
