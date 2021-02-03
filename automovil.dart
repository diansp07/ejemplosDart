void main(List<String> args) {}

abstract class Vehiculo {
  String combustible;
  String tipoDesplazamiento;

void caracteristicas();
}

class Coche implements Vehiculo {
  @override
  String combustible;
  @override
  String tipoDesplazamiento;

  void caracteristicas(){
    
  }
}