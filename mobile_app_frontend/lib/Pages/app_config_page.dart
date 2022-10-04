import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AppOptionsPage extends StatefulWidget {
  //const AppOptionsPage({super.key});

  @override
  State<AppOptionsPage> createState() => _AppOptionsPageState();
}

class _AppOptionsPageState extends State<AppOptionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'Generic Options for App ',
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.keyboard_arrow_left,
                color: Colors.red,
                size: 44, // Changing Drawer Icon Size
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            );
          },
        ),
      ),
      body: Container(
        color: Color(0xff1f1d2c),
        child: Container(
          child: ListView(
            children: [
              ListTile(
                title: Text(
                  'Notifications Options',
                ),
                leading: Icon(
                  Icons.circle_notifications,
                  color: Color.fromARGB(255, 255, 0, 0),
                ),
                onTap: () {
                  //  _appnavigator(context, 'NotiOptions');
                },
              ),
              Divider(
                thickness: 2,
                color: Colors.redAccent,
              ),
              ListTile(
                title: Text(
                  'App Theme',
                ),
                leading: Icon(
                  MdiIcons.brush,
                  color: Color.fromARGB(255, 255, 0, 0),
                ),
                onTap: () {
                  //  _appnavigator(context, 'appTheme');
                },
              ),
              Divider(
                thickness: 2,
                color: Colors.redAccent,
              ),
              ListTile(
                title: Text(
                  'Invite Friends',
                ),
                leading: Icon(
                  Icons.people,
                  color: Color.fromARGB(255, 255, 0, 0),
                ),
                onTap: () {
                  //  _appnavigator(context, 'InviteF');
                },
              ),
              Divider(
                thickness: 2,
                color: Colors.redAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /* void _appnavigator(BuildContext context, String screen) {
    final route = MaterialPageRoute(builder: (context) {
      switch (screen) {
        case 'NotiOptions':
          return NotificationsOpPage();
        case 'appTheme':
          return appThemePage();
        case 'InviteF':
          return InviteFriendsPage();
        //case 'Certamen'
        //return Certamen1(nombre_alumno)();
        default:
          return AppOptionsPage();
      }
    });
    Navigator.push(context, route);
  }*/
}
