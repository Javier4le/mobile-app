import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final styleTextRow = new TextStyle(fontSize: 32);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('This is Our HomePage'),
          centerTitle: true,
          backgroundColor: Colors.redAccent[400],
          leading: Icon(Icons.cookie),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.blue[600],
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                Text('1Uno ', style: styleTextRow),
                Text('2Dos ', style: styleTextRow),
                Text('3Tres ', style: styleTextRow)
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.home,size:52, color: Colors.pink[300], 
                ),
                Icon(Icons.eco_outlined, size:52, color: Colors.green[900],
                ),
                Icon(Icons.thumb_up, size:52, color: Color.fromARGB(255, 33, 54, 243)
                ),
                Icon(Icons.account_box, size:52, color: Colors.purple,
                ),
                Icon(Icons.accessible,size:52, color: Colors.orange,
                ),
              ],

            )
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.cookie_outlined),
          onPressed: () {
            print('Se presiono el boton de galleta');
          },
        )
      );
  }
}
