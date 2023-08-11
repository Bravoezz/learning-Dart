class Animal {
  final String nombre;
  
  Animal(this.nombre);
}

abstract class Volador {
  String get nombre;
  
  void volar() => print('$nombre: Esta volando!');
}

abstract class Nadador {
  String get nombre;
  
  void nadar() => print('$nombre: Esta nadando!');
}

class Aguila extends Animal with Volador {
  Aguila(): super('Aguila');
}

class Pato extends Animal with Nadador, Volador {
  Pato(): super('Pato');
}

void main() {
  final aguila = Aguila();
  final pato = Pato();
  
  aguila.volar();
  pato.nadar();
  pato.volar();
  
  // output >> Aguila: Esta volando!
  //           Pato: Esta nadando!
  //           Pato: Esta volando!
}