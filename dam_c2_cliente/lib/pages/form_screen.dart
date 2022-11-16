import 'package:dam_c2_cliente/pages/home.dart';
import 'package:dam_c2_cliente/providers/dam_c2_api_provider.dart';
import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  // controller para los campos de texto
  TextEditingController vin = new TextEditingController();
  TextEditingController marca = new TextEditingController();
  TextEditingController modelo = new TextEditingController();
  TextEditingController annio = new TextEditingController();
  TextEditingController precio = new TextEditingController();

  final DamC2ApiProvider provider = new DamC2ApiProvider();
  String autos = '';

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 141, 0, 47),
        title: Text('Agregar un nuevo auto',
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Center(
        child: Form(
          key: formKey,
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Agregar un nuevo auto',
                  style: TextStyle(fontSize: 30),
                ),
                const SizedBox(
                  height: 20,
                ),
                // vin
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor ingrese el VIN';
                    }
                    return null;
                  },
                  controller: vin,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'VIN',
                    hintText: 'Ingrese el VIN',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor ingrese la marca';
                    }
                    return null;
                  },
                  controller: marca,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Marca',
                    hintText: 'Ingrese la marca del auto',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor ingrese el modelo';
                    }
                    return null;
                  },
                  controller: modelo,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Modelo',
                    hintText: 'Ingrese el modelo del auto',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor ingrese el año';
                    }
                    return null;
                  },
                  controller: annio,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Año',
                    hintText: 'Ingrese el año del auto',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // precio
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor ingrese el precio';
                    }
                    return null;
                  },
                  controller: precio,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Precio',
                    hintText: 'Ingrese el precio del auto',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      provider
                          .addAutos(vin.text, marca.text, modelo.text,
                              int.parse(annio.text), int.parse(precio.text))
                          .then((value) {
                        if (value == 'OK') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home(),
                            ),
                          );
                        }
                      });
                    }
                    // provider.addAutos(vin.text, marca.text, modelo.text,
                    //     int.parse(annio.text), int.parse(precio.text));

                    // Navigator.push(
                    //     context, MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: const Text('Agregar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
