<?php

namespace clinicaSystem;

use Illuminate\Database\Eloquent\Model;

class Turno extends Model
{
    protected $fillable = ['id','hini','hfin','descripcion'];

}
