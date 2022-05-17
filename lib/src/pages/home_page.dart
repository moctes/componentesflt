import 'package:flutter/material.dart';

import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:componentes/src/pages/alert_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        print(snapshot);
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }
}

List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
  final List<Widget> opciones = [];

  if (data == null) {
    return [];
  }

  data.forEach((element) {
    final widgetTemp = ListTile(
      title: Text(element['texto']),
      leading: getIcon(element['icon']),
      trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
      onTap: () {
        // final route = MaterialPageRoute(
        //     builder: (context) => AlertPage()); //element[ruta]
        // Navigator.push(context, route);

        Navigator.pushNamed(context, element['ruta']);
      },
    );
    opciones
      ..add(widgetTemp)
      ..add(Divider(
        height: 20.0,
      ));
  });
  return opciones;
}
