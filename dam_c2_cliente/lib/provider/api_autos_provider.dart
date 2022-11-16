import 'dart:convert';
import 'package:http/http.dart' as http;

class AutosProvider {
  final apiURL = 'http://10.0.2.2:8000/api';

  //LEER TODAS LOS AUTOS
  Future<List<dynamic>> getAllAutos() async {
    var uri = Uri.parse('$apiURL/autos');
    var respuesta = await http.get(uri);

    if (respuesta.statusCode == 200) {
      return json.decode(respuesta.body);
    } else {
      return [];
    }
  }

  //LEER 1 AUTO
  Future<List<dynamic>> getAuto(String vin) async {
    var uri = Uri.parse('$apiURL/autos/$vin');
    var respuesta = await http.get(uri);

    if (respuesta.statusCode == 200) {
      return json.decode(respuesta.body);
    } else {
      return [];
    }
  }

  //ELIMINAR AUTO
  Future<List<dynamic>> deleteAuto(String vin) async {
    var uri = Uri.parse('$apiURL/autos/$vin');
    var respuesta = await http.delete(uri);

    if (respuesta.statusCode == 200) {
      return json.decode(respuesta.body);
    } else {
      throw Exception('Hubo un erro al eliminar');
    }
  }

  //AGREGAR MARCA
  Future<bool> addAuto(String vin, String marca, String modelo, int anno,
      int precio) async {
    var uri = Uri.parse('$apiURL/autos');
    var respuesta = await http.post(uri,
        headers: <String, String>{
          'Accept': 'application/json;',
          'Content-type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          'vin': vin,
          'marca': marca,
          'modelo': modelo,
          'año': anno,
          'precio': precio
        }));
    var data = jsonDecode(respuesta.body);

    if (respuesta.statusCode == 200) {
      return json.decode(respuesta.body);
    } else {
      throw Exception('No se pudo Ingresar el nuevo');
    }
  }
}
