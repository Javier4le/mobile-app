import 'package:flutter/material.dart';
import 'package:mobile_app_frontend/Screen1/faq_screen.dart';
import 'package:mobile_app_frontend/Screen1/files_screen.dart';
import 'package:mobile_app_frontend/Screen1/settings_screen.dart';
import 'package:mobile_app_frontend/Screen1/users_screen.dart';

class ListScreen extends StatelessWidget {
  ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List'),
        leading: Icon(Icons.list),
      ),
      body: ListView(
        children: [
          ListTile(
            //Files
            leading: Icon(
              Icons.file_download,
              color: Colors.deepPurple,
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('File'),
            subtitle: Text('flutters proyect files'),
            onTap: () {
              print('printing filess');

              /*final route = MaterialPageRoute(builder: (context) {
                return FilesScreen();
              });
              Navigator.push(context, route);*/

              _navigateTo(context, 'files');
            },
          ),
          Divider(
            thickness: 1.5,
            color: Colors.amber,
          ),
          ListTile(
            //Settings
            leading: Icon(
              Icons.settings,
              color: Colors.deepPurple,
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('Settings'),
            subtitle: Text('Flutter settings projects'),
            onTap: () {
              print('printing settings');

              /*final route = MaterialPageRoute(builder: (context) {
                return FilesScreen();
              });
              Navigator.push(context, route);*/

              _navigateTo(context, 'settings');
            },
          ),
          Divider(
            thickness: 1.5,
            color: Colors.amber,
          ),
          ListTile(
            //Users
            leading: Icon(
              Icons.people,
              color: Colors.deepPurple,
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('Users'),
            subtitle: Text('Flutter Users'),
            onTap: () {
              print('printing user');

              /*final route = MaterialPageRoute(builder: (context) {
                return FilesScreen();
              });
              Navigator.push(context, route);*/

              _navigateTo(context, 'users');
            },
          ),
          Divider(
            thickness: 1.5,
            color: Colors.amber,
          ),
          ListTile(
            //FAQ
            leading: Icon(
              Icons.question_answer,
              color: Colors.deepPurple,
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('FAQ'),
            subtitle: Text('Faq flutter projects'),
            onTap: () {
              print('printing faq');

              /*final route = MaterialPageRoute(builder: (context) {
                return FilesScreen();
              });
              Navigator.push(context, route);*/

            _navigateTo(context,'faq' );
            },
          ),
          Divider(
            thickness: 1.5,
            color: Colors.amber,
          ),
        ],
      ),
    );
  }

  //metido privado para reemplazar el codigo navigator.push por cada una de las listas
  void _navigateTo(BuildContext context, String screen) {
    final route = MaterialPageRoute(builder: (context) {
      switch (screen) {
        case 'files':
          return FilesScreen();
        case 'settings':
          return SettingsScreen();
        case 'users':
          return UsersScreen();
        case 'faq':
          return FaqScreen();
        default:
          return ListScreen();
      }
    });
    Navigator.push(context, route);
  }
}
