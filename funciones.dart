import 'package:meta/meta.dart';

void main(List<String> args) {
  int numA = 25;
  int numB = 56;

  List lista = ['Rojo', 'Azul', 'Verde', 'Amarillo'];

  lista.forEach((item) {  //Funcion anónima
    print('Color: $item');
  });

  print(multiplicarNumeros(4, 5));

  sumarNumParametros(num1: 12, num2: multiplicarNumeros(4, 5));

  /*
  sumarNumeros();
  sumarNumParametros(numA, numB);
  sumarNumParametros(34, 22);


  print(mostrarMensaje());
  print(mostrarNumero());
  */
}

int multiplicarNumeros(int a, int b) => a * b; //Funcion FLecha

void sumarNumeros() {
  int a = 20;
  int b = 30;

  print('La suma es: ${a + b}');
}

void sumarNumParametros({int num1 = 15, int num2}) {
  num2 ??= 15;
  print('La suma es: ${num1+ num2}');
}

String mostrarMensaje() {
  return 'Hello World!!';
}

int mostrarNumero() {
  return 200;
}

