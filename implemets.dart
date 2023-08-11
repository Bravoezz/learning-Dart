abstract class Mailable {
  void sendEmail(String body);
}

abstract class Whatsappable {
  void sendWhatsapp(String body);
}

class Persona implements Mailable, Whatsappable{
  final String nombre;
  
  Persona(this.nombre);
  
  @override
  void sendEmail(String body) {
    print('Email enviado a $nombre.');
  }
  
  @override
  void sendWhatsapp(String body) {
    print('Whatsapp enviado a $nombre.');
  }
}

class Compania implements Mailable {
  final String email;
  
  Compania(this.email);
  
  @override
  void sendEmail(String body) {
    print('Email enviado a $email.');
  }
}

void main() {
  final body = 'Hola';
  final listaDeContacto = <Object>[
    Persona('Josue'),
    Compania('example@josuecruzdigital.com'),
  ];
  
  for (var i = 0; i < listaDeContacto.length; i++) {
    final contacto = listaDeContacto[i];
    
    if(contacto is Mailable) {
      contacto.sendEmail(body);
    }
    
    if(contacto is Whatsappable) {
      contacto.sendWhatsapp(body);
    }
  }
  // output >> Email enviado a Josue.
  //           Whatsapp enviado a Josue.
  //           Email enviado a example@josuecruzdigital.com.
}
