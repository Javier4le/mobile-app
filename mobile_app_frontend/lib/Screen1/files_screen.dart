import 'package:flutter/material.dart';

class FilesScreen extends StatelessWidget {
  const FilesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Files screen'),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Icon(Icons.file_download),
          )
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Text('Files Screen test'),
          ),
          OutlineButton(
            child: Text('Volver'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
