import 'package:flutter/material.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:mobile_app_frontend/Pages/home_page.dart';
import 'package:mobile_app_frontend/certamen1_joaquin_mogollon_302/certamen1_joaquin_mogollon_302.dart';
import 'package:mobile_app_frontend/certamen1_joaquin_mogollon_302/contacto.dart';

class drawer_widget_certamen extends StatelessWidget {
  const drawer_widget_certamen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 236, 167, 17),
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Opciones',
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
          ),
          ListTile(
            title: Text(
              'Contacto',
            ),
            leading: Icon(
              MdiIcons.account,
              color: Color.fromARGB(255, 255, 0, 0),
            ),
            onTap: () {
              _navigate(context, 'Contacto');
            },
          ),
          Divider(
            thickness: 2,
            color: Colors.redAccent,
          ),
          ListTile(
            title: Text('HomePage'),
            leading: Icon(
              MdiIcons.codeTags,
              color: Color.fromARGB(255, 255, 0, 0),
            ),
            onTap: () {
              _navigate(context, 'HomePage');
            },
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
    );
  }

  void _navigate(BuildContext context, String screen) {
    final route = MaterialPageRoute(builder: (context) {
      switch (screen) {
        case 'Contacto':
          return Contancto();
        // case 'POptions':
        //   return ProfileOptionsPage();
        /*case 'AppOptions':
          return AppOptionsPage();*/
        case 'HomePage':
          return HomePage();
        default:
          return Certamen1_joaquin_mogollon();
      }
    });
    Navigator.push(context, route);
  }
}
