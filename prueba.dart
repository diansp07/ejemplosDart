import 'Perro.dart';
import 'dart:convert';

void main(List<String> arguments) {
  final dataJason =
      '{"nombre":"Luneta", "raza":"Chihuahua", "genero":"Hembra"}';
  Map parsedjason = json.decode(dataJason);

  final p = Perro();

  p.nombre = parsedjason['nombre'];
  p.raza = parsedjason['raza'];
  p.genero = parsedjason['genero'];

  print(p.datos);
}
