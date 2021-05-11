import 'package:flutter/material.dart';

class FotosPage extends StatelessWidget {
  const FotosPage({Key key}) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Pagina de fotos'),
        ),
      ),
    );
  }
}