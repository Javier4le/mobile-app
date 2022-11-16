

import 'package:flutter/material.dart';
import 'package:mobile_app_frontend/dam_2_client_WG/add_car_page.dart';
import 'package:mobile_app_frontend/provider/api_autos_provider.dart';

class FormPage extends StatefulWidget {
  //const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  AutosProvider provider = new AutosProvider();
  String autos='';
  String autovin='';
  TextEditingController VinAuto = new TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final emailRegex =
      (r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  bool EmailOk = false;
  bool PassEmpty = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Color(0xffde6161), Colors.green]),
        ),
        child: Column(
          children: [
            campoEmail(),
            campoPassword(),
            Divider(),
            Form(
              key: _formKey,
              child: Container(
                width: double.infinity,
                child: ElevatedButton(
                    style: ButtonStyle(backgroundColor:
                        MaterialStateProperty.resolveWith((states) {
                      if (EmailOk && PassEmpty) {
                        return Colors.green;
                      }

                      return Colors.red;
                    })),
                    onPressed: () {
                      if (EmailOk && PassEmpty) {
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Exito'),
                            content:
                                const Text('Inicio de sesion Exitoso'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        );
                      } else if (!PassEmpty) {
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Error'),
                            content:
                                const Text('Contraseña No Puede estar vacia'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        );
                      } else if (!EmailOk) {
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Error'),
                            content: const Text('Email No Correcto o Vacio'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        );
                      }
                    },
                    child: Text('Iniciar Sesion')),
              ),
            ),
            
            Container(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.purple),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AddCarPage()));
                  },
                  child: Text("Agregar Auto")),
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.pink),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Buscar Auto por VIN'),
                          content: TextField(
                            controller: VinAuto,
                            onChanged: (value) {
                              setState(() {        
                                autovin = value;
                              });
                            },
                            decoration:
                                InputDecoration(hintText: "Ingrese el VIN"),
                          ),
                          actions: <Widget>[
                           TextButton(onPressed: (){
                            setState(() {
                              Navigator.pop(context);                       
                            });
                           }, child: Text("Buscar"))
                          ],
                        );
                      });
                },
                child: Text("Buscar auto por vin"),
              ),
            ),
            /*Container(child: 
            FutureBuilder(
              future: provider.getAuto(VinAuto.text),
              builder: (context, AsyncSnapshot snapshot){
                if(!snapshot.hasData){
                  return Text("no data");
                }
                return Container(child: snapshot.data.map<String>((autos){
                  return Text(autos['vin']+"\n"+autos['marca']+"\n"+autos['modelo']
                  +"\n"+autos['año'].toString()+"\n"+autos['precio'].toString());

                }));
              } ),
              
              )*/
          ],
        ),
      ),
    );
  }

  TextFormField campoEmail() {
    return TextFormField(
        decoration: InputDecoration(
            labelText: "Correo Electronico/ Email",
            labelStyle: TextStyle(color: Colors.white),
            hintText: 'Ingrese su Email',
            hintStyle: TextStyle(color: Colors.white)),
        keyboardType: TextInputType.emailAddress,
        autovalidateMode: AutovalidateMode.always,
        validator: (email) {
          if (email!.isEmpty) {
            EmailOk = false;
            return "Ingrese Email";
          }
          if (!RegExp(emailRegex).hasMatch(email)) {
            return "Formato de email no valido";
          } else {
            EmailOk = true;
          }
          return null;
        });
  }

  TextFormField campoPassword() {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (pass) {
        if (pass!.isEmpty) {
          PassEmpty = false;
          return "Ingrese contraseña";
        } else {
          PassEmpty = true;
        }
        return null;
      },
      obscureText: true,
      decoration: InputDecoration(
        
          labelText: 'Contraseña',
          labelStyle: TextStyle(color: Colors.white),
          hintText: 'Ingrese Su contraseña',
          hintStyle: TextStyle(color: Colors.white)),
    );
  }
}
