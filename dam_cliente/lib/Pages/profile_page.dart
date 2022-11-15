import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:mobile_app_frontend/Pages/profile_options.dart';

class ProfilePage extends StatelessWidget {
  //const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Generic Profile '),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
                  padding: EdgeInsets.zero,
                  icon: const Icon(
                    MdiIcons.accountCog,

                    color: Colors.red,
                    size: 30, // Changing Drawer Icon Size
                  ),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => ProfileOptionsPage()),);
                  },
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                ),
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.keyboard_arrow_left,
                color: Colors.red,
                size: 44, // Changing Drawer Icon Size
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            );
          },
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xff1f1d2c),
        child: Column(
          children: [
            Container(
              color: Colors.transparent,
              width: double.infinity,
              height: 90,
            ),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/user.png'))),
            ),
            Divider(
              color: Colors.red,
              thickness: 2,
            ),
            Container(
              width: double.infinity,
              height: 50,
              alignment: Alignment.centerLeft,
              child: Text(
                ' Username: ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              color: Colors.red,
              thickness: 2,
            ),
            Container(
              width: double.infinity,
              height: 50,
              alignment: Alignment.centerLeft,
              child: Text(
                ' Email: ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              color: Colors.red,
              thickness: 2,
            ),
            Container(
              width: double.infinity,
              height: 50,
              alignment: Alignment.centerLeft,
              child: Text(
                ' Name: ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              color: Colors.red,
              thickness: 2,
            ),
            Container(
              width: double.infinity,
              height: 50,
              alignment: Alignment.centerLeft,
              child: Text(
                ' Born Date: ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              color: Colors.red,
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }
}
