class Perro {
  String _nombre;
  String _raza;
  String _genero;

  set nombre(String nombre) {
    _nombre = nombre;
  }

  set raza(String raza) {
    _raza = raza;
  }

  set genero(String genero) {
    _genero = genero;
  }

  String get datos {
    return 'Nombre: ${_nombre} Raza ${_raza} Género ${_genero}';
  }

  String get nombre {
    return _nombre;
  }

  String get raza {
    return _raza;
  }

  String get genero {
    return _genero;
  }
}
