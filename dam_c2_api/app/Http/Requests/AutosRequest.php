<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AutosRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return false;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'vin' => 'required|string|min:5|max:5|unique:autos,vin',
            'marca' => 'required|string|min:2|max:50',
            'modelo' => 'required|string|min:2|max:50',
            'año' => 'required|integer|min:1900|max:2022',
            'precio' => 'required|integer|min:1|max:999999999',
        ];
    }

    /**
     * Get the error messages for the defined validation rules.
     *
     * @return array<string, mixed>
     */
    public function messages()
    {
        return [
            'vin.required' => 'El campo VIN es obligatorio',
            'vin.string' => 'El campo VIN debe ser una cadena de texto',
            'vin.min' => 'El campo VIN debe tener al menos 5 caracteres',
            'vin.max' => 'El campo VIN debe tener como máximo 5 caracteres',
            'vin.unique' => 'El campo VIN debe ser único',
            'marca.required' => 'El campo Marca es obligatorio',
            'marca.string' => 'El campo Marca debe ser una cadena de texto',
            'marca.min' => 'El campo Marca debe tener al menos 2 caracteres',
            'marca.max' => 'El campo Marca debe tener como máximo 50 caracteres',
            'modelo.required' => 'El campo Modelo es obligatorio',
            'modelo.string' => 'El campo Modelo debe ser una cadena de texto',
            'modelo.min' => 'El campo Modelo debe tener al menos 2 caracteres',
            'modelo.max' => 'El campo Modelo debe tener como máximo 50 caracteres',
            'año.required' => 'El campo Año es obligatorio',
            'año.integer' => 'El campo Año debe ser un número entero',
            'año.min' => 'El campo Año debe ser mayor o igual a 1900',
            'año.max' => 'El campo Año debe ser menor o igual a 2022',
            'precio.required' => 'El campo Precio es obligatorio',
            'precio.integer' => 'El campo Precio debe ser un número entero',
            'precio.min' => 'El campo Precio debe ser mayor o igual a 1',
            'precio.max' => 'El campo Precio debe ser menor o igual a 999999999',
        ];
    }
}
