class Triangulo {
  double _altura;
  double _base;

  set base( double b ){
    this._base = b;
  }

  set altura( double a ){
    this._altura = a;
  }

  double get area{
    return (_base * _altura) / 2;
  }
}