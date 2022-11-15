<?php
namespace App\Http\Controllers;

use App\Models\Auto;
use Illuminate\Http\Request;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;

class AutosController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // Obtener todos los autos
        $autos = Auto::all();
        return $autos;
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request , Marca $marca)
    {
        // Insertar un nuevo auto
        $auto = new Auto();
        $auto->patente = $request->patente;
        $auto->modelo = $request->modelo;
        $auto->precio = $request->precio;
        $auto->marca_id = $marca->id;
        $auto->save();
        return $auto;
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Auto  $auto
     * @return \Illuminate\Http\Response
     */
    public function show(Auto $auto)
    {
        // Mostrar un auto
        return $auto;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Auto  $auto
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Auto $auto)
    {
        // Actualizar un auto
        $auto->patente = $request->patente;
        $auto->modelo = $request->modelo;
        $auto->precio = $request->precio;
        $auto->marca_id = $request->marca_id;
        $auto->save();
        return $auto;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Auto  $auto
     * @return \Illuminate\Http\Response
     */
    public function destroy(Auto $auto)
    {
        // Eliminar un auto
        $auto->delete();
        return $auto;
    }

    public function getAutosByMarca(Request $request)
    {
        // Obtener todos los autos de una marca
     
        $autos = Auto::where('marca_id', $request->id)->get();
        return $autos;
    }
}