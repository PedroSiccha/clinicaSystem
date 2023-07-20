<?php

namespace clinicaSystem;

use Illuminate\Database\Eloquent\Model;

class Antecpatologico extends Model
{
    protected $fillable = ['id','detalle','histclinicas_id'];

    public static function antHist($id){
    	return Atecpatologico::where('histclinicas_id', '=', $id) -> get();
    }
}
