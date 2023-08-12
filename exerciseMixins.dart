abstract class Animal {
  String? isAlive;

  String estaVivo() {
    return 'Esta $isAlive';
  }

  String queToma();
}

abstract class Mamifero extends Animal {
  @override
  String queToma() {
    return 'leche';
  }
}

abstract class Ave extends Animal {
  @override
  String queToma() {
    return 'aire';
  }
}

abstract class Pez extends Animal {
  @override
  String queToma() {
    return 'agua';
  }
}

abstract class Volador {
  void volar() => print('esta volando');
}

abstract class Caminante {
  void caminar() => print('esta caminando');
}

abstract class Nadador {
  void nadar() => print('esta nadando');
}

class Pato extends Ave with Volador, Caminante, Nadador {}

class Delfin {}

class Perro {}

void main() {
  final patito = new Pato();
  patito.isAlive = "si vivo";

  print(patito.queToma());
}
