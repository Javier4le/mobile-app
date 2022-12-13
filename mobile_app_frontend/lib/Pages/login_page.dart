import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:mobile_app_frontend/Widgets/drawer_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  // const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final emailRegex =
      (r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  bool EmailOk = false;
  bool PassEmpty = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(  
          height: double.infinity,
          width: double.infinity,     
          color: Color(0xff1f1d2c),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 200,
                  child: Image(image: AssetImage('assets/images/friends.jpg'))
                ),
                Container(
                  child: Text("TEST"),
                ),
                Container( 
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [campoEmail(), Divider(), campoPassword(),
                    Divider(),
                    Container(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: (){}, child: Text("Login")),
                    ),
                    TextButton(onPressed: (){}, child: Text("¿No tienes cuenta? Registrate"))                
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }

  /** 
   * ? METHODS
   * ? EMAIL METHOD */

  TextFormField campoEmail() {
    return TextFormField(
      decoration: InputDecoration(
          //* BORDERS
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(width: 3, color: Colors.white)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(width: 3, color: Colors.white),
          ),
          labelText: "Correo Electronico/ sEmail",
          labelStyle: TextStyle(color: Colors.white),
          ),
      keyboardType: TextInputType.emailAddress,
      autovalidateMode: AutovalidateMode.always,
      /*validator: (email) {
        if (email!.isEmpty) {
          EmailOk = false;
          return "Ingrese Email";
        }
        if (!RegExp(emailRegex).hasMatch(email)) {
          return "Formato de email no valido";
        } else {
          EmailOk = true;
        }
        return null;
      }*/
    );
  }
  //*? PASSWORD METHOD

  TextFormField campoPassword() {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (pass) {
        if (pass!.isEmpty) {
          PassEmpty = false;
          return "Ingrese contraseña";
        } else {
          PassEmpty = true;
        }
        return null;
      },
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
