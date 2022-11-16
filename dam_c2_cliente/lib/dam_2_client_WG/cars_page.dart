
import 'package:flutter/material.dart';
import 'package:mobile_app_frontend/provider/api_autos_provider.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CarsPage extends StatefulWidget {
  //const CarsPage({super.key});

  @override
  State<CarsPage> createState() => _CarsPageState();
}

class _CarsPageState extends State<CarsPage> {
  AutosProvider provider = new AutosProvider();
  String autos = '';
  String vin = '12345';

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
        child: FutureBuilder(
          future: provider.getAllAutos(),
          builder: (context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return Text(
                "Cargando Marcas",
                style: TextStyle(color: Colors.black),
              );
            }
            return ListView(
            
              shrinkWrap: true,
              children: snapshot.data.map<Widget>((autos) {
                return ListTile(
                    leading: Icon(MdiIcons.car,color: Colors.black),
                    title: Text(autos['marca'] + ' ' + autos['modelo'],
                    style: TextStyle(color: Colors.white),),
                    shape: Border(bottom: BorderSide(color: Colors.black)),
                    subtitle: Text("Año: " + autos['año'].toString(),style: TextStyle(color: Colors.white)),
                    trailing: Text( "\$ ${autos['precio'].toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}",style: TextStyle(color: Colors.white)),
                          
                    onTap: () {
                      
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("AlertDialog"),
                              content: Text(
                                  "Estas seguro de que quieres borrar este auto?"),
                              actions: <Widget>[
                                TextButton(
                                  child: Text("Cancel"),
                                  onPressed: () {                                 
                                    Navigator.pop(context);
                                  },
                                ),
                                TextButton(
                                  child: Text("Continue"),
                                  onPressed: () {
                                    Navigator.pop(context);
                                    provider.deleteAuto(autos['vin']);                                   
                                    setState(() {
                                      autos = autos['vin'];
                                    });
                                  },
                                )
                              ],
                            );
                          });
                    });
              }).toList(),
            );
          },
        ),
      ),
    );
  }
}
