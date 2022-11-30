// ignore_for_file: non_constant_identifier_names

// ignore: camel_case_types
class funciones {
  static String nombr = "",
      Apellidos = "",
      correo = "",
      confirmacion = "",
      pass = "";
  Persona(String Nombre, String apellidos, String Correo, String CorreoConf,
      String contrasenia) {
    nombr = Nombre;
    Apellidos = apellidos;
    correo = Correo;
    confirmacion = CorreoConf;
    pass = contrasenia;
  }

  String getNombre() {
    return nombr;
  }

  String getApellidos() {
    return Apellidos;
  }

  String getCorreo() {
    return correo;
  }

  String getCorreoConf() {
    return confirmacion;
  }

  String getPass() {
    return pass;
  }

  setNombr(String nombre) {
    nombr = nombre;
  }

  setCorreo(String Correo) {
    correo = Correo;
  }

  setApellidos(String Apmp) {
    Apellidos = Apmp;
  }

  SetConfirmCorreo(String confirm) {
    confirmacion = confirm;
  }

  setContrasenia(String word) {
    pass = word;
  }

  static bool Verificacion() {
    if (nombr.isNotEmpty &&
        Apellidos.isNotEmpty &&
        correo.isNotEmpty &&
        confirmacion.isNotEmpty &&
        pass.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  static CrearGenerico() {
    nombr = "Goku";
    Apellidos = "Perez Ramirez";
    correo = "GokPerez074@accitesz.com";
    confirmacion = "GokRamirez@mamitas.net";
    pass = "123.Hola";
  }
}
