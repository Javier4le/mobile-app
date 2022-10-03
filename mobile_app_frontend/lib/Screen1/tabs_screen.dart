import 'package:flutter/material.dart';
import 'package:mobile_app_frontend/Screen1/images_screen.dart';
import 'package:mobile_app_frontend/Screen1/tab_book_screen.dart';
import 'package:mobile_app_frontend/Screen1/tab_contact_screen.dart';
import 'package:mobile_app_frontend/Screen1/tab_home_screen.dart';
import 'package:mobile_app_frontend/Screen1/tab_service_screen.dart';

class TabsScreen extends StatelessWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tabs Screen'),
            backgroundColor: Colors.teal,
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'Home',
                  icon: Icon(Icons.home_filled),
                ),
                Tab(
                  text: 'Book',
                  icon: Icon(Icons.flight),
                ),
                Tab(
                  text: 'Contact',
                  icon: Icon(Icons.contact_mail),
                ),
                Tab(
                  text: 'Services',
                  icon: Icon(Icons.help_center),
                ),
                Tab(
                  text: 'Images',
                  icon: Icon(Icons.image_search),
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              TabHomeScreen(),
              TabBookScreen(),
              TabContactScreen(),
              TabServiceScreen(),
              ImagesScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
