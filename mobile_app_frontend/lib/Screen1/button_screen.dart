import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class buttonscreen extends StatefulWidget {
  buttonscreen({Key? key}) : super(key: key);

  @override
  State<buttonscreen> createState() => _buttonscreenState();
}

class _buttonscreenState extends State<buttonscreen> {
  @override
  int _number = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateFulWidget'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        leading: Icon(
          MdiIcons.rabbit,
          size: 60,
          color: Colors.red,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              'Valor: $_number',
              style: TextStyle(fontSize: 40, color: Colors.lightGreen),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                child: Text('Aumentar'),
                onPressed: () {
                  _number += 1;
                  print('Aumentar number');
                  setState(() {});
                },
              ),
              OutlinedButton(
                child: Text('Disminuir'),
                onPressed: () {
                  _number--;
                  if (_number == 1350) {}
                  print('Disminuir number');
                  setState(() {});
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
