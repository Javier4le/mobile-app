<?php

namespace App\Http\Controllers;

use App\Models\Marca;
use App\Models\Auto;
use Illuminate\Http\Request;

class MarcasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // Obtener todas las marcas
        $marcas = Marca::all();
        return $marcas;
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Insertar una nueva marca
        $marca = new Marca();
        $marca->nombre = $request->nombre;
        $marca->save();
        return $marca;
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Marca  $marca
     * @return \Illuminate\Http\Response
     */
    public function show(Marca $marca)
    {
        // Mostrar una marca
        return $marca;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Marca  $marca
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Marca $marca)
    {
        // Actualizar una marca
        $marca->nombre = $request->nombre;
        $marca->save();
        return $marca;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Marca  $marca
     * @return \Illuminate\Http\Response
     */
    public function destroy(Marca $marca)
    {
        // Eliminar una marca
        $marca->delete();
    }


    public function getAutosByMarca2(Request $request)
    {
        // Obtener todos los autos de una marca
        // dd($request->id);
        $autos = Marca::where('id', $request->id)->with('autos')->get();
        return $autos;
    }


}
