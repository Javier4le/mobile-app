import 'package:dam_c2_cliente/pages/form_screen.dart';
import 'package:flutter/material.dart';
import 'package:dam_c2_cliente/providers/dam_c2_api_provider.dart';

class CarsScreen extends StatefulWidget {
  // const CarsScreen([super.key]);

  @override
  State<CarsScreen> createState() => _CarsScreenState();
}

class _CarsScreenState extends State<CarsScreen> {
  TextEditingController newAuto = new TextEditingController();
  final DamC2ApiProvider provider = new DamC2ApiProvider();
  String autos = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child:
            // buscador de autos por VIN

            FutureBuilder(
          future: provider.getAutos(),
          builder: (context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: Text(
                  "Cargando Autos...",
                  style: TextStyle(fontSize: 20),
                ),
              );
            }
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: UniqueKey(),
                  direction: DismissDirection.endToStart,
                  background: Container(
                    padding: EdgeInsets.only(left: 20),
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    color: Colors.red,
                    child: Icon(
                      Icons.delete,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  onDismissed: (direction) {
                    setState(() {
                      autos = snapshot.data[index]['vin'];
                      provider.deleteAutos(autos);
                    });
                  },
                  confirmDismiss: (direction) async {
                    return await showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Eliminar Auto"),
                          content: Text(
                              "¿Está seguro que desea eliminar el auto ${snapshot.data[index]['marca']} ${snapshot.data[index]['modelo']}?"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(true);
                              },
                              child: Text("Si"),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(false);
                              },
                              child: Text("No"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: ListTile(
                        // mostrar todos los datos del auto
                        title: Text(
                            "${snapshot.data[index]['marca']} ${snapshot.data[index]['modelo']}",
                            style: TextStyle(fontSize: 18)),
                        subtitle: Text(
                            "VIN: ${snapshot.data[index]['vin']} \nAño: ${snapshot.data[index]['año']}",
                            style: TextStyle(fontSize: 14)),
                        leading: Icon(
                          Icons.directions_car_rounded,
                          size: 30,
                        ),
                        trailing: Text(
                          "\$ ${snapshot.data[index]['precio'].toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}",
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        // onTap: () {
                        //   Navigator.pushNamed(context, 'detalle',
                        //       arguments: snapshot.data[index]);
                        // },
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormScreen();
          }));
        },
        child: Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 141, 0, 47),
      ),
    );
  }
}
