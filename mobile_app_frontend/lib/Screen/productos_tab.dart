  import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ProductosTab extends StatelessWidget {
  //const ProductosTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: Icon(MdiIcons.toyBrickOutline,color: Colors.deepOrange,),
            title: Text('Millennium Falcon'),
            subtitle: Text('Star Wars'),
            trailing: Text("\$ 990.000", style: TextStyle(fontWeight: FontWeight.bold)),
            
          ),
          Divider(
            color: Colors.amber,
          ),
            ListTile(
            leading: Icon(MdiIcons.toyBrickOutline,color: Colors.deepOrange),
            title: Text('Cañonera de la República'),
            subtitle: Text('Star Wars'),
            trailing: Text("\$ 529.000", style: TextStyle(fontWeight: FontWeight.bold)),
            
          ),
          Divider(
            color: Colors.amber,
          ),
            ListTile(
            leading: Icon(MdiIcons.toyBrickOutline,color: Colors.deepOrange),
            title: Text('Razor Cresst'),
            subtitle: Text('Star Wars'),
            trailing: Text("\$ 199.000", style: TextStyle(fontWeight: FontWeight.bold)),
            
          ),
            Divider(
            color: Colors.amber
          ),
            ListTile(
            leading: Icon(MdiIcons.toyBrickOutline,color: Colors.deepOrange),
            title: Text('Nuevo Asgard'),
            subtitle: Text('Avengers'),
            trailing: Text("\$ 54.990", style: TextStyle(fontWeight: FontWeight.bold)),
            
          ),
          Divider(
            color: Colors.amber,
          ),
            ListTile(
            leading: Icon(MdiIcons.toyBrickOutline,color: Colors.deepOrange),
            title: Text('Ironman vs Thanos'),
            subtitle: Text('Avengers'),
            trailing: Text("\$ 27.990", style: TextStyle(fontWeight: FontWeight.bold)),
            
          ),
          Divider(
            color: Colors.amber,
          ),
            ListTile(
            leading: Icon(MdiIcons.toyBrickOutline,color: Colors.deepOrange),
            title: Text('Batalla en el puente de  Spiderman'),
            subtitle: Text('Avengers'),
            trailing: Text("\$ 55.990", style: TextStyle(fontWeight: FontWeight.bold)),
            
          ),
          Divider(
            color: Colors.amber,
          ),
        ],
      ),

    );
  }
}