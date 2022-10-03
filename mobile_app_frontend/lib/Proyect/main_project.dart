import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MainPage extends StatelessWidget {
  // const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                MdiIcons.abTesting,
                color: Colors.red,
                size: 44, // Changing Drawer Icon Size
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    // child: Image(image: AssetImage('assets/images/user.png')
                    // ),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/Flor.png'))),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Bienvenido! (username)',
                        style:
                            TextStyle(fontSize: 16, color: Colors.redAccent)),
                  )
                ],
              ),
            ),
            ListTile(
              title: Text('Perfil'),
              leading: Icon(
                MdiIcons.account,
                color: Color.fromARGB(255, 255, 0, 0),
              ),
              onTap: () {},
            ),
            Divider(
              thickness: 2,
              color: Colors.redAccent,
            ),
            ListTile(
              title: Text('Opciones de Perfil'),
              leading: Icon(
                MdiIcons.accountCog,
                color: Color.fromARGB(255, 255, 0, 0),
              ),
              onTap: () {},
            ),
            Divider(
              thickness: 2,
              color: Colors.redAccent,
            ),
            ListTile(
              title: Text('Cerrar Sesion'),
              leading: Icon(
                MdiIcons.logoutVariant,
                color: Color.fromARGB(255, 255, 0, 0),
              ),
              onTap: () {},
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
}
