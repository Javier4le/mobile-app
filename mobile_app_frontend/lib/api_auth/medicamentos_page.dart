import 'package:flutter/material.dart';

class MedicamentosPage extends StatefulWidget {
  MedicamentosPage({Key? key}) : super(key: key);

  @override
  State<MedicamentosPage> createState() => _MedicamentosPageState();
}

class _MedicamentosPageState extends State<MedicamentosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medicamentos'),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
