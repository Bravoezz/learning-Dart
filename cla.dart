class Persona {
  String? nombre;
  int? anos;
  String? padre;
  String? madre;
  Persona(this.madre, this.padre);
  void set(String name) => this.nombre = name;
  void pr(String th) {
    if (th == "madre") print(this.madre);
    if (th == "padre") print(this.padre);
  }
}
