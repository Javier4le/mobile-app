<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Auto extends Model
{
    use HasFactory;

    // Tabla a usar
    protected $table = 'autos';

    // No usamos los timestamps
    public $timestamps = false;

    // La clave primaria es la patente
    protected $primaryKey = 'patente';

    // No autoincrementamos la clave primaria
    protected $incrementing = false;

    // El tipo de clave es primaria
    protected $keyType = 'string';

    // Función para obtener la marca a la que pertenece un auto, 1->m
    public function marca()
    {
        return $this->belongsTo(Marca::class);
    }
}
