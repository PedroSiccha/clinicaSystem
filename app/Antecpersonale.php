<?php

namespace clinicaSystem;

use Illuminate\Database\Eloquent\Model;

class Antecpersonale extends Model
{
    protected $fillable = ['id','nombre','resultados','detalle','histclinicas_id'];

    public static function anpHist($id){
    	return Antecpersonale::where('histclinicas_id', '=', $id) -> get();
    }
}
