import 'package:flutter/material.dart';

class LugaresPage extends StatelessWidget {
  const LugaresPage({Key key}) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Pagina de lugares'),
        ),
      ),
    );
  }
}