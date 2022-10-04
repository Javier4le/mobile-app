import 'package:flutter/material.dart';

class Contancto extends StatefulWidget {
  Contancto({Key? key}) : super(key: key);

  @override
  State<Contancto> createState() => _ContanctoState();
}

class _ContanctoState extends State<Contancto> {
  bool isSwitched = false;
  DateTime date = DateTime(2021, 1, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Contacto'),
      ),
      body: Column(
        children: [
          Container(
            child: Expanded(
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: ' Nombre',
                    ),
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(labelText: ' Email'),
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: ' Edad'),
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
                          children: [
                            Text(
                              'Fecha: ',
                              style: TextStyle(color: Colors.black),
                            ),
                            Text('${date.day}/${date.month}/${date.year}',
                                style: TextStyle(color: Colors.blue)),
                          ],
                        ),
                        TextButton(
                          onPressed: () {
                            showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2022, 01, 01),
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
      ),
    );
  }
}
