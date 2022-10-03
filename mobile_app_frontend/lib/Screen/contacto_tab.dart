
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ContactoTab extends StatelessWidget {
  //const ContactoTab({super.key});

  bool isSwitched = false;
  DateTime date = DateTime(2021, 1, 1);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Expanded(
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(labelText: ' Nombre'),
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(labelText: ' Email'),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: ' Edad'),
                ),
                Padding(
                  padding: const EdgeInsets.all(.0),
                  child: Row(
                    children: [Text('Deseo recibir Informacion de:')],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(' Lego Avengers'),
                            Switch(
                              value: isSwitched,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched = value;
                                  print(isSwitched);
                                });
                              },
                              activeTrackColor: Colors.lightGreenAccent,
                              activeColor: Colors.green,
                            )
                          ],
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(' Lego Star Wars'),
                            Switch(
                              value: isSwitched,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched = value;
                                  print(isSwitched);
                                });
                              },
                              activeTrackColor: Colors.lightGreenAccent,
                              activeColor: Colors.green,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: Colors.red,
                ),
                Row(
                  children: [
                    Text(
                        'Deseo recibir informacion a partir de la siguiente fecha:'),
                  ],
                ),
                 Padding(
                   padding: const EdgeInsets.only(top: 1.0),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [Text('Fecha: '),
                        Text('${date.day}/${date.month}/${date.year}',
                        style: TextStyle(color: Colors.blue)),],
                        
                      ),
                    TextButton(
                      onPressed: () {
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2100),
                        ).then((value) {
                          setState(() {
                            date = value!;
                          });
                        });
                      },
                      child: Icon(Icons.calendar_today),
                    ),
                  ],
                ),
                 ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void setState(Null Function() param0) {}
}
