import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseApi {
  late final FirebaseFirestore db;

  void init() {
    db = FirebaseFirestore.instance;
  }
}