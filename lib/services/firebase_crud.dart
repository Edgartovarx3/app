import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/response.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _Collection = _firestore.collection('Registro');

class FirebaseCrud {
  //Creacion del objeto de la base de datos
  static Future<Response> addRegistro({
    required String Nombre,
    required String Apellidos,
    required String Contrasenia,
    required String CorreoE,
  }) async {
    Response response = Response();
    DocumentReference documentReferencer = _Collection.doc();

    Map<String, dynamic> data = <String, dynamic>{
      "Nombre": Nombre,
      "Apellidos": Apellidos,
      "Contrasenia": Contrasenia,
      "CorreoE": CorreoE
    };

    var result = await documentReferencer.set(data).whenComplete(() {
      response.code = 200;
      response.message = "Registado Con Exito";
    }).catchError((e) {
      response.code = 500;
      response.message = e;
    });

    return response;
  }

  static Future<Response> updateRegistro({
    required String Nombre,
    required String Apellidos,
    required String Contrasenia,
    required String CorreoE,
    required String docId, //dejar el docid sin importar la coleccion
  }) async {
    Response response = Response();
    DocumentReference documentReferencer = _Collection.doc(docId);

    Map<String, dynamic> data = <String, dynamic>{
      "Nombre": Nombre,
      "Apellidos": Apellidos,
      "Contrasenia": Contrasenia,
      "CorreoE": CorreoE
    };

    await documentReferencer.update(data).whenComplete(() {
      response.code = 200;
      response.message = "Sucessfully updated Registro";
    }).catchError((e) {
      response.code = 500;
      response.message = e;
    });

    return response;
  }

  static Stream<QuerySnapshot> readRegistro() {
    CollectionReference notesItemCollection = _Collection;

    return notesItemCollection.snapshots();
  }

   static Stream<QuerySnapshot> IniciarSesion() {
    CollectionReference notesItemCollection = _Collection;

    return notesItemCollection.snapshots();
  }

  static Future<Response> deleteRegistro({
    required String docId,
  }) async {
    Response response = Response();
    DocumentReference documentReferencer = _Collection.doc(docId);

    await documentReferencer.delete().whenComplete(() {
      response.code = 200;
      response.message = "Sucessfully Deleted Registro";
    }).catchError((e) {
      response.code = 500;
      response.message = e;
    });

    return response;
  }
}
