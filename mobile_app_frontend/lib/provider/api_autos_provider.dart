import 'dart:convert';
import 'package:http/http.dart' as http;

class AutosProvider {
  final apiURL = 'http://10.0.2.2:8000/api';

  //LEER TODAS LAS MARCAS
  Future<List<dynamic>> getMarcas() async {
    var uri = Uri.parse('$apiURL/marcas');
    var respuesta = await http.get(uri);

    if (respuesta.statusCode == 200) {
      return json.decode(respuesta.body);
    } else{
      return [];
    }
  }
  //ELIMINAR MARCA
  Future<List<dynamic>> deleteMarca(String marca) async {
    var uri = Uri.parse('$apiURL/marcas/$marca');
    var respuesta = await http.delete(uri);

    if (respuesta.statusCode == 200) {
      return json.decode(respuesta.body);
    } else{
      return [];
    }
  }
  //AGREGAR MARCA
   Future<bool> addMarca(String marca) async {
    var uri = Uri.parse('$apiURL/marcas');
    var respuesta = await http.post(uri,
    headers: <String,String>{
      'Accept': 'application/json;',
      'Content-type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String,String>{
          'nombre': marca,
          
        })
    );

    var data = jsonDecode(respuesta.body);


    if (respuesta.statusCode == 200) {
      return json.decode(respuesta.body);
    } else{
      throw Exception('No se pudo Ingresar la nueva Marca');
    }
  }

  Future<bool> updateMarca(String marca, String Nmarca) async {
    var uri = Uri.parse('$apiURL/marcas/$marca');
    var respuesta = await http.put(uri,
    headers: <String,String>{
      'Content-type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String,String>{
          'nombre': Nmarca,     
        })
    );
    var data = jsonDecode(respuesta.body);
    if (respuesta.statusCode == 200) {
      return json.decode(respuesta.body);
    } else{
      throw Exception('No se pudo Ingresar la nueva Marca');
    }
  }



}
