
import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:list_view/models/gif_model.dart';

class ApiPage extends StatefulWidget {
  const ApiPage({Key key}) : super(key: key);
  @override 
  _ApiPageState createState() => _ApiPageState();
}

class _ApiPageState extends State<ApiPage> { 
  Future<List<Gif>> _listaGifs; 
  Future<List<Gif>> _obtenerGifs() async{
    List gifs = [];
    final respose = await http.get(Uri.parse('https://api.giphy.com/v1/gifs/trending?api_key=WyRXgPqtJsb1ftuV12zCucb8MdXaxqxF&limit=20&rating=g'));

    if(respose.statusCode == 200){
      String body = utf8.decode(respose.bodyBytes);
      final jsonData = jsonDecode(body);
      for (var item in jsonData['results']) {
        users.add(User(
          name:item['name']
        ))

      }
      
      //print(jsonData['data'][0]['title']);
    }
    else{
      throw Exception('Fallo la llamada a la API');
    }

    return gifs;
  }

  @override 
  void initState(){
    super.initState();

    _listaGifs = _obtenerGifs();
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LLamada a API'),
      ),
      body:Center(
        child: Text('API call'), 
      )
    );
  }
}
