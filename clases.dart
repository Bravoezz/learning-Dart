class Hero {
  String? name;
  String? power;
  bool? _isAlive; //! are un set o llamado seter para cambiar este valod

  void set alive(bool iss) {
    this._isAlive = iss;
  }

  //** constructor comun y corriente
  /* Hero(String paramName, String paramPower) {
    this.name = paramName;
    this.power = paramPower;
  } */
  //** constructor casi forma corta
  Hero(String paramName, String paramPower)
      : this.name = paramName,
        this.power = paramPower;

  //** constructor con nombre
  Hero.Nombre({required String pName, required String pPower}) {
    this.name = pName;
    this.power = pPower;
  }

  //** constructor con nombre y forma corta de pasarle los valores a las variables dentro de la clase
  Hero.FormaCorta(this.name, this.power);

  //** constructor con nombre y forma corta yyyyy con parametros con nombre
  Hero.ParamConNombre({required this.name, this.power = 'sin poder'});

  //** constructor con nombre y construir desde un Map o Json
  Hero.FormJson({required Map<String, dynamic> json})
      : name = json['name'],
        power = json['power'] ?? 'sin poder';

  @override
  String toString() {
    // TODO: implement toString
    return ' Heroe: $name \n Poder: $power \n Estado: ${(_isAlive ?? false) ? 'Vivo :)' : 'Muerto :('}';
  }
}

void main() {
  final Map<String, dynamic> ciclistaSinLicenciaProvider = {
    'name': 'Ciclista sin licencia',
    'power': 'Heroismo'
  };

  Hero deadPool = new Hero('Dave', 'Regeneracion');
  // final Hero deadPool = new Hero('Dave', 'Regeneracion'); //! otra forma de declarar variables con final

  Hero flash = new Hero.Nombre(pName: 'Flash', pPower: 'Velocidad');
  flash.alive = true;

  final saitama = new Hero.FormaCorta('Saitama', 'Dios');
  saitama.alive = true;

  final genos = new Hero.ParamConNombre(name: 'Genos', power: 'Fuego-Cibord');
  genos.alive = true;

  Hero ciclistaSinLicencia =
      new Hero.FormJson(json: ciclistaSinLicenciaProvider);

  print("""
$deadPool 
----------
$flash
----------
$saitama
----------
$genos
----------
$ciclistaSinLicencia
""");
}
