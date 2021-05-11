import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {

  String nombre;
  String apellido;
  String edad;
  String contrasena;
  String t = 'Llenar todos los campos';

  FocusNode nombreFocus;
  FocusNode apellidoFocus;
  FocusNode edadFocus;
  FocusNode contrasenaFocus;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Formulario -Diana Laura'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form( 
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text(
                    'GROUP EAGLES',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                      fontSize: 30,
                    ),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: 'ejemplo: Laura',
                      labelText: 'nombre',
                      prefixIcon: Icon(Icons.person)),
                  onSaved: (value) {
                    nombre = value;
                  },
                  // ignore: missing_return
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Los datos incorrectos no se han encontrado en la BD';
                    } else
                      return null;
                  },
                  focusNode: this.nombreFocus,
                  onEditingComplete: () => requestFocus(context, apellidoFocus),
                  textInputAction: TextInputAction.next,
                  // autofocus: true,
                  //  controller: nombreTextController,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'ejemplo: Santos',
                      labelText: 'apellido',
                      prefixIcon: Icon(Icons.person)),
                  onSaved: (value) {
                    apellido = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Los datos son incorrectos o no se han encontrado en la BD';
                    } else {
                      return null;
                    }
                  },
                  focusNode: this.apellidoFocus,
                  onEditingComplete: () => requestFocus(context, edadFocus),
                  textInputAction: TextInputAction.next,

                  
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'ejemplo: 31',
                      labelText: 'edad',
                      prefixIcon: Icon(Icons.calendar_today)),
                  onSaved: (value) {
                    edad = value;
                  },

                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Datos incorrectos';
                    } else
                      return null;
                  },
                  focusNode: this.edadFocus,

                  onEditingComplete: () => requestFocus(context, contrasenaFocus),
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: 10,
                ),
                
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: 'ejemplo: charlie23puth',
                      labelText: 'contraseña',
                      prefixIcon: Icon(Icons.content_paste_sharp)),
                  onSaved: (value) {
                    contrasena = value;
                  },
                  // ignore: missing_return
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Datos incorrectos';
                    } else
                      return null;
                  },
                  focusNode: this.contrasenaFocus,

                  
                ),
                SizedBox(
                  height: 10,
                ),
                
                Container(
                  child: Text(
                    'Todos los campos son necesarios',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  height: 50,
                  child: RaisedButton(
                    hoverColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    onPressed: () {
                      if (formKey.currentState.validate()) {
                        formKey.currentState.save();

                        if (nombre.compareTo('Diana Laura') == 0 &&
                            apellido.compareTo('Santos') == 0) {
                          Navigator.pushNamed(context, 'Formulario',
                              arguments: Argumentos(
                                  nombre: this.nombre,
                                  apellido: this.apellido,
                                  edad: this.edad,
                                  contrasena: this.contrasena));
                        } else if (nombre.compareTo('') == 0 &&
                            apellido.compareTo('') == 0) {
                          Text('xxxxxxx');
                        }
                      }
                    },
                    color: Colors.green,
                    textColor: Colors.black,
                    child: Text('ENVIAR'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void requestFocus(BuildContext context, FocusNode focusNode) {
    FocusScope.of(context).requestFocus(focusNode);
  }

  @override
  void initState() {
    super.initState();
    nombreFocus = FocusNode();
    apellidoFocus = FocusNode();
    edadFocus = FocusNode();
    contrasenaFocus = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    nombreFocus.dispose();
    apellidoFocus.dispose();
    edadFocus.dispose();
    contrasenaFocus.dispose();
  }
}

class Argumentos {
  String nombre;
  String apellido;
  String edad;
  String contrasena;

  Argumentos({this.nombre, this.apellido, this.edad, this.contrasena});
}