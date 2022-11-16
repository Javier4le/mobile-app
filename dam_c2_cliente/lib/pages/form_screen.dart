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
              TextField(
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
              TextField(
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
              TextField(
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
              TextField(
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
              TextField(
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
                  // agregar el auto con provider y navegar a la pantalla de autos
                  provider.addAutos(vin.text, marca.text, modelo.text,
                      int.parse(annio.text), int.parse(precio.text));

                  // Navigator.push(
                  //     context, MaterialPageRoute(builder: (context) => Home()));

                  // redirigir a la pantalla de autos con el nuevo auto
                  // Navigator.pushNamed(context, '/autos');
                },
                child: const Text('Agregar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
