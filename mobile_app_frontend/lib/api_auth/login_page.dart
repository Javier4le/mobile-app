import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AUTH API"),
      ),
      body: Padding(
          padding: EdgeInsets.all(10),
          child: Form(
              key: formkey,
              child: Column(
                children: [campoEmail(), campoPassword()],
              ))),
    );
  }

  TextFormField campoPassword() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Email'),
      keyboardType: TextInputType.emailAddress,
    );
  }

  TextFormField campoEmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Password'),
    );
  }

  Container botonLogin() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: double.infinity,
      child: ElevatedButton(
        child: Text('Iniciar Sesion'),
        onPressed: () {},
      ),
    );
  }
}
