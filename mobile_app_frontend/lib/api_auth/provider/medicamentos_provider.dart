import 'dart:convert';

import 'package:http/http.dart' as http;

class MedicamentosProvider {
  final String apiURL = 'http://10.8.2.2:8000/api';

  Future<bool> login(String email, String password) async {
    var uri = Uri.parse('$apiURL/login');
    var respuesta = await http.post(uri,
        headers: <String, String>{
          'Content-type': 'application/json; charset=UTF-8',
          'Accept': 'application/json;',
        },
        body: jsonEncode(<String, String>{
          'email': email,
          'password': password,
        }));

    var data = jsonDecode(respuesta.body);

    if (data['access_token'] != null) {
      return true;
    } else {
      return false;
    }
  }
}
