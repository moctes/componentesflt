import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        //children: _crearItems(),
        children: _crearItemsCorta(),
      ),
    );
  }

  List<Widget> _crearItems() {
//    List<Widget> lista = List.filled(0, null, growable: true);
    List<Widget> lista = [];
    for (var opt in opciones) {
      final tmpWidget = ListTile(
        title: Text(opt),
      );
      lista
        ..add(tmpWidget)
        ..add(Divider(
          height: 40,
          color: Colors.purple,
        ));
    }
    return lista;
  }

  List<Widget> _crearItemsCorta() {
    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
            subtitle: Text('Test'),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () => {},
            title: Text(item + '!'),
          ),
          Divider(
            height: 20,
            color: Colors.purple,
          )
        ],
      );
    }).toList();
  }
}
