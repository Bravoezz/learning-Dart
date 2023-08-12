import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as httpProtocol;

void main() async {
  final file = File('txt.txt');

  final String BASE_URL = 'https://rickandmortyapi.com/api/character';
  print('before http request ----------------------');
  // final response = await httpProtocol.get(Uri.parse(BASE_URL));
  // final List<dynamic> itemsCharacters = jsonDecode(response.body)['results'];

  // final List<String> formatToTxT = itemsCharacters.map((e) => e['name'] as String).toList();
  // print(formatToTxT);
  List<String> listLisuras = ['puta', 'que', 'abuuuuuso', 'ohh'];
  listLisuras = ['rata','rata','rata','rata','rata','rata','eres','una','rata','rata d mrd','kkita','cerranito','masca','piojos','rata'];
  final List<String> cache = [];

  for (final item in listLisuras) {
    cache.add(item);
    await Future.delayed(Duration(seconds: 1));
    await file.writeAsString(cache.join(' '));
    print('se escribtio ---> ${cache.join(' ')}');
  }

  // print(ks);

  print('after http request ----------------------');
}


// ! funcionan a medias no se ejcutan en secuencia
/* Future readAsync({required String text, required File fl}) async {
  return  new Future.delayed(
    const Duration(seconds: 3),
    () async {
      await fl.writeAsString(text);
      print('se escribio $text');
    },
  );
}
   */

  /* await Future.wait(formatToTxT.map((e) async {
    await Future.delayed(Duration(seconds: 3));
    await file.writeAsString(e);
    print('se escribtio ---> $e');
    return 'ya salio $e';
  })); */
