<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\softDeletes;

class Auto extends Model
{

    use HasFactory, softDeletes;

    protected $table = 'autos';
    protected $primaryKey = 'vin';
    protected $inscrementing = false;
    protected $keyType = 'string';
    

}
