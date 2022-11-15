import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ProfileOptionsPage extends StatefulWidget {
  //const ProfileOptionsPage({super.key});

  @override
  State<ProfileOptionsPage> createState() => _ProfileOptionsPageState();
}

class _ProfileOptionsPageState extends State<ProfileOptionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Generic Options for Profile '),
        backgroundColor: Colors.transparent,
        elevation: 0,
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
            )
          ],
        ),
      ),
    );
  }
}
