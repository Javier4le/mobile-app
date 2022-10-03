import 'package:flutter/material.dart';
import 'package:mobile_app_frontend/Screen1/images_screen.dart';
import 'package:mobile_app_frontend/Screen1/list_screen.dart';
import 'package:mobile_app_frontend/Screen1/tab_book_screen.dart';
import 'package:mobile_app_frontend/Screen1/tab_contact_screen.dart';
import 'package:mobile_app_frontend/Screen1/tab_home_screen.dart';


class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Screen'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Text(
          'Body Drawer',
          style: TextStyle(fontSize: 40, color: Colors.redAccent),
        ),
      ),
      endDrawer: Drawer(
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
                            image: AssetImage('assets/images/user.png'))),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('User Name',
                        style:
                            TextStyle(fontSize: 16, color: Colors.redAccent)),
                  )
                ],
              ),
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(
                Icons.home_filled,
                color: Color.fromARGB(255, 255, 0, 0),
              ),
              onTap: () {},
            ),
            Divider(
              thickness: 2,
              color: Colors.redAccent,
            ),
            ListTile(
              title: Text('Book'),
              leading: Icon(
                Icons.flight,
                color: Color.fromARGB(255, 255, 0, 0),
              ),
              onTap: () {},
            ),
            Divider(
              thickness: 2,
              color: Colors.redAccent,
            ),
            ListTile(
              title: Text('Services'),
              leading: Icon(
                Icons.help_center,
                color: Color.fromARGB(255, 255, 0, 0),
              ),
              onTap: () {},
            ),
            Divider(
              thickness: 2,
              color: Colors.redAccent,
            ),
            ListTile(
              title: Text('Contact'),
              leading: Icon(
                Icons.contact_mail,
                color: Color.fromARGB(255, 255, 0, 0),
              ),
              onTap: () {},
            ),
            Divider(
              thickness: 2,
              color: Colors.redAccent,
            ),
            ListTile(
              title: Text('Images'),
              leading: Icon(
                Icons.image_search_rounded,
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

  void _DrawerNavigator(BuildContext context, int page) {
    List<Widget> pages = [
      TabHomeScreen(),
      TabBookScreen(),
      TabContactScreen(),
      ListScreen(),
      ImagesScreen(),
    ];

    final route = MaterialPageRoute(builder: (context) {
      return pages[page - 1];
    });
    Navigator.push(context, route);
  }
}
