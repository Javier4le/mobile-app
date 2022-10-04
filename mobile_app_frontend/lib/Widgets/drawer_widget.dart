import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:mobile_app_frontend/Pages/app_config_page.dart';
import 'package:mobile_app_frontend/Pages/home_page.dart';
import 'package:mobile_app_frontend/Pages/profile_options.dart';
import 'package:mobile_app_frontend/Pages/profile_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app_frontend/certamen1_javier_rojas_302/contact_screen.dart';
import 'package:mobile_app_frontend/certamen1_javier_rojas_302/home.dart';

class Drawer_widget extends StatelessWidget {
  const Drawer_widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                  child: Text(
                    'Bienvenido! (username)',
                    style: TextStyle(fontSize: 20),
                  ),
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
            onTap: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                backgroundColor: Color(0xff1f1d2c),
                title: const Text('Log Out'),
                content: const Text('Do you want to log out?'),
                actions: <Widget>[
                  TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel')),
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  ),
                ],
              ),
            ),
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
          ListTile(
            title: Text('Certamen'),
            leading: Icon(
              MdiIcons.codeTags,
              color: Color.fromARGB(255, 255, 0, 0),
            ),
            onTap: () {
              _navigate(context, 'Certamen');
            },
          ),
          Divider(
            thickness: 2,
            color: Colors.redAccent,
          ),
        ],
      ),
    );
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
        case 'Certamen':
          return Home();
        default:
          return HomePage();
      }
    });
    Navigator.push(context, route);
  }
}
