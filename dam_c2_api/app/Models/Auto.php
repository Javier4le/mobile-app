<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Auto extends Model
{
    use HasFactory, softDeletes;


    protected $table = 'autos';

    protected $primaryKey = 'vin';

    public $incrementing = false;

    protected $keyType = 'string';

    // protected $fillable = ['vin', 'marca', 'modelo', 'año', 'precio'];
}
