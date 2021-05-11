import 'package:flutter/material.dart';

class BotonesPage extends StatefulWidget {
  BotonesPage({Key key}) : super(key: key);

  @override 
  _BotonesPageState createState() => _BotonesPageState();

}

class _BotonesPageState extends State<BotonesPage> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tipo de botones - DIANA LAURA'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 50.0,),
            Container(
              width: 250.0,
              height: 100.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                   style: BorderStyle.solid),
                   ),
                   // ignore: deprecated_member_use
                   child: RaisedButton(
                      color: Colors.red,
                      textColor: Colors.white,
                      onPressed: () {  },
                      child: Text('RaisedButton'),
                  ),
            ),
            SizedBox(
              height: 50.0,
            ),
             Container(
              width: 250.0,
              height: 100.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.pink,
                   style: BorderStyle.solid),
                   ),
                   // ignore: deprecated_member_use
                   child: RaisedButton(
                      color: Colors.yellow,
                      textColor: Colors.black,
                      onPressed: () {  },
                      child: Text('RaisedButton'),
                  ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              width: 250.0,
              height: 100.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                   style: BorderStyle.solid),
                   ),
                   // ignore: deprecated_member_use
                   child: IconButton(
                     icon: Icon(Icons.delete),
                     onPressed: () {  },
                     color: Colors.blue,
                     iconSize: 45.0,
                     )  
                    ),
                    SizedBox(height: 50.0,
                    ),
              Container(
              width: 250.0,
              height: 50.0,
              /*
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.pink,
                   style: BorderStyle.solid),
                   ),*/
                   // ignore: deprecated_member_use
                   child: OutlineButton(
                      textColor: Colors.black,
                      color: Colors.orange,
                      child: Text('OutlineButton'),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                      borderSide: BorderSide(color: Colors.orangeAccent),
                      onPressed: () {},
                  ),
            ), 
          SizedBox(
            height: 50.0,
          ),  
          Container(
            child: Text('Presionaste el boton: ')
          ) 
          ],) ,),
    );
  }
}