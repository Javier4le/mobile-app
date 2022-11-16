import 'dart:convert';
import 'package:http/http.dart' as http;

class DamC2ApiProvider {
  final String _apiUrl = 'http://10.0.2.2:8000/api';

  // Obtener todos los autos
  Future<List<dynamic>> getAutos() async {
    var uri = Uri.parse('$_apiUrl/autos');
    var response = await http.get(uri);

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Error al obtener los autos');
    }
  }

  // Obtener un auto por su VIN
  Future<Map<String, dynamic>> getAuto(String vin) async {
    var uri = Uri.parse('$_apiUrl/autos/$vin');
    var response = await http.get(uri);

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Error al obtener el auto');
    }
  }

  // Agregar un nuevo auto con validaciones de la api
  Future<bool> addAutos(
      String vin, String marca, String modelo, int annio, int precio) async {
    var uri = Uri.parse('$_apiUrl/autos');
    var response = await http.post(uri,
        headers: <String, String>{
          'Accept': 'application/json',
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          'vin': vin,
          'marca': marca,
          'modelo': modelo,
          'año': annio,
          'precio': precio
        }));

    if (response.statusCode == 200) {
      return true;
    } else {
      throw Exception('Falló la conexión con el servidor');
    }
  }

  // Eliminar un auto
  Future<List<dynamic>> deleteAutos(String vin) async {
    var uri = Uri.parse('$_apiUrl/autos/$vin');
    var response = await http.delete(uri);

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Falló la conexión con el servidor');
    }
  }
}
