void main() {
  String replaceParentesis ({required String srt}) => srt.replaceAll('(', '').replaceAll(')', '');

  final String pokemon = 'pikachu';

  int? numerosPares; // int? para no asignar una valor al momento de declarar
  // numerosPares = 2;

  final bool isEnabled = false;

  // estruccutra de datos

  final List<String> familyNames = ["yerson", "jose", "joel", "padre", "madre"];
  final List petNames = <String>["doki", "cerbero", "chinita", "huanca", "oso"];


  //** importante typo de dato iterable, cuando a un list usas su metodo reverce lo que devuelve es un
  //** iterable pero se puede combertir en un list denuvo, tambien en un set y string
  print('----------------------estruccutra de datos---------------');
  final List<int> numRepetidos = [45,45,48,1,21,11,1,11,11,1,55,5,55];
  final itelable = numRepetidos.reversed; //** .reversed ahi se combierte en iterable 
  print('Iterable: $itelable');   //** (55, 5, 55, 1, 11, 11, 1, 11, 21, 1, 48, 45, 45) esto es un iterable tipo de dato Iterable

  //** los List , Set , Iterable tienen los metodos toSet toList toString
  // TODO: los String no tienen esos metodos ya qeu tiene el split que combiete a List o Array

  final combertidoALista = itelable.toList();  //** metodo toList() de typo Iterable combierte a un List o Array
  final combertidoASet = itelable.toSet(); //** metodo toSet() de typo Iterable combierte a un Set typo que no admite repetidos
  final combertidoAString = itelable.toString(); //** metodo toString() de typo Iterable combierte a string (elemento,elemento,elemtto) literalmente con todo y parentesis ()


  print('List: $combertidoALista');
  print('Set: $combertidoASet');
  print('String: ${replaceParentesis(srt: combertidoAString)}'); //** replaceAll es como un repalce en ts, reemplasa campos

  final List<int> menoresDe20 = numRepetidos.where((item) => item < 20).toList();
  print('Filtrado con Where <20: $menoresDe20');

  final Map<String, dynamic> mapaDeCualquierCosa = {
    "cosa1": <String>["cosas de cosa1", "cosas dos de cosa1"],
    "cosa2": <String, dynamic>{
      "subCosa21": "cosas de sunCosa2",
      "subCosa22": 3,
    },
    "cosa3": false,
    "cosa4": 44.4,
  };
  print('----------------------estruccutra de datos---------------');


//  ! es un typo que puede ser cualquier cosa como un int string mapa etc
  dynamic comodinType = "hola comodin";
  comodinType = () => "hola desde el typo dynamic";

  // consologear o mostrar en consola los datos
  print("""   
  ${pokemon}
  ${numerosPares ?? "numerosPares era null"}
  $isEnabled
  $familyNames
  $petNames
  ${mapaDeCualquierCosa["cosa1"][1]}
  ${comodinType()}
""");
}
