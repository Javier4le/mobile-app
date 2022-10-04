import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ServicioTurismoPage extends StatefulWidget {
  ServicioTurismoPage({Key? key}) : super(key: key);

  @override
  State<ServicioTurismoPage> createState() => _ServicioTurismoPageState();
}

class _ServicioTurismoPageState extends State<ServicioTurismoPage> {
  @override
  int _counter = 0;
  int _counter2 = 0;
  int _counter3 = 0;
  int _counter4 = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Color(0xffde6161), Color(0xff2657eb)]),
        ),
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  height: 70,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(
                    'Servicios que Ofrecemos:',
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                ),
                Divider(
                  color: Colors.black,
                  thickness: 2,
                ),
                Container(
                  alignment: Alignment.topCenter,
                  height: 500,
                  width: 410,
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          'Tours y Traslados',
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      ),
                      Container(
                        height: 400,
                        child: TextButton(
                          onPressed: () => showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              backgroundColor: Color(0xff1f1d2c),
                              title: const Text('Alert'),
                              content: const Text('Pagina en construccion'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'OK'),
                                  child: const Text('OK'),
                                ),
                              ],
                            ),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/tours.jpg'))),
                          ),
                        ),
                      ),
                      Container(
                          child: Row(
                        children: [
                          Container(
                            child: Text(
                              'Los mejores tours y viajes de Atacama',
                              style:
                                  TextStyle(fontSize: 17, color: Colors.black),
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                TextButton(
                                    onPressed: _incrementCounter,
                                    child: Icon(
                                      MdiIcons.star,
                                      size: 35,
                                      color: ((_counter < 10
                                          ? Colors.red
                                          : Colors.yellow)),
                                    )),
                                Text(
                                  '$_counter',
                                  style: TextStyle(fontSize: 15),
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                  thickness: 2,
                ),
                Container(
                  alignment: Alignment.topCenter,
                  height: 500,
                  width: 400,
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          'Ascensos a Volcanes',
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      ),
                      Container(
                        height: 400,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/cerro_toro.jpg'))),
                      ),
                      Container(
                          child: Row(
                        children: [
                          Container(
                            child: Text(
                              'No te pierdas la increible Vista!',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                TextButton(
                                    onPressed: _incrementCounter2,
                                    child: Icon(
                                      MdiIcons.star,
                                      size: 35,
                                      color: ((_counter2 < 10
                                          ? Colors.red
                                          : Colors.yellow)),
                                    )),
                                Text('$_counter2')
                              ],
                            ),
                          ),
                        ],
                      ))
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                  thickness: 2,
                ),
                Container(
                  alignment: Alignment.topCenter,
                  height: 500,
                  width: 400,
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          'Trekkings',
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      ),
                      Container(
                        height: 400,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/trekking.jpg'))),
                      ),
                      Container(
                          child: Row(
                        children: [
                          Container(
                            child: Text(
                              'Vamos a recorrer juntos el mundo!',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                TextButton(
                                    onPressed: _incrementCounter3,
                                    child: Icon(
                                      MdiIcons.star,
                                      size: 35,
                                      color: ((_counter3 < 10
                                          ? Colors.red
                                          : Colors.yellow)),
                                    )),
                                Text('$_counter3')
                              ],
                            ),
                          ),
                        ],
                      ))
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                  thickness: 2,
                ),
                Container(
                  alignment: Alignment.topCenter,
                  height: 500,
                  width: 400,
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          'Alojamiento',
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      ),
                      Container(
                        height: 400,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/alojamiento.jpg'))),
                      ),
                      Container(
                          child: Row(
                        children: [
                          Container(
                            child: Text(
                              'Busca Tu programa de alojamiento!',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                TextButton(
                                    onPressed: _incrementCounter4,
                                    child: Icon(
                                      MdiIcons.star,
                                      size: 35,
                                      color: ((_counter4 < 10
                                          ? Colors.red
                                          : Colors.yellow)),
                                    )),
                                Text('$_counter4')
                              ],
                            ),
                          ),
                        ],
                      ))
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _incrementCounter2() {
    setState(() {
      _counter2++;
    });
  }

  void _incrementCounter3() {
    setState(() {
      _counter3++;
    });
  }

  void _incrementCounter4() {
    setState(() {
      _counter4++;
    });
  }
}
