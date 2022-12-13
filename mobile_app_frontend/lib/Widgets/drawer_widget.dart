import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:mobile_app_frontend/Pages/app_config_page.dart';
import 'package:mobile_app_frontend/Pages/home_page.dart';
import 'package:mobile_app_frontend/Pages/login_page.dart';
import 'package:mobile_app_frontend/Pages/profile_options.dart';
import 'package:mobile_app_frontend/Pages/profile_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app_frontend/Test%20Folder/login_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Drawer_widget extends StatelessWidget {
  const Drawer_widget({
    Key? key,
  }) : super(key: key);

  @override

  

  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        backgroundColor: Color(0xff1f1d2c),
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  Container(
                    height: 90,
                    width: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/user.png'))),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: FutureBuilder(
                      future: this.getUserEmail(),
                       builder: (context, AsyncSnapshot snapshot) {
                  if (!snapshot.hasData ||
                      snapshot.connectionState == ConnectionState.waiting) {
                    return Text("Cargando");
                  }
                  return Text("Bienvenido "+
                    snapshot.data,
                    style: TextStyle(fontSize: 16),
                  );
                }

                    )
                  )
                ],
              ),
            ),
            ListTile(
              title: Text(
                'Profile',
              ),
              leading: Icon(
                MdiIcons.account,
                color: Color.fromARGB(255, 255, 0, 0),
              ),
              onTap: () {
                _navigate(context, 'Profile');
              },
            ),
            // Divider(
            //   thickness: 2,
            //   color: Colors.redAccent,
            // ),
            // ListTile(
            //   title: Text('Profile Options'),
            //   leading: Icon(
            //     MdiIcons.accountCog,
            //     color: Color.fromARGB(255, 255, 0, 0),
            //   ),
            //   onTap: () {
            //     _navigate(context, 'POptions');
            //   },
            // ),
            Divider(
              thickness: 2,
              color: Colors.redAccent,
            ),
            ListTile(
              title: Text('App Config'),
              leading: Icon(
                Icons.settings,
                color: Color.fromARGB(255, 255, 0, 0),
              ),
              onTap: () {
                _navigate(context, 'AppOptions');
              },
            ),
            Divider(
              thickness: 2,
              color: Colors.redAccent,
            ),
            ListTile(
              title: Text('Log Out'),
              leading: Icon(
                MdiIcons.logoutVariant,
                color: Color.fromARGB(255, 255, 0, 0),
              ),
              onTap: () => logout(context),
            ),
            Divider(
              thickness: 2,
              color: Colors.redAccent,
            ),
            ListTile(
              title: Text('Close'),
              leading: Icon(
                Icons.close,
                color: Color.fromARGB(255, 255, 0, 0),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2,
              color: Colors.redAccent,
            ),
          ],
        ),
      ),
    );
  }

  void logout(BuildContext context) async {
    // Cerrar la sesion en firebase
    await FirebaseAuth.instance.signOut();

    // Borrar user Email de shared preferences
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.remove('userEmail');

    // redirigir al login
    MaterialPageRoute route =
        MaterialPageRoute(builder: ((context) => LoginTest()));
    Navigator.pushReplacement(context, route);
  }
  Future<String> getUserEmail() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.getString('userEmail') ?? '';
  }

  void _navigate(BuildContext context, String screen) {
    final route = MaterialPageRoute(builder: (context) {
      switch (screen) {
        case 'Profile':
          return ProfilePage();
        // case 'POptions':
        //   return ProfileOptionsPage();
        case 'AppOptions':
          return AppOptionsPage();
        default:
          return HomePage();
      }
    });
    Navigator.push(context, route);
  }
}
