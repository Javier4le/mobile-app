import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:mobile_app_frontend/certamen1_joaquin_mogollon_302/contacto.dart';
import 'package:mobile_app_frontend/certamen1_joaquin_mogollon_302/drawe/drawer_certamen.dart';

class Certamen1_joaquin_mogollon extends StatefulWidget {
  Certamen1_joaquin_mogollon({Key? key}) : super(key: key);

  @override
  State<Certamen1_joaquin_mogollon> createState() =>
      _Certamen1_joaquin_mogollonState();
}

class _Certamen1_joaquin_mogollonState
    extends State<Certamen1_joaquin_mogollon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          'C1 DAM020-2022-2',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
        leading: Builder(
          builder: (BuildContext context) {
            return Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Colors.orange, Colors.purple],
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
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                ),
              ),
            );
          },
        ),
        titleTextStyle: TextStyle(color: Colors.green[800], fontSize: 30),
      ),
      backgroundColor: Colors.purple[400],
      extendBodyBehindAppBar: true,
      drawer: drawer_widget_certamen(),
      body: Container(
        child: ListView(
          children: [
            Center(
              child: Text(
                'Joquin Mogollon',
              ),
            ),
            Divider(
              thickness: 10,
              color: Colors.orange,
            ),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  image: DecorationImage(
                      image: AssetImage('assets/images/Desierto_Florido.jpg'))),
            ),
            Divider(
              thickness: 10,
              color: Colors.orange,
            ),
            Text(
                'El desierto de Atacama es el lugar no polar más árido de la Tierra. Se extiende por el Norte Grande de Chile y por algunas partes del Norte chico de Chile, abarcando las regiones de Arica y Parinacota, Tarapacá, Antofagasta, Atacama y el norte de la de Coquimbo; cubre una superficie aproximada de 105 000 km². Tiene una longitud de casi 1600 km y un ancho máximo de 180 km.10 Está delimitado por el océano Pacífico al oeste y por la cordillera de los Andes al este.')
          ],
        ),

        // Text('Joaquin Mogollon')
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
        default:
          return Certamen1_joaquin_mogollon();
      }
    });
    Navigator.push(context, route);
  }
}
