import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  // const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  bool isSwitched = false;
  bool isSwitched2 = false;
  DateTime date = DateTime.now();

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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Fecha: ',
                            style: TextStyle(color: Colors.black),
                          ),
                          Text('${date.day}/${date.month}/${date.year}',
                              style: TextStyle(color: Colors.blue[700])),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          showDatePicker(
                            context: context,
                            locale: Locale('es'),
                            initialDate: date,
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
                ElevatedButton(onPressed: () {}, child: Text('Envíar'))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
