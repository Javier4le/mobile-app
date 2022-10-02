import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:mobile_app_frontend/Screen/contacto_tab.dart';
import 'package:mobile_app_frontend/Screen/productos_tab.dart';

class BottomNav extends StatefulWidget {
  BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;

  List<Widget> _pages = [ProductosTab(), ContactoTab()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade700,
        title: Text('Prueba 1 DAM020'),
        leading: Icon(MdiIcons.humanMaleBoard),
        bottom: PreferredSize(
        child: Text("William Gutierrez", style: TextStyle(fontSize: 15, color: Colors.white),),
        preferredSize: Size.zero),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.toyBrickOutline),
            label: 'Productos'),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.contacts),
            label: 'Contacto'
            )
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
