//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  // Obtener los Eventos
  Stream<QuerySnapshot> user(String Email) {
    return FirebaseFirestore.instance.collection('usuarios').where('email', isEqualTo: Email).snapshots();
  }

  Future addUser(String email, String nombre) {
    return FirebaseFirestore.instance
        .collection('usuarios')
        .doc()
        .set({'email': email, 'nombre': nombre});
  }
}
