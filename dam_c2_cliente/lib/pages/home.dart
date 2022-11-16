import 'package:dam_c2_cliente/pages/cars_screen.dart';
import 'package:dam_c2_cliente/pages/login_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  // const Home([super.key]);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  List<Widget> _pages = [
    CarsScreen(),
    LoginScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 141, 0, 47),
        title: Text('C2 DAM020-CLIENTE',
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
        bottom: PreferredSize(
            child: Text(
              "Javier Rojas",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            preferredSize: Size.zero),
      ),
      body: _pages[_currentIndex],

      /*   Center(
        child: Text('Bootm Nav Screen'),
      ), */
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromARGB(255, 141, 0, 47),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.directions_car_rounded), label: 'Autos'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box_rounded), label: 'Login'),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          // print(index);
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
