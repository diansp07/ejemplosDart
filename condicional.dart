void main(List<String> args) {
  int nume = 0;

  if (nume > 0) {
    print('el numero $nume es positivo');
  } else if (nume < 0) {
    print('el numero $nume es negativo');
  } else {
    print('el numero es 0');
  }
  var calificacion = 'a';

  switch (calificacion) {
    case 'AU':
      print('Autonomo');
      break;
    case 'DE':
      print('Destacable');
      break;
    case 'SA':
      print('satisfactorio');
      break;
    case 'NA':
      print('NO aprobatorio');
      break;
    default:
      print('opcion no valida');
      break;
  }
  /*
  Map<int, String> alumnos = {1: 'Juan', 2: 'Andres', 3: 'Maria', 4: 'Adriana'};
//para agregar un nuevo valor
  alumnos.addAll({10: 'Yuki', 20: 'pedro'});
  //
  //para modificar un valor
  alumnos.update(1, (aluumno) => 'eveline');
  //para eliminar yn valor
  alumnos.remove(10);
  alumnos.removeWhere((key, alumno) => alumno == 'Maria');
  //para poder hacer recorrido del mapa
  alumnos.forEach((key, alumno) {
    print('$key : $alumno');
  });
  print('numero de elementos: ${alumnos.length}');
  //borrar contenido de MAP
  alumnos.clear();
  print(alumnos);*/
}
