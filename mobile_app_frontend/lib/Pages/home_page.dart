import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:mobile_app_frontend/Widgets/drawer_widget.dart';
import 'package:google_fonts/google_fonts.dart';


class HomePage extends StatefulWidget {
  //const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar_method(),
      
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
                child: Text('Share, Live, And Just Enjoy',style: 
                TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
              )
            ],
          )),
    );
  }
}
  AppBar appbar_method() {
    return AppBar(
      elevation: 0,
      backgroundColor: Color(0xff1f1d2c),
      title: Text('Generic Name App (Enjoy)',style:TextStyle(fontSize: 20)
      ),
      leading: Text(""),
      actions: [
        Builder(
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
      ],
    );
  }

