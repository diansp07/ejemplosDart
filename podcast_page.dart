import 'package:flutter/material.dart';

class PodcastPage extends StatelessWidget {
  const PodcastPage({Key key}) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Pagina de Podcast'),
        ),
      ),
    );
  }
}