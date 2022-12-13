import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:mobile_app_frontend/Pages/home_page.dart';
import 'package:mobile_app_frontend/Service/firestore_service.dart';
import 'package:mobile_app_frontend/Test%20Folder/login_test.dart';
import 'package:mobile_app_frontend/Widgets/drawer_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUp extends StatefulWidget {
  // const LoginPage({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passCtrl = TextEditingController();
  TextEditingController nomCtrl = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String errorText = '';
  final emailRegex =
      (r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  bool EmailOk = false;
  bool PassEmpty = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Stack(
      children: <Widget>[
        new Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/images/bg.gif"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        new Container(
            height: double.infinity,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Text(
                      "LIVE, SHARE AND JUST ENJOY",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        campoUser(),
                        Divider(),
                        campoEmail(),
                        Divider(),
                        campoPassword(),
                        Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          child: Text(
                            errorText,
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                        botonRegistro(),
                        TextButton(
                          onPressed: () {
                            MaterialPageRoute route = MaterialPageRoute(
                                builder: (context) => LoginTest());
                            Navigator.pushReplacement(context, route);
                          },
                          child: Text("¿Ya tienes cuenta?"),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ],
    ));
  }

/* */

  /** 
   * ! asdasd
   * * asdasd
   * ? METHODS
   * ? EMAIL METHOD */

  Widget botonRegistro() {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text("Registrarse"),
        onPressed: () => signup(),
      ),
    );
  }

  TextFormField campoEmail() {
    return TextFormField(
      controller: emailCtrl,
      decoration: InputDecoration(
        //* BORDERS
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(width: 3, color: Colors.white)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(width: 3, color: Colors.white),
        ),
        labelText: "Correo Electronico/Email",
        labelStyle: TextStyle(color: Colors.white),
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }
  //*? PASSWORD METHOD

  TextFormField campoPassword() {
    return TextFormField(
      controller: passCtrl,
      obscureText: true,
      decoration: InputDecoration(
        //* BORDERS
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(width: 3, color: Colors.white)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(width: 3, color: Colors.white),
        ),
        labelText: 'Contraseña',
        labelStyle: TextStyle(color: Colors.white),
      ),
    );
  }

   TextFormField campoUser() {
    return TextFormField(
      controller: nomCtrl,  
      decoration: InputDecoration(
        //* BORDERS
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(width: 3, color: Colors.white)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(width: 3, color: Colors.white),
        ),
        labelText: 'Nombre',
        labelStyle: TextStyle(color: Colors.white),
      ),
    );
  }

  void signup() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailCtrl.text.trim(), password: passCtrl.text.trim());
      MaterialPageRoute route =
          MaterialPageRoute(builder: (context) => LoginTest());
      Navigator.pushReplacement(context, route);
      FirestoreService().addUser(emailCtrl.text.trim(), nomCtrl.text.trim());
    } on FirebaseAuthException catch (ex) {
      print("CODE: " +ex.code);
       switch (ex.code) {
        case 'email-already-in-use':
          errorText = 'Este email ya esta ocupado';
          break;
        case 'wrong-password':
          errorText = 'Contraseña Incorrecta';
          break;
        case 'user-disabled':
          errorText = 'Cuenta Desactivada';
          break;
        case 'invalid-email':
          errorText = 'Email Invalido';
          break;
        default:
          errorText = 'Error desconocido';
      }
      setState(() {});
    }
  }

  //*? APPBAR METHOD

  AppBar appbar_method() {
    return AppBar(
      elevation: 0,
      backgroundColor: Color(0xff1f1d2c),
      title: Text('Generic Name App (Enjoy)', style: TextStyle(fontSize: 20)),
      leading: Builder(
        builder: (BuildContext context) {
          return Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [Colors.purple, Colors.blue],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                )),
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 20,
              child: IconButton(
                padding: EdgeInsets.zero,
                icon: const Icon(
                  Icons.menu_rounded,

                  color: Colors.white,
                  size: 30, // Changing Drawer Icon Size
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              ),
            ),
          );
        },
      ),
    );
  }
}
