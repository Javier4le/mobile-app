<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AutoRequest extends FormRequest
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
}
