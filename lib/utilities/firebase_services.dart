import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

final myFireStore = FirebaseFirestore.instance;

final userReference = myFireStore.collection('users');

Reference get firebaseStorageRef => FirebaseStorage.instance.ref();
