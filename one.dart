// import 'cla.dart';

import 'dart:convert';
import 'dart:io';

int combert(int num) => num * 2;

void main() async {
  /* Persona joel = new Persona("felicita", "hernesto");
  joel.set("jose");
  joel.pr("madre");
  String? nombre = joel.nombre;
  print(combert(5));
  print(
      "el nombre de lapersona es $nombre y su papa es ${joel.padre} y la madre es ${joel.madre}");
 */
  String jsonParsed = '{"nombre":"joel","apellido":"bravo"}';

  List<String> lista = ["uno", "dos", "tres", "cuatro"];
  // final filtered = lista.where((element) => element.length > 4 );
  lista.add(2.toString());
  lista.forEach((element) {
    return print(element);
  });
  // print(filtered);

  print("-----------------------");

  Map<dynamic, String> mapa = {"nombre": "joel", "apellido": "Bravo"};
  File fl = File('txt.txt');
  List<String> list = await fl.readAsLines();
  print(list);
  list.forEach(print);

  print(mapa["nombre"]);
  print("-----------------------");
  try {
    final parsed = json.encode(mapa);
    print(parsed[2]);
  } catch (e) {
    print(e);
  }
}
