import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:mobile_app_frontend/dam_2_client_WG/cars_page.dart';
import 'package:mobile_app_frontend/dam_2_client_WG/form_page.dart';

class HomePageDam2 extends StatefulWidget {
  //const HomePageDam2({super.key});

  @override
  State<HomePageDam2> createState() => _HomePageDam2State();
}

class _HomePageDam2State extends State<HomePageDam2> {
  int _currentIndex = 0;

  List<Widget> _pages = [
    CarsPage(),
    FormPage(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(MdiIcons.car2Plus),
        title: Text(
          "DAM020-CLIENTE",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Color(0xffde6161),
        bottom: PreferredSize(
            preferredSize: Size.zero,
            child: Text(
              "William Gutierrez",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            )),
        actions: [
          TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Acerca de"),
                        content: Text("Conoce un poco mas de nosotros!, \nRecuerda que al presionar sobre un auto en la pagina Autos puedes borrarlo!"),
                        actions: <Widget>[
                          TextButton(
                            child: Text("Ok"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    });
              },
              child: Icon(
                MdiIcons.information,
                color: Colors.white,
              )),
          TextButton(
              onPressed: () {},
              child: Icon(
                MdiIcons.exitToApp,
                color: Colors.white,
              )),
        ],
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: [
          
          BottomNavigationBarItem(
              
              icon: Icon(MdiIcons.carInfo,color: Colors.orange.shade700,),
              label: 'Autos',       
              backgroundColor: Colors.orange.shade700),
          BottomNavigationBarItem(
              icon: Icon(MdiIcons.accountBox,color:Colors.orange.shade700),
              label: 'Inicia Sesion',
              backgroundColor: Colors.orange.shade700)
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          print(index);
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
