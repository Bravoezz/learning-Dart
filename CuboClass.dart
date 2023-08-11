class Cubo {
  double _lado;

  Cubo({required double lado, bool verificarAssert = true})
      : assert(verificarAssert ? lado >= 0 : true, 'ubo un erroe en el assert'),
        this._lado = lado;

  double get Lado {
    return this._lado;
  }

  // arrow function aplicado a un get
  double get Area => this._lado * this._lado;

  void set lado(double numLado) {
    if (numLado < 0) throw 'El lado no puede ser negativo';
    this._lado = numLado;
  }
}

void main() {
  final Cubo shortCub = new Cubo(lado: -10.0,verificarAssert: true);
  // shortCub.lado = 6;
  // shortCub.lado = -5; //!rompe osea que hay un error opr que es negativo

  print("""
  CUBO PROPERTYES
  Lado: ${shortCub.Lado}
  Area: ${shortCub.Area}

""");
}
