import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:mobile_app_frontend/Widgets/drawer_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  // const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Generic Name App (Enjoy)', style: TextStyle(fontSize: 20)),
        leading: Builder(
          builder: (BuildContext context) {
            return Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Colors.purple, Colors.blue],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  )),
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 20,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  icon: const Icon(
                    Icons.menu_rounded,

                    color: Colors.white,
                    size: 30, // Changing Drawer Icon Size
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                ),
              ),
            );
          },
        ),
      ),
      extendBodyBehindAppBar: true,
      drawer: Drawer_widget(),
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
                  alignment: Alignment.center,
                  height: 250,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 400,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/friends.jpg'))),
                        ),
                      ),
                    ],
                  )),
              Container(
                height: 50,
                width: 350,
                alignment: Alignment.center,
                child: Text(
                  'Share, Live, And Just Enjoy',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              )
            ],
          )),
    );
  }
}
