import 'package:flutter/material.dart';



void main(){
  runApp(MyApp() );
}

var ms = [
  {'text': "Plátanos"},
  {'text': 23},
  {'text': "Manzanas"},
  {'text': "False"}
];




class MyApp extends StatelessWidget {

  Container _fila( String cadena ){
    return Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(8),
        alignment: Alignment.topLeft,
        color: Colors.black12,
        child: Text(" > " + cadena)
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: Column(
            children: <Widget>[
              for(var m in ms) _fila(m["text"].toString())
            ],
          ),


      ),
    );
  }
}
