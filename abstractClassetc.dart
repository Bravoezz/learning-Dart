class Persona {
  final String nombre;

  const Persona(this.nombre);

  void andar(int x, int y) {
    print('$nombre esta caminando la coordenada $x,$y');
  }
}

class Alien implements Persona {
  String get nombre => 'Alien';

  void andar(int x, int y) {
    print('El Alien se teletransporto a la coordenada $x,$y');
  }
}

void main() {
  final competidores = <Persona>[Persona('Josue'), Persona('Luis'), Alien()];

  print('${Alien().nombre}');

  for (var i = 0; i < competidores.length; i++) {
    competidores[i].andar(i, i);
  }
  // output >> Josue esta caminando la coordenada 0,0
  //           Luis esta caminando la coordenada 1,1
  //           El Alien se teletransporto a la coordenada 2,2
}
