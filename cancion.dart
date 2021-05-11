class Cancion {
  String _nombre;
  int _anio;
  String _album;
  String _cantante;

  set nombre(String n) {
    this._nombre = n;
  }

  String get nombre {
    return _nombre;
  }

  set anio(int a) {
    this._anio = a;
  }

  int get anio {
    return _anio;
  }

  set album(String al) {
    this._album = al;
  }

  String get album {
    return _album;
  }

  set cantante(String c) {
    this._cantante = c;
  }

  String get cantante {
    return _cantante;
  }
}
