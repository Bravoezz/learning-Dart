void main() {
  //funcion normal comun y corriente
  String funcionComun(int num) {
    return num.toString();
  }

  //** funcion flecha o arroy function -- nunca lelva {} llaves
  String funcionFlecha(int num) => num.toString();

  //** funcion con parametro opcional
  String funcionOPtionalParameter([int? num]) => num.toString();

  //** funcion con parametro opcional manejando el error dentro de las llaves
  int funcionOPtionalParameter2([int? num]) {
    // num = num ?? 10;
    // num == null ?  num = 10 : null;
    num ??= 10;

    return num + 5;
  }

  //** funcion con parametro opcional y asignando un valor por defecto a al paramtro qeu es opcional
  int funcionOPtionalParameter3([int num = 10]) => num + 5;

  //! funciones con nombre : dicen que se usa mucho y si lo vi ---- cuando pones {String param} osea las {} se vuelven opcoinales automaticamente
  //! si pones required antes de declarar el parametro se volvera un parametro requerido y no opcional
  String saludar(String saludo,
          {String? nombre = 'Brayan', String? apellido, required int edad}) =>
      '$saludo $nombre ${apellido ?? 'Default'} => $edad';

  print(saludar('Buenos dias',edad: 20 ,apellido: 'Bravo', nombre: 'Brayan'));
}
