import 'package:flutter/material.dart';
import 'package:mobile_app_frontend/Screen1/images_screen.dart';
import 'package:mobile_app_frontend/Screen1/list_screen.dart';
import 'package:mobile_app_frontend/Screen1/tab_book_screen.dart';
import 'package:mobile_app_frontend/Screen1/tab_contact_screen.dart';
import 'package:mobile_app_frontend/Screen1/tab_home_screen.dart';

class BottomNavTab extends StatefulWidget {
  BottomNavTab({Key? key}) : super(key: key);

  @override
  State<BottomNavTab> createState() => _BottomNavTabState();
}

class _BottomNavTabState extends State<BottomNavTab> {
  int _currentIndex = 0;

  List<Widget> _pages = [
    TabHomeScreen(),
    TabBookScreen(),
    TabContactScreen(),
    ListScreen(),
    ImagesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bottom Tab aButtons')),
      body: _pages[_currentIndex],

      // Center(
      //   child: Text('Bottom Nav Buttons',
      //       style: TextStyle(fontSize: 40, color: Colors.redAccent.shade400)),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.orange.shade700),
          BottomNavigationBarItem(
              icon: Icon(Icons.flight),
              label: 'Book',
              backgroundColor: Colors.orange.shade700),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail),
              label: 'Contact',
              backgroundColor: Colors.orange.shade700),
          BottomNavigationBarItem(
              icon: Icon(Icons.help_center),
              label: 'Services',
              backgroundColor: Colors.orange.shade700),
          BottomNavigationBarItem(
              icon: Icon(Icons.image_search_sharp),
              label: 'Images',
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


//  Tab(
//                   text: 'Home',
//                   icon: Icon(Icons.home_filled),
//                 ),
//                 Tab(
//                   text: 'Book',
//                   icon: Icon(Icons.flight),
//                 ),
//                 Tab(
//                   text: 'Contact',
//                   icon: Icon(Icons.contact_mail),
//                 ),
//                 Tab(
//                   text: 'Services',
//                   icon: Icon(Icons.help_center),
//                 ),
//                 Tab(
//                   text: 'Images',
//                   icon: Icon(Icons.image_search),
//                 ),