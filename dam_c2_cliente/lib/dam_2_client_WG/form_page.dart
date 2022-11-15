import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  //const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  TextEditingController vinauto = new TextEditingController();
  final emailRegex =
      (r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

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
            campoEmail(),
            campoPassword(),
          ],
        ),
      ),
    );
  }

  TextFormField campoEmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Correo Electronico/ Email"),
      keyboardType: TextInputType.emailAddress,
      validator: (email) {
        if (email!.isEmpty) {
          return "Ingrese Email";
        }
        if (!RegExp(emailRegex).hasMatch(email)) {
          return "Formato de email no valido";
        }
        return null;
      },
    );
  }

  TextFormField campoPassword() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Contraseña'),
    );
  }
}
