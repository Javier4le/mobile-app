import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  DateTime date = DateTime.now();

  TextEditingController textEditingController = TextEditingController();
  bool isTextEmpty = false;
  bool isIntEmpty = false;

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
          child: Column(
            children: [
              Container(
                height: 120,
              ),
              Container(
                  width: 350,
                  child: Column(
                    children: [
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(labelText: ' Email'),
                        controller: textEditingController,
                        onChanged: (value) {
                          setState(() {
                            if (value.length > 0) {
                              isTextEmpty = true;
                            } else {
                              isTextEmpty = false;
                            }
                          });
                        },
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(labelText: ' Edad'),
                        onChanged: (value) {
                          setState(() {
                            if (value.length > 0) {
                              isIntEmpty = true;
                            } else {
                              isIntEmpty = false;
                            }
                          });
                        },
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Text('Fecha: '),
                                  Text('${date.day}/${date.month}/${date.year}',
                                      style:
                                          TextStyle(color: Colors.blue[700])),
                                ],
                              ),
                            ),
                            Container(
                              child: TextButton(
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
                                child: Icon(
                                  Icons.calendar_today,
                                  color: Colors.black,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        child: ElevatedButton(
                            style: ButtonStyle(backgroundColor:
                                MaterialStateProperty.resolveWith((states) {
                              if (isTextEmpty && isIntEmpty) {
                                return Colors.green;
                              }
                              return Colors.grey;
                            })),
                            onPressed: () {
                              if (isTextEmpty && isIntEmpty) {
                                showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    backgroundColor: Color(0xff1f1d2c),
                                    title: const Text('Exito'),
                                    content: const Text(
                                        'Contacto enviado Exitosamente'),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(context, 'OK'),
                                        child: const Text('OK'),
                                      ),
                                    ],
                                  ),
                                );
                              } else {
                                showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    backgroundColor: Color(0xff1f1d2c),
                                    title: const Text('Error'),
                                    content: const Text(
                                        'Datos No han sido ingresados'),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(context, 'OK'),
                                        child: const Text('OK'),
                                      ),
                                    ],
                                  ),
                                );
                              }
                            },
                            child: Text('Enviar Solicitud de Contacto')),
                      )
                    ],
                  ))
            ],
          )),
    );
  }
}
