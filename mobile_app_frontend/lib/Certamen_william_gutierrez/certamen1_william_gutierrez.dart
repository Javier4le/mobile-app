import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app_frontend/Certamen_william_gutierrez/contacto_page.dart';
import 'package:mobile_app_frontend/Certamen_william_gutierrez/servicio_turismo.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class C1HomePage extends StatefulWidget {
  C1HomePage({Key? key}) : super(key: key);

  @override
  State<C1HomePage> createState() => _C1HomePageState();
}

class _C1HomePageState extends State<C1HomePage> {
  int _currentIndex = 0;
  List<Widget> _pages = [ServicioTurismoPage(), ContactPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          MdiIcons.rvTruck,
          color: Colors.black,
        ),
        title: Text('C1 DAM020-2022-2”',
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold))),
        bottom: PreferredSize(
          preferredSize: Size.zero,
          child: Text('William Gutierrez',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold))),
        ),
      ),
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
                icon: Icon(MdiIcons.offer),
                label: 'Services',
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(MdiIcons.email),
                label: 'Contact',
                backgroundColor: Colors.black),
          ],
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
      body: _pages[_currentIndex],
    );
  }
}
