import 'package:flutter/material.dart';
import 'package:mobile_app_frontend/dam_2_client_WG/home_page.dart';
import 'package:mobile_app_frontend/provider/api_autos_provider.dart';

class AddCarPage extends StatefulWidget {
  //const AddCarPage({super.key});

  @override
  State<AddCarPage> createState() => _AddCarPageState();
}

class _AddCarPageState extends State<AddCarPage> {
AutosProvider provider = new AutosProvider();
TextEditingController vinauto = new TextEditingController();
TextEditingController marcaauto = new TextEditingController();
TextEditingController modeloauto = new TextEditingController();
TextEditingController annoauto = new TextEditingController();
TextEditingController precioauto = new TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffde6161),
        title: Text("Agregar Auto a BD"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Color(0xffde6161), Colors.green]),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              campoVin(),
              campoMarca(),
              campoModelo(),
              campoAnno(),
              campoPrecio(),
              Spacer(),
              Container(
                width: double.infinity,
                
                child: ElevatedButton(onPressed: (){
                  setState(() {
                     provider.addAuto(vinauto.text, marcaauto.text, modeloauto.text, int.parse(annoauto.text), int.parse(precioauto.text));
                     
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePageDam2()));
                  });              
                }, child: Text("Agregar Auto"))),
              Spacer(flex: 3,)   
            ],
          ),
        ),
      ),
    );
  }

  TextFormField campoVin(){
    return TextFormField(
      controller: vinauto,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'VIN del auto',
        labelStyle: TextStyle(color: Colors.white),
        hintText: 'Ingrese el VIN del auto',
        hintStyle: TextStyle(color: Colors.white)
      ),
    );
  }

  TextFormField campoMarca(){
    return TextFormField(
      controller: marcaauto,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Marca del auto',
        labelStyle: TextStyle(color: Colors.white),
        hintText: 'Ingrese la Marca del auto',
        hintStyle: TextStyle(color: Colors.white)
      ),
    );
  }

  TextFormField campoModelo(){
    return TextFormField(
      controller: modeloauto,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Modelo del auto',
        labelStyle: TextStyle(color: Colors.white),
        hintText: 'Ingrese el Modelo del auto',
        hintStyle: TextStyle(color: Colors.white)
      ),
    );
  }

  TextFormField campoAnno(){
    return TextFormField(
      controller: annoauto,
      
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Año del auto',
        labelStyle: TextStyle(color: Colors.white),
        hintText: 'Ingrese el año del auto',
        hintStyle: TextStyle(color: Colors.white)
      ),
    );
  }

  TextFormField campoPrecio(){
    return TextFormField(
      controller: precioauto,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Precio del auto',
        labelStyle: TextStyle(color: Colors.white),
        hintText: 'Ingrese el precio del auto nuevo',
        hintStyle: TextStyle(color: Colors.white)
      ),
    );
  }

}