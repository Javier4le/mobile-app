import 'package:flutter/material.dart';
import 'package:mobile_app_frontend/certamen1_javier_rojas_302/contact_screen.dart';
import 'package:mobile_app_frontend/certamen1_javier_rojas_302/services_screen.dart';

class Home extends StatefulWidget {
  // const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  List<Widget> _pages = [
    ServicesScreen(),
    ContactScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF23a892),
        title: Text('C1 DAM020-2022-2',
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
        bottom: PreferredSize(
            child: Text(
              "Javier Rojas",
              style: TextStyle(fontSize: 16),
            ),
            preferredSize: Size.zero),
      ),
      /*



      */
      body: _pages[_currentIndex],

      /*   Center(
        child: Text('Bootm Nav Screen'),

      ), */
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFF23a892),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), label: 'Services'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.contact_mail,
              ),
              label: 'Contact'),
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
