import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CardPage extends StatelessWidget {
  //const CardPage ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Titulo de la tarjeta'),
            subtitle: Text(
                'Y este es el subtitulo de la tarjeta que estamos proporcionando solo para fines ilustrativos'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(child: Text('Cancelar'), onPressed: () {}),
              TextButton(child: Text('Ok'), onPressed: () {})
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final tarjeta = Container(
      // clipBehavior: Clip.antiAlias,
      child: Column(
        //children: <Widget>[Image.network('https://picsum.photos/250?image=9')],
        children: <Widget>[
          FadeInImage(
              image:
                  NetworkImage('https://source.unsplash.com/random/1024x768'),
              placeholder: AssetImage('assets/jarloading.gif'),
              fadeInDuration: Duration(milliseconds: 400),
              height: 500.00,
              fit: BoxFit.cover
              // placeholder: Image( rootBundle.load('assets/jar-loading.gif')), image: image)
              ),
          // Image(image: NetworkImage('https://source.unsplash.com/random')),
          Container(padding: EdgeInsets.all(10.0), child: Text('Pie de imagen'))
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
          color: Colors.white60,
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 6.0,
                spreadRadius: 2.0,
                offset: Offset(2, 6))
          ]
          //color: Colors.blueAccent,
          ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: tarjeta,
      ),
    );
  }
}
