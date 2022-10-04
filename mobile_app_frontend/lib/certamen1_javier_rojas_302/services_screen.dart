import 'package:flutter/material.dart';

class ServicesScreen extends StatelessWidget {
  // const ServicesScreen({super.key});

  ServicesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          //Files
          leading: Icon(
            Icons.star_rounded,
            color: Colors.yellowAccent,
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
          title: Text('Playa Bahía Inglesa',
              style: TextStyle(fontSize: 16, color: Colors.black)),
          subtitle: Text('Atacama', style: TextStyle(color: Colors.black)),
          onTap: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              title: const Text('Playa Bahía Inglesa',
                  style: TextStyle(fontSize: 16, color: Colors.black)),
              // content with image top
              content: Container(
                height: 200,
                child: Column(
                  children: [
                    Image.asset('assets/images/PlayaBahiaInglesa.jpeg'),
                    Text('Playa', style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
              actions: <Widget>[
                Center(
                  child: TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(
          thickness: 1.5,
          color: Colors.grey[400],
        ),
        ListTile(
          //Settings
          leading: Icon(
            Icons.star_rounded,
            color: Colors.yellowAccent,
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
          title: Text('Parque Nacional Nevado Tres Cruces',
              style: TextStyle(fontSize: 16, color: Colors.black)),
          subtitle: Text('Atacama', style: TextStyle(color: Colors.black)),
          onTap: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              title: const Text('Parque Nacional Nevado Tres Cruces',
                  style: TextStyle(fontSize: 16, color: Colors.black)),
              // content with image top
              content: Container(
                height: 200,
                child: Column(
                  children: [
                    Image.asset(
                        'assets/images/ParqueNacionalNevadoTresCruces.jpeg'),
                    Text('Lagunas, flamencos y salar de Maricunga',
                        style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
              actions: <Widget>[
                Center(
                  child: TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(
          thickness: 1.5,
          color: Colors.grey[400],
        ),
        ListTile(
          //Users
          leading: Icon(
            Icons.star_rounded,
            color: Colors.yellowAccent,
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
          title: Text('Parque Nacional Llanos de Challe',
              style: TextStyle(fontSize: 16, color: Colors.black)),
          subtitle: Text('Atacama', style: TextStyle(color: Colors.black)),
          onTap: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              title: const Text('Parque Nacional Llanos de Challe',
                  style: TextStyle(fontSize: 16, color: Colors.black)),
              // content with image top
              content: Container(
                height: 200,
                child: Column(
                  children: [
                    Image.asset(
                        'assets/images/ParqueNacionalLlanosDeChalle.jpeg'),
                    Text(
                      'Guanacos y flora única en zona desértica',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              actions: <Widget>[
                Center(
                  child: TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(
          thickness: 1.5,
          color: Colors.grey[400],
        ),
        ListTile(
          //FAQ
          leading: Icon(
            Icons.star_rounded,
            color: Colors.yellowAccent,
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
          title: Text('Laguna Verde,',
              style: TextStyle(fontSize: 16, color: Colors.black)),
          subtitle: Text('Atacama', style: TextStyle(color: Colors.black)),
          onTap: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              title: const Text('Laguna Verde',
                  style: TextStyle(fontSize: 16, color: Colors.black)),
              // content with image top
              content: SingleChildScrollView(
                child: Container(
                  height: 200,
                  child: Column(
                    children: [
                      Image.asset('assets/images/LagunaVerde.jpeg'),
                      Text('Increíble lago esmeralda en las montañas',
                          style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
              ),
              actions: <Widget>[
                Center(
                  child: TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(
          thickness: 1.5,
          color: Colors.grey[400],
        ),
      ],
    );
  }
}
