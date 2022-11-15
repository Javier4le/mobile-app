import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:mobile_app_frontend/certamen/certamen_2_api.dart';

class certamen_2 extends StatefulWidget {
  certamen_2({Key? key}) : super(key: key);

  @override
  State<certamen_2> createState() => _certamen_2State();
}

class _certamen_2State extends State<certamen_2> {
//Variables
  final formKey = GlobalKey<FormState>();
  final emailRegex =
      (r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  //variable de cambio de valor

  var textNom = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("C2 DAM020-CLIENTE"), 
        elevation: 0,
      ),
      body: Form(
        key: formKey,
        child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(10)),
                ),
                child: Text(
                  'JOAQUIN MOGOLLON',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListView(
                  children: [campoEmail(), campoPassword(), botonIngresar()],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }

  TextFormField campoEmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Correo Electronico/ Email"),
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(color: Colors.black),
      validator: (email) {
        //buscar codegrepper.com

        if (email!.isEmpty) {
          return "Ingrese Email";
        }
        if (!RegExp(emailRegex).hasMatch(email)) {
          return "Formato de email no valido";
        }
        return null;
      },
    );
  }

  TextFormField campoPassword() {
    return TextFormField(
      obscureText: true,
      decoration:
          InputDecoration(hintText: 'Contraseña', labelText: 'Contraseña'),
      style: TextStyle(color: Colors.black),
      validator: (password) {
        if (password!.isEmpty) {
          return "Ingrese Contraseña";
        }
        return null;
      },
    );
  }

  Widget botonIngresar() {
    return Container(
      
      child: 
      ElevatedButton(
        child: Text("Ingresar"),        
        onPressed: () {
          if (formKey.currentState!.validate()) print("OK");
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ApiAutos()));
        },
      ),

    );
  }
}
