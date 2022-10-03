import 'package:flutter/material.dart';


class ContactoTab2 extends StatefulWidget {
  //const ContactoTab2({super.key});

  

  @override
  State<ContactoTab2> createState() => _ContactoTab2State();
}

class _ContactoTab2State extends State<ContactoTab2> {
  bool isSwitched = false;
  bool isSwitched2 = false;
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
                              value: isSwitched2,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched2 = value;
                                  print(isSwitched2);
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
                  color: Color.fromARGB(255, 204, 21, 8),
                  thickness: 1,
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
                 ElevatedButton(
                   style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(40)),
                   onPressed: (){}, 
                   child: Text('Enviar Solicitud de Contacto')
                   )
              ],
            ),
          ),
        ),
      ],
    );
  }
}