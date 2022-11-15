import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:mobile_app_frontend/certamen/provider/api_autos_provider.dart';

class ApiAutos extends StatefulWidget {
  //const ApiAutos({super.key});

  @override
  State<ApiAutos> createState() => _ApiAutosState();
}

class _ApiAutosState extends State<ApiAutos> {
  TextEditingController newMarca = new TextEditingController();
  TextEditingController updMarca = new TextEditingController();
  AutosProvider provider = new AutosProvider();
  String marcas = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Api Autos"),
        ),
        body: Padding(
          padding: EdgeInsets.all(5.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: FutureBuilder(
                  future: provider.getMarcas(),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (!snapshot.hasData) {
                      return Text(
                        "Cargando Marcas",
                        style: TextStyle(color: Colors.black),
                      );
                    }
                    return DropdownButton<String>(
                      value: marcas.isEmpty ? null : marcas,
                      isExpanded: true,
                      hint: Text('Marcas'),
                      items:
                          snapshot.data.map<DropdownMenuItem<String>>((marcas) {
                        return DropdownMenuItem<String>(
                            child: Text(marcas['nombre']), value: marcas['id']);
                      }).toList(),
                      onChanged: (nuevaMarca) {
                        setState(() {
                          marcas = nuevaMarca.toString();
                        });
                      },
                    );
                  },
                ),
              ),

              //ELIMINAR MARCA
              Container(
                child: ElevatedButton(
                  child: Text('Eliminar Marca'),
                  onPressed: () {
                    setState(() {
                      provider.deleteMarca(marcas);
                      marcas = '';
                    });
                  },
                ),
              ),
              // AGREGAR MARCA
              Container(
                child: agregarMarca(),
              ),
              Container(
                child: ElevatedButton(
                  child: Text("Agregar Marca"),
                  onPressed: () {
                    setState(() {
                      provider.addMarca(newMarca.text);
                    });
                  },
                ),
              ),
              // UPDATE MARCA
              Container(
                child: updateMarca(),
              ),
              Container(
                  child: ElevatedButton(
                child: Text("Actualizar Marca"),
                onPressed: () {
                  setState(() {
                    provider.updateMarca(marcas, updMarca.text);
                  });
                },
              ))
            ],
          ),
        ));
  }

  TextFormField agregarMarca() {
    return TextFormField(
      controller: newMarca,
      decoration: InputDecoration(
        labelText: 'Igrese Marca',
        hintText: 'Escriba una marca para la bd',
      ),
    );
  }

  TextFormField updateMarca() {
    return TextFormField(
      controller: updMarca,
      decoration: InputDecoration(
        labelText: 'Update Marca',
        hintText: 'Escriba una marca para actualizar',
      ),
    );
  }
}
